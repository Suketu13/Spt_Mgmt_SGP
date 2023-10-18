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
    public partial class UploadImage : System.Web.UI.Page
    {
        General gen = new General();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGrid();
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            SaveImage();
        }

        private void SaveImage()
        {
            try
            {


                if (FileUpload1.HasFile)
                {
                    int imagefilelenth = FileUpload1.PostedFile.ContentLength;
                    byte[] imgarray = new byte[imagefilelenth];
                    HttpPostedFile image = FileUpload1.PostedFile;
                    image.InputStream.Read(imgarray, 0, imagefilelenth);
                    //SqlCommand cmd = new SqlCommand();

                    SqlCommand cmd = new SqlCommand("SPInsertImage", gen.con);
                    cmd.Parameters.AddWithValue("@ImageName", SqlDbType.VarChar).Value = TextBox1.Text;
                    cmd.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = imgarray;

                    //SqlConnection con = new SqlConnection("Data Source=LAPTOP-U4S8EUFC;Initial Catalog=SportMgmt;Integrated Security=True;User ID=sa;Password=sa@123");

                    //cmd = new SqlCommand("Insert into Images (ImageName, Image) values ( "+@ImageName+", "+@Image+")", gen.con);
                    gen.con.Open();

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();
                    BindGrid();
                    gen.con.Close();
                }
            }
            catch (Exception ex)
            {
                
            }
        }

        public void BindGrid()
        {
            SqlCommand cmd = new SqlCommand("Select id, ImageName, Image from Images", gen.con);
            if (gen.con.State == ConnectionState.Closed)
            {
                gen.con.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            gv.DataSource = dr;
            gv.DataBind();
            gen.con.Close();
        }
    }
}