using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class AddNews : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();

    SqlConnection con = new SqlConnection(connect);
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlCommand cmd = new SqlCommand();
    static string pid = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        generate_id();
        viewid();
    }

    private void generate_id()
    {

        cmd = new SqlCommand("select max (Sno) from UpdateNews", con);
        con.Open();
        int count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        TextBox1.Text = count.ToString();
        TextBox1.Enabled = false;
        pid = TextBox1.Text;
        con.Close();
    }
    private void viewid()
    {

        cmd = new SqlCommand("select max (Sno) from Emergency", con);
        con.Open();
        int count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        TextBox3.Text = count.ToString();
        TextBox3.Enabled = false;
        pid = TextBox3.Text;
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(connect);
        cmd = new SqlCommand("insert into UpdateNews values(@Sno,@Description)", con);
        SqlParameter[] para ={
                               new SqlParameter("@Sno",Convert.ToInt32(TextBox1.Text)),
                               new SqlParameter("@Description",TextBox2.Text)
                             };
        cmd.Parameters.AddRange(para);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox2.Text = "";

        Label10.Text = "News has been added sucessfully...!!!";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(connect);
        cmd = new SqlCommand("insert into Emergency values(@Sno,@Description)", con);
        SqlParameter[] para ={
                               new SqlParameter("@Sno",Convert.ToInt32(TextBox3.Text)),
                               new SqlParameter("@Description",TextBox4.Text)
                             };
        cmd.Parameters.AddRange(para);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox4.Text = "";

        Label4.Text = "News has been added sucessfully...!!!";
    }
}