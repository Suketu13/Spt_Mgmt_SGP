using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace temperory
{
    public partial class Registration : System.Web.UI.Page
    {
        General gen = new General();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            try
            {
                string email = TextBox1.Text;
                string pattern = @"^[a-z][a-z|0-9|]*([_][a-z|0-9]+)*([.][a-z|0-9]+([_][a-z|0-9]+)*)?@[a-z][a-z|0-9|]*\.([a-z][a-z|0-9]*(\.[a-z][a-z|0-9]*)?)$";
                Match match = Regex.Match(email.Trim(), pattern, RegexOptions.IgnoreCase);

                if (!match.Success)
                {
                    errormasge.Text = "Fill out all the datails or invalid Email";
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("SPInsertIntoRegistrationDetails", gen.con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Phone", TextBox4.Text);
                    gen.con.Open();
                    cmd.ExecuteNonQuery();
                    gen.con.Close();
                    Response.Redirect("SignIn.aspx");
                }
                
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
           
        }
    }
}