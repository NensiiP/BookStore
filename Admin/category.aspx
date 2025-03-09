<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

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
    <br />
    <h3 align="center">CATEGORY</h3>
<table align="center" border="2" width="500">

    <tr><td colspan="2" align="center" valign="middle">
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="cat_id" EmptyDataText="No Data Found" 
        Width="600" AutoGenerateColumns="False">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
       

         <Columns>
             <asp:TemplateField HeaderText=" Category ID"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("cat_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Category Name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("cat_name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="Category Image"><ItemTemplate><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("cat_img") %>' Height="50" Width="50" /></ItemTemplate></asp:TemplateField>
          <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink Height="5" Width="5" ID="hpflat" runat="server" NavigateUrl='<%# "~/Admin/editcat.aspx?id=" + Eval("cat_id")  %>' ImageUrl="~/images/editimage.jpg">Edit</asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete_icon[1].gif" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
             
        </Columns>
        
    </asp:GridView>
    <tr><td colspan="2" align="center"><asp:Button ID="addcat" runat="server" Text="ADD CATEGORY" onclick="addcat_Click" /></td></tr>
    </td></tr>
    <FooterTemplate>
  
     
     <br />


</table>
</br>
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
