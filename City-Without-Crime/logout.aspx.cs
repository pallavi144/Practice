using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["PoliceStationID"] != null)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
        else
            Response.Redirect("login.aspx");
    }
}