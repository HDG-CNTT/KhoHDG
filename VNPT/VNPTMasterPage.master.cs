using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VNPTMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       //Label1.Text = Request.QueryString[1];
       //Label2.Text = Request.QueryString[0];
    }


    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript>window.open('Login.aspx','_parent',replace=true);</script>");
    }
}
