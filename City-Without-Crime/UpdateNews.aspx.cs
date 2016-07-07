using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class UpdateNews : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();
    SqlConnection con = new SqlConnection(connect);
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataAdapter adp1 = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Showgrid();
            Viewgrid();
        }
    }
    private void Showgrid()
    {      
            con = new SqlConnection(connect);
            adp1 = new SqlDataAdapter("select * from UpdateNews", con);
            adp1.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
     }
    private void Viewgrid()
    {
        con = new SqlConnection(connect);
        adp = new SqlDataAdapter("select * from Emergency", con);
        adp.Fill(ds1);
        GridView2.DataSource = ds1;
        GridView2.DataBind();
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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string Sno = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
        string Description = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        SqlParameter[] param = {
                                   new SqlParameter("@Sno",Sno),
                                   new  SqlParameter("@Description",Description)
                                };
        SqlCommand cmd = new SqlCommand("update UpdateNews set Description=@Description where Sno=@Sno", con);
        cmd.Parameters.AddRange(param);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        Showgrid();

    }
    
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string Sno = ((TextBox)GridView2.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
        string Description = ((TextBox)GridView2.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        SqlParameter[] param = {
                                   new SqlParameter("@Sno",Sno),
                                   new  SqlParameter("@Description",Description)
                                };
        SqlCommand cmd = new SqlCommand("update Emergency set Description=@Description where Sno=@Sno", con);
        cmd.Parameters.AddRange(param);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView2.EditIndex = -1;
        Viewgrid();

    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        Viewgrid();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        Viewgrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string stor_id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from UpdateNews where Sno='" + stor_id + "'", con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        Showgrid();
        
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string stor_id = GridView2.DataKeys[e.RowIndex].Value.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Emergency where Sno='" + stor_id + "'", con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        Viewgrid();
    }
}