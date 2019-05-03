using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Blog
{
  public partial class Blog : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      GetData();
    }

    protected void Page_Init(object sender, EventArgs e)
    {
    }

    protected void GetData()
    {

      string connString = ConfigurationManager.ConnectionStrings["BlogDatabase"].ConnectionString;
      string queryString = "SELECT * FROM DB_A4827F_albatross.dbo.kbs_blog_posts;";

      try
      {
        SqlConnection dbConn = new SqlConnection(connString);
        dbConn.Open();

        SqlCommand blogPosts = new SqlCommand(queryString, dbConn);
        SqlDataReader reader = blogPosts.ExecuteReader();

        if (reader.HasRows)
        {
          while (reader.Read())
          {
            string postTitle = reader["post_title"].ToString();
            string postContent = reader["post_content"].ToString();
            string imgPath = reader["image_path"].ToString();
            string imgAlt = reader["image_alt"].ToString();
            CreateBlogPost(postTitle, postContent, imgPath, imgAlt);
          }
        }

        dbConn.Close();
      }
      catch (Exception ex)
      {
        ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('" + Server.HtmlEncode(ex.Message) + "');", true);
      }
    }

    protected void CreateBlogPost(string _title, string _content, string _path, string _alt)
    {
      BlogPost bPost = (BlogPost)LoadControl("~/BlogPost.ascx");
      bPost.PostTitle = _title;
      bPost.PostContent = _content;
      bPost.ImagePath = _path;
      bPost.ImageAlt = _alt;
      BlogPostPanel.Controls.Add(bPost);
    }
  }
}