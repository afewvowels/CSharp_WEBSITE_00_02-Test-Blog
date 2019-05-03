<%@ Page Title="Create Blog Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Blog.Create" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <section id="create-form-wrapper">
    <fieldset id="create-form-fieldset">
      <div id="inputs-wrapper">
        <div class="input-item">
          <asp:Label CssClass="label" ID="lblPostTitle" runat="server" text="Post Title"></asp:Label>
          <asp:TextBox CssClass="textbox" ID="tbPostTitle" runat="server"></asp:TextBox>
        </div>
        <div class="input-item">
          <asp:Label CssClass="label" ID="lblPostContent" runat="server" text="Post Content"></asp:Label>
          <asp:TextBox CssClass="textbox" ID="tbPostContent" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="input-item">
          <asp:Label CssClass="label" ID="lblImagePath" runat="server" text="Image Path"></asp:Label>
          <asp:TextBox CssClass="textbox" ID="tbImagePath" runat="server"></asp:TextBox>
        </div>
        <div class="input-item">
          <asp:Label CssClass="label" ID="lblImageAlt" runat="server" text="Image Alt"></asp:Label>
          <asp:TextBox CssClass="textbox" ID="tbImageAlt" runat="server"></asp:TextBox>
        </div>
      </div>
      <div id="buttons-wrapper">
        <asp:Button CssClass="form-button" ID="btnSubmit" runat="server" Text="Submit" onclick="SubmitForm"/>
        <asp:Button CssClass="form-button" ID="btnReset" runat="server" Text="Reset" onclick="ResetForm"/>
      </div>
    </fieldset>
  </section>
</asp:Content>
