using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class ComplaintStatus : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();

    SqlConnection con = new SqlConnection(connect);
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pid = TextBox1.Text;
        adp = new SqlDataAdapter("select * from Complaint where Id=@pid ", con);
        adp.SelectCommand.Parameters.AddWithValue("@pid", pid);
        ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count == 1)
        {
            Session["Id"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("Status.aspx");
        }
        else
        {
            Response.Write("<script>alert('invalid username or password');</script>");
        }
    }
}