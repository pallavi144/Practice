﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admprofile : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();
    SqlConnection con = new SqlConnection(connect);
  //  SqlDataAdapter adp = new SqlDataAdapter();
  //  DataSet ds = new DataSet();
    SqlCommand cmd;
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string pid = Session["Username"].ToString();
        con = new SqlConnection(connect);
        cmd = new SqlCommand("select FullName from LoginMaster where UserName='" + pid + "'", con);
        con.Open();
        rd = cmd.ExecuteReader();

        if (Session["Username"] != null)
        {
            while (rd.Read())
            {
                Label1.Text = "Welcome " + rd[0] ;

            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
        con.Close();
    }
}