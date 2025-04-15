<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Car.aspx.cs" Inherits="Carr.Car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <style>
    .car-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        border: 1px solid #ddd;
        border-radius: 10px;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        padding: 15px;
        margin: 10px;
        background-color: #fff;
        width: 250px;
    }

    .car-container img {
        width: 200px;
        height: 200px;
        border-radius: 5px;
        object-fit: cover;
    }

    .car-container label {
        font-weight: bold;
        color: #333;
        margin-top: 5px;
    }
</style>
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
<asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatLayout="Table" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
        <div class="car-container">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Car_Images") %>' CssClass="car-image" />
            <asp:Label ID="Label1" runat="server" Text='<%# "Type: " + Eval("Car_Type") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%# "Model: " + Eval("Car_Model") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# "Registration: " + Eval("Car_Registration") %>'></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<%# "Mileage: " + Eval("Car_Mileage") %>'></asp:Label>
            <asp:Label ID="Label5" runat="server" Text='<%# "Fuel: " + Eval("Car_Fuel") %>'></asp:Label>
            <asp:Label ID="Label6" runat="server" Text='<%# "Engine: " + Eval("Car_Engine_Size") %>'></asp:Label>
            <asp:Label ID="Label7" runat="server" Text='<%# "Power: " + Eval("Car_Power") %>'></asp:Label>
            <asp:Label ID="Label8" runat="server" Text='<%# "Gearbox: " + Eval("Car_Gearbox") %>'></asp:Label>
            <asp:Label ID="Label9" runat="server" Text='<%# "Seats: " + Eval("Car_Number_Of_Seats") %>'></asp:Label>
            <asp:Label ID="Label10" runat="server" Text='<%# "Doors: " + Eval("Car_Doors") %>'></asp:Label>
            <asp:Label ID="Label11" runat="server" Text='<%# "Color: " + Eval("Car_Color") %>'></asp:Label>
            <asp:Label ID="Label12" runat="server" Text='<%# "Price: $" + Eval("Car_Price") %>'></asp:Label>
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_book">BookNow</asp:LinkButton>
        </div>
    </ItemTemplate>
</asp:DataList>

</asp:Content>

