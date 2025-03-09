<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Addproduct.aspx.cs" Inherits="Admin_Addproduct" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <HeaderTemplate>
    
     <header class="header_section">
      <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              <img src="images/logo.jpg" alt="" / height="100" width="150">
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              
              
              <li class="nav-item">
                <a class="nav-link" href="registration.aspx">REGISTRATION</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="feedback.aspx">FEEDBACK</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="category.aspx">CATEGORY</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="product.aspx">PRODUCT</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="logout.aspx">LOGOUT</a>
              </li>
              
              
            </ul>
            
          </div>
        </nav>
      </div>
    </header>
    </header>
   
    </HeaderTemplate>
    </br></br>
    <table border="1" width="600" height="500" align="center">
    
    <tr><td colspan="2" align="center"><h3>ADD PRODUCT</h3></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label1" runat="server" Text="Select Category Name"></asp:Label></td>
    <td><asp:DropDownList ID="ddlcat" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="cat_name" DataValueField="cat_id" onselectedindexchanged="ddlcat_SelectedIndexChanged"></asp:DropDownList></td></tr>
            
    
    <tr><td width="100"><asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label></td>
    <td><asp:TextBox ID="txtpname" runat="server"></asp:TextBox></td></tr>

    <tr><td width="100"><asp:Label ID="Label3" runat="server" Text="Description"></asp:Label></td>
    <td><asp:TextBox ID="txtdes" runat="server"></asp:TextBox></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label4" runat="server" Text="Price"></asp:Label></td>
    <td><asp:TextBox ID="txtprice" runat="server"></asp:TextBox></td></tr>
    
     <tr><td width="100"><asp:Label ID="Label5" runat="server" Text="Author"></asp:Label></td>
    <td><asp:TextBox ID="txtauthor" runat="server"></asp:TextBox></td></tr>
    
     <tr><td width="100"><asp:Label ID="Label6" runat="server" Text="Pages"></asp:Label></td>
    <td><asp:TextBox ID="txtpages" runat="server"></asp:TextBox></td></tr>
    
     <tr><td width="100"><asp:Label ID="Label7" runat="server" Text="Year"></asp:Label></td>
    <td><asp:TextBox ID="txtyear" runat="server"></asp:TextBox></td></tr>
    
    <tr><td width="100"><asp:Label ID="Label8" runat="server" Text="Product Image"></asp:Label></td>
    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
    
    <tr><td colspan="2" align="center">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:Button ID="btnadd" runat="server" Text="ADD" onclick="btnadd_Click" /></td></tr>
    
    </table>
<FooterTemplate>
  
     
     <br />
     <br />

     <section class="info_section layout_padding2">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-3 info-col">
          <div class="info_detail">
            <h4>
              About Us
            </h4>
            <p>
               "A Book Is A Gift You Can Open Again And Again...."
            </p>
            <div class="info_social">
              <a href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3 info-col">
          <div class="info_contact">
            <h4>
              Address
            </h4>
            <div class="contact_link_box">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Location
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call +01 1234567890
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                 magicbookstore@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3 info-col">
          <div class="info_contact">
            <h4>
              Newsletter
            </h4>
            <form action="#">
              <input type="text" placeholder="Enter email" />
              <button type="submit">
                Subscribe
              </button>
            </form>
          </div>
        </div>
        <div class="col-md-6 col-lg-3 info-col">
          <div class="map_container">
            <div class="map">
              <div id="googleMap"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->


  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
         <span id="displayYear"></span> 
        <a href="https://html.design/"></a>
      </p>
    </div>
  </footer> 
    </FooterTemplate>   

</asp:Content>

