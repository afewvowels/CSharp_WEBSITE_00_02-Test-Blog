using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
  public partial class BlogPost : System.Web.UI.UserControl
  {
    public string PostTitle { get; set; }
    public string PostContent { get; set; }
    public string ImagePath { get; set; }
    public string ImageAlt { get; set; }
    public BlogPost(string __title, string __content, string __path, string __alt)
    {
      PostTitle = __title;
      PostContent = __content;
      ImagePath = __path;
      ImageAlt = __alt;
    }
    public BlogPost()
    {
      PostTitle = String.Empty;
      PostContent = String.Empty;
      ImagePath = String.Empty;
      ImageAlt = String.Empty;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
    }
  }
}