using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace temperory
{
    public partial class SignIn : System.Web.UI.Page
    {
        
        General gen = new General();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SPInsertIntoSignInDetails", gen.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                gen.con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
               
                DataSet ds = new DataSet();
                da.Fill(ds);

                gen.con.Close();
                if(ds.Tables[0].Rows.Count==0)
                {
                    lblMessage.Text = "Invalid UserName or Password"; 
                    
                    return;
                }
                else
                {
                    Response.Redirect("WebForm2.aspx");
                }
               
            }
            catch
            {

            }
            
        }
        protected void btnRegistraion_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
            //Session["UserName"] = txtUserName.Text;
            //Session["Pwd"] = txtPassword.Text;
            //Response.Redirect("WebForm2.aspx");

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {

        }
    }

}