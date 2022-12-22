using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FINALproject
{
    public partial class Checkoutpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Server.UrlDecode(Request.Cookies["screen"].Value);
            Label2.Text = Server.UrlDecode(Request.Cookies["mouse"].Value);
            Label3.Text = Server.UrlDecode(Request.Cookies["keyboard"].Value);
            int total = 30000 * int.Parse(Label1.Text) + 1000 * int.Parse(Label2.Text) + 3000 * int.Parse(Label3.Text);
            Label4.Text = total.ToString();
        }
    }
}