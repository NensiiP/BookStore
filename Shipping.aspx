<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shipping.aspx.cs" Inherits="Shipping" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 898px;
        }
        .style2
        {
            width: 898px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="form1" runat="server">--%>

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
                <a class="nav-link" href="Category.aspx">Category</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="contact.aspx">Contact Us</a>
              </li>
            </ul>
           
          </div>
        </nav>
      </div>
    </header>
    </header>
   
    </HeaderTemplate>
       <img src="images/shipping3.jpg" alt="" height="600" width="1900" align="center">
       <table border="2" align="center"> 
       <td class="style1" >
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <h2 align="center"> <u>All payment details</u></h2>
           <br />
      <br />
    &nbsp;&nbsp;&nbsp;<h3>Payment Method</h3><br />
           &nbsp;&nbsp;
           <asp:RadioButton ID="RadioButton1" runat="server" Text="Credit card" />
&nbsp;<br />
           &nbsp;&nbsp;
           <asp:RadioButton ID="RadioButton2" runat="server" Text="Cash on delivery" />
           <br />
           <br />
           &nbsp;&nbsp;&nbsp;
           Card Number<br />
           &nbsp; &nbsp;&nbsp;
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           <br />
&nbsp;&nbsp;&nbsp; Security Code<br />
           &nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           <br />
           <br />
           &nbsp;&nbsp;&nbsp;
           Expiration Date:&nbsp;&nbsp;
           <asp:DropDownList ID="Month" runat="server" Height="37px" Width="111px">
               <asp:ListItem>January</asp:ListItem>
               <asp:ListItem>February</asp:ListItem>
               <asp:ListItem>March</asp:ListItem>
               <asp:ListItem>April</asp:ListItem>
               <asp:ListItem>May</asp:ListItem>
               <asp:ListItem>June</asp:ListItem>
               <asp:ListItem>July</asp:ListItem>
               <asp:ListItem>Augest</asp:ListItem>
               <asp:ListItem>September</asp:ListItem>
               <asp:ListItem>October</asp:ListItem>
               <asp:ListItem>November</asp:ListItem>
               <asp:ListItem>December</asp:ListItem>
           </asp:DropDownList>
&nbsp;
           <asp:DropDownList ID="Year" runat="server" Height="37px" Width="111px">
               <asp:ListItem>2001</asp:ListItem>
               <asp:ListItem>2002</asp:ListItem>
               <asp:ListItem>2003</asp:ListItem>
               <asp:ListItem>2004</asp:ListItem>
               <asp:ListItem>2005</asp:ListItem>
               <asp:ListItem>2006</asp:ListItem>
               <asp:ListItem>2007</asp:ListItem>
               <asp:ListItem>2008</asp:ListItem>
               <asp:ListItem>2009</asp:ListItem>
               <asp:ListItem>2010</asp:ListItem>
               <asp:ListItem>2011</asp:ListItem>
               <asp:ListItem>2012</asp:ListItem>
               <asp:ListItem>2013</asp:ListItem>
               <asp:ListItem>2014</asp:ListItem>
               <asp:ListItem>2015</asp:ListItem>
               <asp:ListItem>2016</asp:ListItem>
               <asp:ListItem>2017</asp:ListItem>
               <asp:ListItem>2018</asp:ListItem>
               <asp:ListItem>2019</asp:ListItem>
               <asp:ListItem>2020</asp:ListItem>
               <asp:ListItem>2021</asp:ListItem>
               <asp:ListItem>2022</asp:ListItem>
               <asp:ListItem>2023</asp:ListItem>
           </asp:DropDownList>
           <br />
    <br />
 
   <tr align="center"><td class="style2"><asp:Button Font-Bold="true" ID="btn_billnow" runat="server" onclick="btn_billnow_Click" Text="Bill Now" /> </td>
    </td></tr> 
    
    </table> 
 <FooterTemplate>
  
   
     <br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
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

<%--</form>--%>
</asp:Content>