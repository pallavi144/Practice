using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.Configuration;
/// <summary>
/// Summary description for BussinessLogic
/// </summary>
public class BLogicSTCP
{
    
    DataSet ds=new DataSet ();
    
    //method for DB connection
    public SqlConnection GetDbConnection()
    {
     SqlConnection    con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
     return con;
    }
    
    //method for dataset
    public DataSet ReturnDataSet(string qry, string tableName)
    {
       SqlDataAdapter  da = new SqlDataAdapter(qry, GetDbConnection());
        da.Fill(ds, tableName);
        return ds;
    }
    //method for dataset with parametric query
    public DataSet ReturnDataSet(string qry, string tableName,SqlParameter[]parameters)
    {
       SqlCommand  cmd = new SqlCommand(qry, GetDbConnection());
        cmd.Parameters.AddRange(parameters);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, tableName );
        return ds;
    }
    //method for dataset for values within a range
    public DataSet ReturnDataSet(string qry, string tableName, int min, int max)
    {
       SqlDataAdapter  da = new SqlDataAdapter(qry , GetDbConnection());
        da.Fill(ds, min, max, tableName );
        return ds;
    }
    //method for datatable
    public DataTable  ReturnDataTable(string qry)
    {
        SqlDataAdapter da = new SqlDataAdapter(qry, GetDbConnection());
        DataTable tab = new DataTable();
        da.Fill(tab);
        return tab;
    }
    //method for datatable with parametric query
    public DataTable  ReturnDataTable(string qry,  SqlParameter[] parameters)
    {
        SqlCommand cmd = new SqlCommand(qry, GetDbConnection());
        cmd.Parameters.AddRange(parameters);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable tab = new DataTable();
        da.Fill(tab);
        return tab ;
    }
    //method for binding dropdownlist
    
    public void BindDropDown(string selQry,DropDownList drpDown,  string txtColumn, string valColumn, string head)
    {
        SqlDataAdapter dap = new SqlDataAdapter(selQry , GetDbConnection());
        DataTable tab = new DataTable();
        dap.Fill(tab);
        drpDown.DataSource = tab;
        drpDown.DataTextField = txtColumn;
        drpDown.DataValueField = valColumn;
        drpDown.DataBind();
        drpDown.Items.Insert(0, head);
    }
    public void BindDropDown(string selQry, DropDownList drpDown, string txtCol, string valCol, string head, string footer)
    {
        SqlDataAdapter da = new SqlDataAdapter(selQry, GetDbConnection());
        DataTable tab = new DataTable();
        da.Fill(tab);
        drpDown.DataSource = tab;
        drpDown.DataTextField = txtCol;
        drpDown.DataValueField = valCol;
        drpDown.DataBind();
        drpDown.Items.Insert(0, head);
        drpDown.Items[tab.Rows.Count].Value = "-1";
        drpDown.Items.Insert(tab.Rows.Count + 1, footer);

    }
   
    
    //method for executenonquery without parametric query
    
    public int ExecuteNonQry(string qry)
    {
        SqlConnection con = GetDbConnection();
        SqlCommand  cmd = new SqlCommand(qry, con);
        con.Open();
        int x = cmd.ExecuteNonQuery();
        con.Close();
        return x;
    }
    //method for executenonquery without parametric query
    public int ExecuteNonQry(string qry, SqlParameter[] sp)
    {
        SqlConnection con = GetDbConnection();
        SqlCommand  cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddRange(sp);
        con.Open();
        int x = cmd.ExecuteNonQuery();
        con.Close();
        return x;
    }
    //method for ExecuteScalar
    public Object ExeScalar(string qry)
    {
        SqlConnection con = GetDbConnection();

        SqlCommand  cmd = new SqlCommand(qry, con);
        con.Open();
        object ob = cmd.ExecuteScalar();
        con.Close();
        return ob;
    }
    //method for datareader
    public SqlDataReader DataReader(string qry)
    {
        SqlConnection con = GetDbConnection();
        con.Open();
        SqlCommand  cmd = new SqlCommand(qry, con);
        con.Close();
        con.Open();
        SqlDataReader  dr = cmd.ExecuteReader();
        return dr;
    }
    public SqlDataReader DataReader(string qry, SqlParameter[] sp)
    {
        SqlConnection con = GetDbConnection();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddRange(sp);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        return dr;
    }
    //method to generate AutoID
    public int AutoGenID(int startvalue, string qry)
    {
        object ob = ExeScalar(qry);
        int id = 0;
        if (ob is DBNull)
        {
            id = startvalue;
        }
        else
        {
            id = Convert.ToInt32(ob) + 1;
        }        
        return id;

    }

    public void ReturnDataTable()
    {
        throw new NotImplementedException();
    }
    
}
