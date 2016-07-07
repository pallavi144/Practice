using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class AddCriminalRecords : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();
    SqlConnection con = new SqlConnection(connect);
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlCommand cmd = new SqlCommand();
    static string cid = string.Empty;
    static string pid = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            generate_id();
        }
    }
    private void generate_id()
    {
       
        cmd = new SqlCommand("select max(CriminalID) from Criminal_Master", con);
        con.Open();
        int count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        TextBox1.Text = count.ToString();
        TextBox1.Enabled = false;
        cid = TextBox1.Text;
        string pid = Session["PoliceStationID"].ToString();
        TextBox6.Text = pid.ToString();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string ge=DropDownList1.SelectedItem.Text;
        string relpath = "img/" + FileUpload1.FileName;
        string abspath = Server.MapPath("img") + "\\" + FileUpload1.FileName;
        FileUpload1.SaveAs(abspath);
        con = new SqlConnection(connect);
        cmd = new SqlCommand("insert into Criminal_Master values(@CriminalID,@Name,@Gender,@Height,@Weight,@PoliceStationID,@CrimeLevel,@Status,@Criminal_Picture)", con);
        SqlParameter[] para ={
                               new SqlParameter("@CriminalID",Convert.ToInt32(cid)),
                               new SqlParameter("@Name",TextBox2.Text),
                               new SqlParameter("@Gender",ge),
                               new SqlParameter("@Height",TextBox4.Text),
                                 new SqlParameter("@Weight",TextBox5.Text),
                                 new SqlParameter("@PoliceStationID",TextBox6.Text),
                               new SqlParameter("@CrimeLevel",TextBox7.Text),
                               new SqlParameter("@Status",TextBox8.Text),
                             new SqlParameter("@Criminal_Picture",relpath)
                             };
        cmd.Parameters.AddRange(para);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        Label12.Text = "Criminal Details have been submitted sucessfully...!!!";
    }
}