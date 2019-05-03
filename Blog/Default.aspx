<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blog._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <section id="section-default-hero">    
    <%--<img src="Content/img/brickwall.jpg" />--%>
    <h2>Nunc sed augue lacus</h2>
    <p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa.</p>
  </section>
  <section id="section-default-tri">
    <div id="tri-wrapper">
      <div class="tri-object">
        <i class="fas fa-comments-dollar"></i>
        <h3>At ultrices</h3>
        <hr />
        <p>Convallis tellus id interdum velit laoreet. Ac auctor augue mauris augue neque gravida in. Dictum sit amet justo donec enim. Sit amet nisl suscipit adipiscing bibendum est ultricies.</p>
      </div>
      <div class="tri-object">
        <i class="fas fa-poll"></i>
        <h3>Lectus urna</h3>
        <hr />
        <p>Arcu ac tortor dignissim convallis aenean et tortor at. Nibh tellus molestie nunc non blandit massa enim nec dui. Ultricies mi quis hendrerit dolor magna eget. Dictum sit amet justo donec. Sed faucibus turpis in eu mi.</p>
      </div>
      <div class="tri-object">
        <i class="fas fa-sign-language"></i>
        <h3>Et malesuada</h3>
        <hr />
        <p>Mattis pellentesque id nibh tortor id aliquet lectus proin nibh. Dictum at tempor commodo ullamcorper. Etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum.</p>
      </div>
    </div>
  </section>
  <aside id="default-aside">
    <div id="aside-text-wrapper">
      <p>Massa tincidunt dui ut ornare lectus sit. Semper viverra nam libero justo laoreet sit amet cursus. Commodo elit at imperdiet dui. Nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque. Vulputate mi sit amet mauris commodo quis imperdiet. Diam ut venenatis tellus in. Ultricies mi quis hendrerit dolor magna eget est lorem. Non sodales neque sodales ut.</p>
    </div>
    
  </aside>
</asp:Content>
