using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mina_Web_Benimsin
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    lblUserName.Text = Request.Cookies["UserName"].Value;
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            //System.Text.StringBuilder sb = new System.Text.StringBuilder();
            //sb.Append(@"<script type='text/javascript'>");
            //sb.Append("$(function () {");
            //sb.Append(" $('#modaltime').modal('show');});");
            //sb.Append("</script>");
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ModelScript", sb.ToString(), false);
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Pop", "ShowPopup();", false);
        }

        protected void btnYesExit_Click(object sender, EventArgs e)
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("login.aspx");
        }
    }
}