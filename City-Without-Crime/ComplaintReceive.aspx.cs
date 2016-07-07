using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ComplaintReceive : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();
    SqlConnection con = new SqlConnection(connect);
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
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
            adp = new SqlDataAdapter("select * from Complaint where PoliceStationID='" + pid + "'", con);
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string Id = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
        string Description = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string PoliceStationID = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string age = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string cno = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string Date = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string type_crime = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        string Status = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        SqlParameter[] param = {
                                   new  SqlParameter("@Id",Convert.ToInt32(Id)),
                                   new  SqlParameter("@Description",Description),
                                   new  SqlParameter("@PoliceStationID",(PoliceStationID)),
                                   new  SqlParameter("@name",name),
                                   new  SqlParameter("@age",Convert.ToInt32(age)),
                                   new  SqlParameter("@cno",cno),
                                   new  SqlParameter("@Date",Date),
                                   new  SqlParameter("@type_crime",type_crime),
                                    new  SqlParameter("@address",address),
                                    new  SqlParameter("@Status",Status)
                               
                               };
        //    string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        SqlCommand cmd = new SqlCommand("update Complaint set Id=@Id,Description=@Description,PoliceStationID=@PoliceStationID,name=@name,age=@age,cno=@cno,Date=@Date,type_crime=@type_crime,address=@address,Status=@Status where Id=@Id", con);
        cmd.Parameters.AddRange(param);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        Showgrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Showgrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Showgrid();
    }
}