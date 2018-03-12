using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    private loginVNPT.AppSecurityServicesClient appsecClient = new loginVNPT.AppSecurityServicesClient();



    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        string huyen;
               try                
        {
            loginVNPT.User user = new loginVNPT.User();
            user = appsecClient.Login(txtuser.Text.Trim(),txtpass.Text.Trim());
            if  (user !=null)
            {             
               
                if ((user.DepartName == "Tx Chí Linh"))
                {
                    huyen = "Chí Linh";
                }
                else
                {
                    huyen = user.DepartName;
                }

                // Response.Redirect("~/online.aspx?fulname=" + user.FullName & "-" & user.DepartName + "&Username=" + user.UserName)
                Session["val_User"] = user.UserName;
                Session["val_PhongBan"] = user.DepartName;
                //Response.Redirect((("~/Default.aspx?fulname=" + (user.DepartName)) + (" : "
                //                + (user.UserName + ("&Username=" + user.UserName)))));
                Response.Redirect("~/Default.aspx");

            }
            else
            {
               txtuser.Text = "Lỗi đăng nhập";
            }

        }
        catch (Exception ex)
        {
        }
    }
 
}