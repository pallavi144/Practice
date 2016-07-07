using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Status : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();
    SqlConnection con = new SqlConnection(connect);
    SqlCommand cmd;
    SqlDataReader rd;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] != null)
        {
            string pid = Session["Id"].ToString();
            con = new SqlConnection(connect);
            adp = new SqlDataAdapter("select * from Complaint where Id='" + pid + "'", con);
            ds = new DataSet();
            adp.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
      
        }
        string pid1 = Session["Id"].ToString();
        con = new SqlConnection(connect);
        cmd = new SqlCommand("select name from Complaint where Id='" + pid1 + "'", con);
        con.Open();
        rd = cmd.ExecuteReader();

        if (Session["Id"] != null)
        {
            while (rd.Read())
            {
                Label1.Text = "Welcome " + rd[0] ;

            }
        }
        else
        {
            Response.Redirect("ComplaintStatus.aspx");
        }
        con.Close();
         
    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["Id"] != null)
        {
            Session.Abandon();
            Response.Redirect("ComplaintStatus.aspx");
        }
        else
            Response.Redirect("ComplaintStatus.aspx");
    
    }
}