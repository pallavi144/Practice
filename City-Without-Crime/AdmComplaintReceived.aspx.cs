using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class AdmComplaintReceived : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();

    SqlConnection con = new SqlConnection(connect);
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            string pid = Session["Username"].ToString();
            con = new SqlConnection(connect);
            adp = new SqlDataAdapter("select * from Complaint", con);
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }    
    }
}