using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class AddPoliceStation : System.Web.UI.Page
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
    }
    private void generate_id()
    {
        
        cmd = new SqlCommand("select max (PoliceStationID) from Police_Station_Master", con);
        con.Open();
        int count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        TextBox1.Text = count.ToString();
        TextBox1.Enabled = false;
        pid = TextBox1.Text;
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(connect);
        cmd = new SqlCommand("insert into Police_Station_Master values(@PoliceStationID,@PoliceStationName,@Address,@Phone,@Mobile,@PStationHead,@Password)", con);
        SqlParameter[] para ={
                               new SqlParameter("@PoliceStationID",Convert.ToInt32(TextBox1.Text)),
                               new SqlParameter("@PoliceStationName",TextBox2.Text),
                               new SqlParameter("@Address",TextBox3.Text),
                               new SqlParameter("@Phone",TextBox4.Text),
                                 new SqlParameter("@Mobile",TextBox5.Text),
                                 new SqlParameter("@PStationHead",TextBox6.Text),
                               new SqlParameter("@Password",TextBox7.Text)
                             };
        cmd.Parameters.AddRange(para);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        Label21.Text = "New Police Station was added sucessfully...!!!";
    }
}