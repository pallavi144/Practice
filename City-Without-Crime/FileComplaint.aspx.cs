using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class FileComplaint : System.Web.UI.Page
{
    static string connect = ConfigurationManager.ConnectionStrings["constr"].ToString();

    SqlConnection con = new SqlConnection(connect);
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlCommand cmd = new SqlCommand();
    static string id=string.Empty;
    string cal = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            con = new SqlConnection(connect);
            adp = new SqlDataAdapter("select PoliceStationID,PoliceStationName from Police_Station_Master", con);
            ds=new DataSet();
            adp.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataValueField = "PoliceStationID";
            DropDownList1.DataTextField = "PoliceStationName";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "---Select Police Station Id---");
          
            generate_id();
        }
                       
    }

    private void generate_id()
    {
        cmd = new SqlCommand("select max(Id) from Complaint", con);
        con.Open();
        int count = Convert.ToInt32(cmd.ExecuteScalar())+1;
        TextBox19.Text = count.ToString();
        TextBox19.Enabled = false;
        id = TextBox19.Text;
        
        
        con.Close();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
       
        con = new SqlConnection(connect);

        string pid = DropDownList1.SelectedItem.Value;
        cal = Request.Form[TextBox21.UniqueID];

        cmd = new SqlCommand("insert into Complaint values(@Id,@Description,@PoliceStationID,@name,@age,@cno,@Date,@type_crime,@address,@Status)", con);
        SqlParameter[] para ={
                               new SqlParameter("@Id",Convert.ToInt32(TextBox19.Text)),
                               new SqlParameter("@Description",TextBox13.Text),
                               new SqlParameter("@PoliceStationID",pid),
                               new SqlParameter("@name",TextBox18.Text),
                                 new SqlParameter("@age",TextBox17.Text),

                                 new SqlParameter("@cno",TextBox15.Text),
                                  new SqlParameter("@Date",cal),
                               new SqlParameter("@type_crime",TextBox14.Text),
                               new SqlParameter("@address",TextBox16.Text),
                               new SqlParameter("@Status",TextBox20.Text)
                             };
        cmd.Parameters.AddRange(para);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox15.Text = "";
        TextBox14.Text = "";
        TextBox16.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox13.Text = "";
        Label19.Text = "Your Complaint has been filed...!!!";

    }
   
}

