<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Viewcart.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
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
      
   <br />
   <br />
   <br />
   
       <img src="images/cart.jpg" alt="" align="left" height="400" width="600" />
    <table align="center" border="2" width="500" height="250">
    <tr><td colspan="2" align="center" valign="middle">
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="cartid" EmptyDataText="No Data Found" 
        Width="600" AutoGenerateColumns="False">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
       

         <Columns>
             <asp:TemplateField HeaderText="Product id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("pro_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Product name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Price"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Qty"><ItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("quantity") %>' Width="30" ontextchanged="TextBox1_TextChanged"></asp:TextBox></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Amount"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("amount") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Image"><ItemTemplate><asp:Image ID="Image1" runat="server" height="100" Width="100" ImageUrl='<%# Eval("image") %>'/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink Height="5" Width="5" ID="hpflat" runat="server" NavigateUrl='<%# "~/editcart.aspx?id=" + Eval("cartid")  %>' ImageUrl="~/images/editimage.jpg">Edit</asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete_icon[1].gif" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView></td></tr>
    
    <tr><td align="center" valign="middle">
        <br /><asp:Label ID="Label5" runat="server" Text="Total" Font-Bold="True" Font-Italic="False" Font-Size="Large"></asp:Label>
        <br />
        <br /></td>
        <td align="center"><asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>
     
    <tr><td colspan="2" align="center"><br /><asp:Button Font-Bold="true" ID="btn_payment" 
            runat="server" Text="Payment" onclick="btn_payment_Click" /><br /></td></tr>
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