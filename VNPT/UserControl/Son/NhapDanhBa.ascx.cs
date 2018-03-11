using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Oracle.ManagedDataAccess;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;
using System.Configuration;


public partial class UserControl_Son_NhapDanhBa : System.Web.UI.UserControl
{
    string name;
    string phone;
    OracleConnection con = null;
    //string connectString = ConfigurationManager.ConnectionStrings["SolutionVNPT"].ConnectionString;


    protected void Page_Load(object sender, EventArgs e)
    {
       


    }
    void them_du_an()
    {
      

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    string ConStr = "User Id=c##vienthonghdg;Password=VNPT!adm123; Data Source=10.34.4.24:1521/orcl.hdg.vnpt.vn;";
        //    OracleConnection con = new OracleConnection(ConStr);
        //    con.Open();
        //    //Create an OracleCommand object using the connection object
        //    OracleCommand cmd = new OracleCommand("", con);

        //    // Start a transaction
        //    OracleTransaction txn = con.BeginTransaction(IsolationLevel.ReadCommitted);


        //        cmd.CommandText = "insert into sontv values UTL_RAW.CAST_TO_RAW('" + TextBox1.Text + "'),UTL_RAW.CAST_TO_RAW('" + TextBox2.Text +"')";
        //        cmd.CommandType = CommandType.Text;
        //        cmd.ExecuteNonQuery();
        //        txn.Commit();

        //}
        //catch (Exception ex)
        //{
        //}


        //string oradb = "DATA SOURCE =10.34.4.24:1521/orcl.hdg.vnpt.vn;PERSIST SECURITY INFO = True;USER ID = c##vienthonghdg;password = VNPT!adm123";
        string insertquery = "Insert into sontv VALUES (:1, :2)";


        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["SolutionVNPT"].ConnectionString);
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;
        cmd.CommandText = insertquery;
        try
        {

            //cmd.Parameters.Add(new OracleParameter("1", OracleDbType.Decimal, ParameterDirection.ReturnValue));
            cmd.Parameters.Add(new OracleParameter("1", OracleDbType.Varchar2, TextBox1.Text, ParameterDirection.Input));
            cmd.Parameters.Add(new OracleParameter("2", OracleDbType.Varchar2, TextBox2.Text, ParameterDirection.Input));

            cmd.ExecuteNonQuery();

            con.Close();

        }
        catch (OracleException e1)
        {

        }
        catch (ArgumentException e2)
        {

        }
        finally
        {
            cmd.Dispose();
            con.Dispose();


        }
    }

      
}