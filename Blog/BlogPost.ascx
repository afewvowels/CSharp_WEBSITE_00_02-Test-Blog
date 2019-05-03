<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogPost.ascx.cs" Inherits="Blog.BlogPost" %>

<div class="blog-post-wrapper">
  <p class="post-title"><%= this.PostTitle %></p>
  <p class="post-content js-shave"><%= this.PostContent %></p>
  <div class="image-wrapper">
    <img src="<%= this.ImagePath %>" alt="<%= this.ImageAlt %>"/>
  </div>
</div>