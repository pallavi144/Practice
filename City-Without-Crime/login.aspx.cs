using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class login : System.Web.UI.Page
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
        if (DropDownList1.SelectedItem.Text == "Police Station")
        {
            string pid = TextBox1.Text;
            string pwd = TextBox2.Text;
            adp = new SqlDataAdapter("select PoliceStationID from Police_Station_Master where PoliceStationID=@pid and Password=@pwd", con);
            adp.SelectCommand.Parameters.AddWithValue("@pid", pid);
            adp.SelectCommand.Parameters.AddWithValue("@pwd", pwd);   
            ds = new DataSet();
            adp.Fill(ds);
            if(ds.Tables[0].Rows.Count==1)
            {
                Session["PoliceStationID"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("pprofile.aspx");           
            }    
            else
            {
                Response.Write("<script>alert('invalid username or password');</script>");
            }

        }
        else if (DropDownList1.SelectedItem.Text =="Admin" )
        {
            string usr = TextBox1.Text;
            string pwd = TextBox2.Text;            
            adp = new SqlDataAdapter("select Username from LoginMaster where Username=@usr and Password=@pwd ", con);
            adp.SelectCommand.Parameters.AddWithValue("@usr", usr);
            adp.SelectCommand.Parameters.AddWithValue("@pwd", pwd);
            ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count == 1)
            {
                Session["Username"] = ds.Tables[0].Rows[0][0].ToString();
                Response.Redirect("Admprofile.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid username or password');</script>");
            }
            
        }
    }
}