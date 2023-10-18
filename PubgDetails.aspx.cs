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
    public partial class PubgDetails : System.Web.UI.Page
    {
        General gen = new General();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SPInsertIntoPubgInfo", gen.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Gender", rblGender.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Photoupload", txtphoto.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                gen.con.Open();
                cmd.ExecuteNonQuery();
                gen.con.Close();
            }
            catch (Exception ex)
            {
            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
        }
    }

}