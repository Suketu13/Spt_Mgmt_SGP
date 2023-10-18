using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;
using System.IO;

namespace temperory
{
    public partial class CricketDetails : System.Web.UI.Page
    { 
         General gen = new General();
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                BindGrid();
            }
            
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SaveImage();
        }
        private void SaveImage()
        {


            try
            {
                SqlCommand cmd = new SqlCommand("SPInsertIntoCricketInfo", gen.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Gender", rblGender.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Photoupload", fileupload);
                if (fileupload.HasFile)
                {
                    int imagefilelenth = fileupload.PostedFile.ContentLength;
                    byte[] imgarray = new byte[imagefilelenth];
                    HttpPostedFile image = fileupload.PostedFile;
                    image.InputStream.Read(imgarray, 0, imagefilelenth);
                }
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
        public void BindGrid()
        {
            SqlCommand cmd = new SqlCommand("Select id, ImageName, Image from Images", gen.con);
            if (gen.con.State == ConnectionState.Closed)
            {
                gen.con.Open();
            }             
            SqlDataReader dr = cmd.ExecuteReader();
            gen.DataSource = dr;
            gen.DataBind();
            gen.con.Close();
        }
    }
}

