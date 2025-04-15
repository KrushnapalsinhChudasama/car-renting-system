<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Carr.Order" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .order-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 600px;
            text-align: center;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
            text-align: left;
        }
        .form-input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-input:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        .btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #0056b3;
        }

        @media (max-width: 600px) {
            .order-container {
                width: 95%;
            }
            td {
                display: block;
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="order-container">
            <h2>Order Your Car</h2>
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
                    <td><asp:TextBox ID="txtnm" runat="server" CssClass="form-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td>
                    <td><asp:TextBox ID="txtem" runat="server" CssClass="form-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Address"></asp:Label></td>
                    <td><asp:TextBox ID="txtadd" runat="server" CssClass="form-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="City"></asp:Label></td>
                    <td><asp:TextBox ID="txtci" runat="server" CssClass="form-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Pincode"></asp:Label></td>
                    <td><asp:TextBox ID="txtpi" runat="server" CssClass="form-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Mobile No"></asp:Label></td>
                    <td><asp:TextBox ID="txtmo" runat="server" CssClass="form-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="Car Model"></asp:Label></td>
                    <td><asp:TextBox ID="txtcm" runat="server" CssClass="form-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label8" runat="server" Text="Car Color"></asp:Label></td>
                    <td><asp:TextBox ID="txtcc" runat="server" CssClass="form-input"></asp:TextBox></td>
                </tr>
            </table>
            
            <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn" OnClick="Button1_Click1"/>
                
        </div>
    </form>
</body>
</html>