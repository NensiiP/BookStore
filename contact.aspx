<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<headertemplate>
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
              <li class="nav-item active">
                <a class="nav-link pl-lg-0" href="index.html">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html"> About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.aspx">login</a>
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
<br />
<br />


<section class="contact_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6 ">
          <div class="heading_container ">
            <h2 class="">
             CONTACT US
            </h2>
          </div>
          <form action="#">
            <tr><td>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
    <td><asp:TextBox ID="name" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label></td>
    <td><asp:TextBox ID="address" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label3" runat="server" Text="Mobno"></asp:Label></td>
    <td><asp:TextBox ID="mobno" runat="server"></asp:TextBox></td></tr>
    <tr><td>
    <asp:Label ID="Label5" runat="server" Text="Officeno"></asp:Label></td>
    <td><asp:TextBox ID="officeno" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label></td>
    <td><asp:TextBox ID="email" runat="server"></asp:TextBox></td></tr>
    <br />
    <br />
    
            <div class="btn-box">
              <tr align="center"><td colspan="2">
    <asp:Button Font-Bold="true" height="40" Width="300" ID="Button1" runat="server" Text="Send" onclick="Button1_Click" /></td></tr>

            </div>
          </form>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/contact-img.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>


<br />
<br />
<br />
<br/>
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
    </footertemplate>

</asp:Content>