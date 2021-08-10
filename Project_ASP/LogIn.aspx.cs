using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ASP
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        RetailerShopEntities db = new RetailerShopEntities();

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = (from c in db.CustomerTables where c.Email == txtemail.Text && c.password == txtpassword.Text select c).Count();
            if (a == 0)
                Literal1.Text = "Invalid Email or Password";
            else
            {
                Session["username"] = txtemail.Text;
                Response.Redirect("Webform1");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpForm");
        }
    }
}