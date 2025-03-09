<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Productdetails.aspx.cs" Inherits="Productdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="frm1" runat="server">--%>
<header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              <img src="images/logo.jpg" alt="" height="100" width="150" align="center">
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link pl-lg-0" href="index.html">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html"> About</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="logout.aspx">logout</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="category.aspx">Categories</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="contact.aspx">Contact Us</a>
              </li>
            </ul>
            <from class="search_form">
             
          </div>
        </nav>
      </div>
    </header>
    <br /><br />
<table align="center" Height="50" width="50" border="1">
<tr align="center"><th colspan="3" align="center">PRODUCT DETAILS</th></tr>
<tr><td rowspan="8" align="center" valign="middle"><asp:Image ID="Image1" runat="server" Height="900" Width="400"/>
    
    <asp:HiddenField ID="hdncat" runat="server" />
    </td>
<td align="center" ><asp:Label Font-Bold="True" ID="Label1" runat="server" Text="Product Id"></asp:Label></td>
<td align="center"><asp:Label ID="lblpro_id" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td align="center"><asp:Label Font-Bold="True"  ID="Label3" runat="server" align="center" Text="Product name"></asp:Label></td>
<td align="center"><asp:Label ID="lbl_name" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td align="center"><asp:Label Font-Bold="True" ID="Label5" runat="server" Text="Price"></asp:Label></td>
<td align="center"><asp:Label ID="lbl_price" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td align="center"><asp:Label Font-Bold="True"  ID="Label7" runat="server" Text="Description"></asp:Label></td>
<td><asp:Label ID="lbl_dec" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td align="center"><asp:Label Font-Bold="True" ID="Label4" runat="server" Text="Author" align="center"></asp:Label></td>
<td align="center"><asp:Label ID="lbl_author" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td align="center"><asp:Label Font-Bold="True" ID="Label8" runat="server" Text="Year"></asp:Label></td>
<td align="center"><asp:Label ID="lbl_year" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td align="center"><asp:Label Font-Bold="True" ID="Label6" runat="server" Text="Pages" align="center"></asp:Label></td>
<td align="center"><asp:Label ID="lbl_pages" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td align="center"><asp:Label Font-Bold="True" ID="Label2" runat="server" Text="Quantity"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server" Text="1"></asp:TextBox></td>
</tr>

<tr>
<td colspan="1" align="center"><asp:Button Font-Bold="true" ID="Button1" runat="server" 
        Text="Add to cart" onclick="Button1_Click" /></td>
</tr>
</table>
<br /><br /><br /><br /><br />
<section class="info_section layout_padding2">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-3 info-col">
          <div class="info_detail">
            <h4>
              About Us
            </h4>
            <p>
             A Book Is A Gift You Can Open Again And Again
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
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
  </script>
<%--</form>--%>
</asp:Content>

