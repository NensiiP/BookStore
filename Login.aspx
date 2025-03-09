<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="form1" runat="server">--%>

<headertemplate>
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
                <a class="nav-link" href="login.aspx">Login</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="contact.aspx">Contact Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Feedback.aspx">Feedback</a>
              </li>
            </ul>
            
             
                
          </div>
        </nav>
      </div>
    </header>
</headertemplate>
<img src="images/login2.jpg" alt="" height="600" width="1600" align="center">
<table align="center" height="300" width="300">
    <tr>
    <td><asp:Label Font-Bold="true" ID="Label1" runat="server" Text="USERNAME"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
        </td>    
    </tr>
    
    <tr><td>
        <asp:Label Font-Bold="true" ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
        </td><td>
            <asp:TextBox ID="txtpass" runat="server" Wrap="False"></asp:TextBox>
        </td></tr>
    
    <tr align=center><td colspan="2">
        <asp:Button Font-Bold="true" ID="btnlogin" runat="server" Text="Login" onclick="btnlogin_Click" style="height: 26px" />
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New 
        User???</asp:HyperLink>
        </td></tr>
    </table>
    <footertemplate>
    
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
    <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
  </script>
  <!-- End Google Map -->
    </footertemplate>
    <%--</form>--%>
</asp:Content>

