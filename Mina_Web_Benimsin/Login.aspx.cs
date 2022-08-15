using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mina_Web_Benimsin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    //txtUserName.Text = Request.Cookies["UserName"].Value;
                    //txtPassword.Attributes["value"] = Request.Cookies["Password"].Value;

                    Response.Redirect("Search.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (chkRememberMe.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            }

            Response.Cookies["UserName"].Value = txtUserName.Text.Trim();
            Response.Cookies["Password"].Value = txtPassword.Text.Trim();

            Response.Redirect("Search.aspx");
        }
    }
}