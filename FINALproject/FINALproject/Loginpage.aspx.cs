using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINALproject
{
    public partial class Loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string truepassword;
            truepassword = GridView1.Rows[0].Cells[1].Text;
            if (Password.Text == truepassword)
            {
                Session["User"] = GridView1.Rows[0].Cells[2].Text;
                Session["Password"] = GridView1.Rows[0].Cells[1].Text;                
                Server.Transfer("Mainpage.aspx");
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Server.Transfer("Registerpage.aspx");
        }
    }
}