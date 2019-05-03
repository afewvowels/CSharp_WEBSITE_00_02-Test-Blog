using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Blog
{
  public partial class Create : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitForm(object sender, EventArgs e)
    {
      string connString = ConfigurationManager.ConnectionStrings["BlogDatabase"].ConnectionString;
      string queryString = "INSERT INTO DB_A4827F_albatross.dbo.kbs_blog_posts (post_title, post_content, image_path, image_alt) VALUES (@Title, @Content, @Path, @Alt);";
      try
      {
        SqlConnection dbConn = new SqlConnection(connString);
        dbConn.Open();

        SqlCommand blogPost = new SqlCommand(queryString, dbConn);
        blogPost.Parameters.AddWithValue("@Title", tbPostTitle.Text);
        blogPost.Parameters.AddWithValue("@Content", tbPostContent.Text);
        blogPost.Parameters.AddWithValue("@Path", "/Content/img/" + tbImagePath.Text + ".jpg");
        blogPost.Parameters.AddWithValue("@Alt", tbImageAlt.Text);
        try
        {
          blogPost.ExecuteNonQuery();
        }
        catch
        {
          tbImageAlt.Text = "Error executing query";
        }

        dbConn.Close();
      }
      catch
      {
        lblPostTitle.Text = "Error connecting to database";
      }
    }
    protected void ResetForm(object sender, EventArgs e)
    {

    }
  }
}