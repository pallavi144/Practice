using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class cwc : System.Web.UI.MasterPage
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();
    SqlConnection con;
    
    SqlDataAdapter adp;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            displaydata1();
            displaydata();
        }
    }
    private void displaydata1()
    {
        con = new SqlConnection(connect);
        adp = new SqlDataAdapter("select Description from Emergency", con);
        ds = new DataSet();
        adp.Fill(ds);
        DataList2.DataSource = ds;
        DataList2.DataBind();
    }
    private void displaydata()
    {
        con = new SqlConnection(connect);
        adp = new SqlDataAdapter("select Description from UpdateNews", con);
        ds = new DataSet();
        adp.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
}
