<%@ Page Title="Blog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Blog.Blog" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div id="blog-wrapper">
    <asp:Placeholder ID="BlogPostPanel" runat="server" />
  </div>
</asp:Content>