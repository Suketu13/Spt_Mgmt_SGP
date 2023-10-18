using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temperory
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["UserName"] != null)
            //{
            //    txtUserName.Text = Session["UserName"].ToString();
            //}
            //if (Session["Password"] != null)
            //{
            //    txtPassword.Text = Session["Password"].ToString();
            //}
        }
        protected void btnRegistraion_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
           

        }
    }
}