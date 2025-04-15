<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Daskboard.aspx.cs" Inherits="Carr.Daskboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   

     <div class="main-banner header-text" id="top">
        <div class="Modern-Slider">
          <!-- Item -->
          <div class="item item-1">
            <div class="img-fill">
                <div class="text-content">
                  <h6>lorem ipsum dolor sit amet!</h6>
                  <h4>Quam temporibus accusam <br> hic ducimus quia</h4>
                  <p>Magni deserunt dolorem consectetur adipisicing elit. Corporis molestiae optio, laudantium odio quod rerum maiores, omnis unde quae illo.</p>
                  <a href="cars.html" class="filled-button">Cars</a>
                </div>
            </div>
          </div>
          <!-- // Item -->
          <!-- Item -->
          <div class="item item-2">
            <div class="img-fill">
                <div class="text-content">
                  <h6>magni deserunt dolorem harum quas!</h6>
                  <h4>Aliquam iusto harum <br>  ratione porro odio</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. At culpa cupiditate mollitia adipisci assumenda laborum eius quae quo excepturi, eveniet. Dicta nulla ea beatae consequuntur?</p>
                  <a href="about.html" class="filled-button">About Us</a>
                </div>
            </div>
          </div>
          <!-- // Item -->
          <!-- Item -->
          <div class="item item-3">
            <div class="img-fill">
                <div class="text-content">
                  <h6>alias officia qui quae vitae natus!</h6>
                  <h4>Lorem ipsum dolor <br>sit amet, consectetur.</h4>
                  <p>Vivamus ut tellus mi. Nulla nec cursus elit, id vulputate mi. Sed nec cursus augue. Phasellus lacinia ac sapien vitae dapibus. Mauris ut dapibus velit cras interdum nisl ac urna tempor mollis.</p>
                  <a href="contact.html" class="filled-button">Contact Us</a>
                </div>
            </div>
          </div>
          <!-- // Item -->
        </div>
    </div>
    <!-- Banner Ends Here -->

    <div class="container" style="margin-top: 30px;">
        <h2>View Product</h2>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" CssClass="data-list" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="product-item">
                    <asp:Image ID="Image1" Height="200px" Width="200px" runat="server" ImageUrl='<%# Eval("Car_Images") %>' CssClass="img-fluid" />
                    <h5><asp:Label ID="Label1" runat="server" Text='<%# Eval("Car_Type") %>'></asp:Label></h5>
                    <p><asp:Label ID="Label2" runat="server" Text='<%# Eval("Car_Model") %>'></asp:Label></p>
                    <p><asp:Label ID="Label3" runat="server" Text='<%# Eval("Car_Price") %>'></asp:Label></p>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-info" CommandName="cmd_details">View Details</asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>