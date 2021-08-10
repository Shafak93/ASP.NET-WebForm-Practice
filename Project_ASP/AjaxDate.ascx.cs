using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_ASP
{
    public partial class AjaxDate : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string date
        {
            get { return txtdt.Text; }
            set { txtdt.Text = date; }
        }
    }
}