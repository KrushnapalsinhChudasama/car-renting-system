<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Carr.Admin.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
        <center>
    <h2>Add Product's</h2>
            </li>
                <li class="nav-item">
                <a class="nav-link" href="Addcat.aspx">Add Category </a>
              </li>
    <table class="table">
        <tr>
            <td>Car Type :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_ty" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td>Car_Model :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_m" CssClass="form-control" Columns="20" Rows="2" TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td>Car_First_Registration :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_r" CssClass="form-control" Columns="20" Rows="2" TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td>Car_Mileage :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_mi" CssClass="form-control" Columns="20" Rows="2" TextMode="MultiLine" />
            </td>
        </tr>
        <td>Car_Fule :</td>
            <td>
                <asp:DropDownList runat="server" ID="ddl_category" CssClass="form-control">
                    <asp:ListItem>--Select Category--</asp:ListItem>
                </asp:DropDownList>
            </td>
        <tr>
            <td>Car_Enine_Size :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_esi" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td>Car_Power :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_po" CssClass="form-control" />
            </td>
        </tr>
         <tr>
            <td>Car_Gearboxr :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_ge" CssClass="form-control" />
            </td>
        </tr>
         <tr>
            <td>Car_Number_Of_Seats :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_nos" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td>Car_Doors :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_do" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td>Car_Color :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_col" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td>Car_Price :</td>
            <td>
                <asp:TextBox runat="server" ID="txt_pri" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td>Car_Image :</td>
            <td>
                <asp:FileUpload ID="flimg" runat="server" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btn_save" Text="Save" runat="server" CssClass="btn btn-primary" OnClick="btn_save_Click1" />
            </td>
        </tr>
    </table>
    <div style="12px">
    <asp:GridView runat="server" AutoGenerateColumns="False" id="grid_products" OnRowCommand="Unnamed1_RowCommand" CssClass="table table-striped">
        <Columns>
            <asp:TemplateField HeaderText="Car_Id">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Type">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Car_Type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Model">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Car_Model") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Registration">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Car_Registration") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Mileage">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Car_Mileage") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Fuel">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Car_Fuel") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Engine_Size">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Car_Engine_Size") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Power">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Car_Power") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Gearbox">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Car_Gearbox") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Number_Of_Seats">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Car_Number_Of_Seats") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Doors">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("Car_Doors") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Color">
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("Car_Color") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Price">
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("Car_Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Images">
                <ItemTemplate>
                    <asp:Image ID="Image1" Height="50" Width="50" runat="server" ImageUrl='<%# Eval("Car_Images") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="cmd_update">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' BackColor="#CCCC00" ForeColor="Black">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>
        </center>
</asp:Content>