using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class RemovePoliceStation : System.Web.UI.Page
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
            con = new SqlConnection(connect);
            adp = new SqlDataAdapter("select * from Police_Station_Master", con);
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
   
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Showgrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string stor_id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Police_Station_Master where PoliceStationID='" + stor_id + "'", con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        Showgrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Showgrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string PoliceStationID = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
        string PoliceStationName = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string Address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string Phone = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string Mobile = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string PStationHead = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string Password = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        SqlParameter[] param = {
                                   new  SqlParameter("@PoliceStationID",PoliceStationID),
                                   new  SqlParameter("@PoliceStationName",PoliceStationName),
                                   new  SqlParameter("@Address",Address),
                                   new  SqlParameter("@Phone",Phone),
                                   new  SqlParameter("@Mobile",Mobile),
                                   new  SqlParameter("@PStationHead",PStationHead),
                                    new  SqlParameter("@Password",Password),
                               };
        SqlCommand cmd = new SqlCommand("update Police_Station_Master set PoliceStationID=@PoliceStationID,PoliceStationName=@PoliceStationName,Address=@Address,Phone=@Phone,Mobile=@Mobile,PStationHead=@PStationHead,Password=@Password where  PoliceStationID=@PoliceStationID", con);
        cmd.Parameters.AddRange(param);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        Showgrid();


    }
}