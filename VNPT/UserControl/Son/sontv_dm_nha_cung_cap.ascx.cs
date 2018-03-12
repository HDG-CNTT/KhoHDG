using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;

public partial class UserControl_Son_sontv_dm_kho : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnThemMoi_Click(object sender, EventArgs e)
    {
        ReadData();
        string insertquery = "Insert into DM_NHA_CUNG_CAP VALUES (:1,:2,:3)";
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["SolutionVNPT"].ConnectionString);
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;
        cmd.CommandText = insertquery;
        try
        {

            cmd.Parameters.Add(new OracleParameter("1", OracleDbType.Decimal, ParameterDirection.ReturnValue));
            cmd.Parameters.Add(new OracleParameter("2", OracleDbType.Varchar2, txtMaNhaCungCap.Text, ParameterDirection.Input));
            cmd.Parameters.Add(new OracleParameter("3", OracleDbType.Varchar2, txtTenNhaCungCap.Text, ParameterDirection.Input));
            cmd.ExecuteNonQuery();          
            con.Close();
            Response.Write("<script language = \"JavaScript\">");
            Response.Write("alert(\'Thêm mới thành công');");
            Response.Write("</script");
        }
        catch (OracleException e1)
        {

        }

        finally
        {
            GridView1.DataBind();

            cmd.Dispose();
            con.Dispose();
        }
    }

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        xoa_nha_cung_cap();
        GridView1.DataBind();

    }
    private void xoa_nha_cung_cap()
    {
        string sql = "delete from DM_NHA_CUNG_CAP where MA_NHA_CUNG_CAP='" + txtMaNhaCungCapXoa.Text + "'" ;
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["SolutionVNPT"].ConnectionString);
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.Connection = con;
        cmd.CommandText = sql;
        OracleTransaction txn = con.BeginTransaction(IsolationLevel.ReadCommitted);
        try
        {
            txn.Commit();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language = \"JavaScript\">");
            Response.Write("alert(\'Xóa thành công');");
            Response.Write("</script");

        }              
        catch (OracleException e1)
        {

        }

        finally
        {
            GridView1.DataBind();

            cmd.Dispose();
            con.Dispose();
        }
    }
    private void ReadData()
    {
        string queryString = "select * from DM_NHA_CUNG_CAP where MA_NHA_CUNG_CAP=003";
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["SolutionVNPT"].ConnectionString);
        
        {
            OracleCommand command = new OracleCommand(queryString, con);
            con.Open();
            OracleDataReader reader = command.ExecuteReader();
            {
             
                // Always call Read before accessing data.
             
                    if (reader.HasRows)
                    {
                        Response.Write("<script language = \"JavaScript\">");
                        Response.Write("alert(\'Xóa thành công');");
                        Response.Write("</script");
                        return;
                    }
                reader.Close();
            }
        }
    }


}
