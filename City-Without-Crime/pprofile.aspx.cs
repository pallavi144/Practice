using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class pprofile : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();
    SqlConnection con = new SqlConnection(connect);
    SqlCommand cmd;
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string pid = Session["PoliceStationId"].ToString();
        con = new SqlConnection(connect);
        cmd = new SqlCommand("select PoliceStationName from Police_Station_Master where PoliceStationID='" + pid + "'", con);
        con.Open();
        rd=cmd.ExecuteReader();
        
        if (Session["PoliceStationID"] != null)
        {
            while(rd.Read())
            {
                Label1.Text = "Welcome to "+rd[0]+" (" + Session["PoliceStationID"]+")"+" Police Station";

            }
                }
        else
        {
            Response.Redirect("login.aspx");
        }
        con.Close();
    }
}