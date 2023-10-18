using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temperory
{
    public partial class ImageHandler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ProcessRequest(HttpContext context)
        {
            string imageId = context.Request.QueryString["Id"].ToString();

            SqlConnection con = new SqlConnection("Data Source=LAPTOP-U4S8EUFC;Initial Catalog=SportMgmt;Integrated Security=True;User ID=sa;Password=sa@123");
            SqlCommand cmd = new SqlCommand("select Image from Images where id=" + imageId, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);
            context.Response.ContentType = "image/jpg";
            context.Response.End();
        }


    }
}