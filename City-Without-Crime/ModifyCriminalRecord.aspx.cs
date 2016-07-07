using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ModifyCriminalRecord : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();
    SqlConnection con = new SqlConnection(connect);
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Showgrid();
        }
    }
    private void Showgrid()
    {
        if (Session["PoliceStationID"] != null)
        {
           string pid = Session["PoliceStationId"].ToString();
           con = new SqlConnection(connect);
           adp = new SqlDataAdapter("select * from Criminal_Master where PoliceStationID='" + pid + "'", con);
           adp.Fill(ds);
           GridView1.DataSource = ds;
           GridView1.DataBind();
        }
    }
     protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string stor_id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Criminal_Master where CriminalID='"+stor_id+"'", con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
       
   /*     int catid = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
         adp = new SqlDataAdapter("", con);
        con.Open();
        adp.DeleteCommand = new SqlCommand("delete from Criminal_Master where CriminalID="+catid, con);
        adp.DeleteCommand.ExecuteNonQuery();
        con.Close();
        
      //  string CriminalID = GridView1.DataKeys[e.RowIndex].Value.ToString();
      //  string CriminalID = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
     //  int i = ob.ExecuteNonQry("delete from Criminal_Master where CriminalID="+CriminalID);
     */  Showgrid();
    }
     protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
     {
         GridView1.EditIndex = -1;
         Showgrid();
     }
     protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
     {
         GridView1.EditIndex = e.NewEditIndex;
         Showgrid();
     }
     protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
     {
         string CriminalID = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
         string Name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
         string Gender = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
         string Height = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
         string Weight = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
         string PoliceStationID = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
         string CrimeLevel = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
         string Status = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
         string Criminal_Picture = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
         SqlParameter[] param = {
                                   new  SqlParameter("@CriminalID",CriminalID),
                                   new  SqlParameter("@Name",Name),
                                   new  SqlParameter("@Gender",Gender),
                                   new  SqlParameter("@Height",Height),
                                   new  SqlParameter("@Weight",Weight),
                                   new  SqlParameter("@PoliceStationID",PoliceStationID),
                                    new  SqlParameter("@CrimeLevel",CrimeLevel),
                                    new  SqlParameter("@Status",Status),
                                    new  SqlParameter("@Criminal_Picture",Criminal_Picture)
                               
                               };
         //    string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
         SqlCommand cmd = new SqlCommand("update Criminal_Master set CriminalID=@CriminalID,Name=@Name,Gender=@Gender,Height=@Height,Weight=@Weight,PoliceStationID=@PoliceStationID,CrimeLevel=@CrimeLevel,Status=@Status,Criminal_Picture=@Criminal_Picture where CriminalID=@CriminalID", con);
         cmd.Parameters.AddRange(param);
         con.Open();
         cmd.ExecuteNonQuery();
         con.Close();
         GridView1.EditIndex = -1;
         Showgrid();



     }
    
}