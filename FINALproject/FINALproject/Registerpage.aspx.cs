using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINALproject
{
    public partial class Registerpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
   

        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Server.Transfer("Loginpage.aspx");
        }

        protected void Registrate_Click(object sender, EventArgs e)
        {
            Registrate.Visible=true;
            try
            {
                SqlDataSource1.Insert();
                Label1.Visible = true;
                Label1.Text = "註冊完成";
                Registrate.Visible = false;
            }
            catch
            {

            }
        }
    }
}