 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Order_Page.aspx.cs" Inherits="Carr.Admin.Order_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* GridView Styling */
        #Grid_1 {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            margin-top: 20px;
        }

        /* Header Row */
        #Grid_1 th {
            background-color: #333;
            color: white;
            padding: 12px;
            text-align: left;
            border: 1px solid #555;
        }

        /* Data Rows */
        #Grid_1 td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        /* Alternate Row Colors */
        #Grid_1 tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Hover Effect */
        #Grid_1 tr:hover {
            background-color: #f1f1f1;
            cursor: pointer;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:GridView runat="server" AutoGenerateColumns="False" ID="Grid_1" CssClass="table">
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("User_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("User_Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pincode">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Pincode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile_No">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Mobile_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Model">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Car_Model") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car_Color">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Car_Color") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

