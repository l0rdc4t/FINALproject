using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINALproject
{
    public partial class Mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            Response.Cookies["screen"].Value = Server.UrlEncode(TextBox1.Text);
            Response.Cookies["mouse"].Value = Server.UrlEncode(TextBox2.Text);
            Response.Cookies["keyboard"].Value = Server.UrlEncode(TextBox3.Text);
            DateTime dtday = DateTime.Today.AddDays(-365);
            Response.Cookies["screen"].Expires = dtday;
            Response.Cookies["mouse"].Expires = dtday;
            Response.Cookies["keyboard"].Expires = dtday;

            if (Session["User"]!=null)
            {
                LoginButton.Visible = false;
                Hello.Visible = true;
                Hello.Text = "您好，" + Session["User"].ToString();
                Logoutbutton.Visible = true;
            }
            else
            {
                LoginButton.Visible = true;
                Hello.Visible = false;
                Logoutbutton.Visible = false;
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Loginpage.aspx");
        }

        protected void Logoutbutton_Click(object sender, EventArgs e)
        {
            LoginButton.Visible = true;
            Hello.Visible = false;
            Logoutbutton.Visible = false;
            Session.Abandon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Server.Transfer("Loginpage.aspx");
            }
            else
            {
                Response.Cookies["screen"].Value = Server.UrlEncode(TextBox1.Text);
                Response.Cookies["mouse"].Value = Server.UrlEncode(TextBox2.Text);
                Response.Cookies["keyboard"].Value = Server.UrlEncode(TextBox3.Text);
                DateTime dtday = DateTime.Today.AddDays(365);
                Response.Cookies["screen"].Expires = dtday;
                Response.Cookies["mouse"].Expires = dtday;
                Response.Cookies["keyboard"].Expires = dtday;
                Server.Transfer("Checkoutpage.aspx");              
            }           
        }


    }
}