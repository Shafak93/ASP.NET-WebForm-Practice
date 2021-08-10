using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ASP
{
    public partial class SignUpForm : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtcustomername_TextChanged(object sender, EventArgs e)
        {

        }
        RetailerShopEntities db = new RetailerShopEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var a = SqlDataSource1.InsertParameters;
                //a["CustomerID"].DefaultValue = txtcustomerid.Text;
                a["CustomerName"].DefaultValue = txtcustomername.Text;
                a["Address"].DefaultValue = txtaddress.Text;
                a["City"].DefaultValue = txtcity.Text;
                a["Email"].DefaultValue = txtemail.Text;
                a["DateOfBirth"].DefaultValue = txtdateofbirth.Text;
                a["Password"].DefaultValue = txtpassword.Text;
                
                try
                {
                   int n = SqlDataSource1.Insert();
                    txtcustomerid.Text = string.Empty;
                    txtcustomername.Text = string.Empty;
                    txtaddress.Text = string.Empty;
                    txtcity.Text = string.Empty;
                    txtemail.Text = string.Empty;
                    txtdateofbirth.Text = string.Empty;
                    txtpassword.Text = string.Empty;
                    txtconfirmpassword.Text = string.Empty;

                    if (n != 0)
                    {
                        Response.Redirect("LogIn.aspx");
                    }



                }
                catch (Exception ex)
                {
                    Literal1.Text = ex.Message;
                }
            }
        }
    }
}