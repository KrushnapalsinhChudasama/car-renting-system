<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Ragister.aspx.cs" Inherits="Carr.User_Ragister" %>

<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        .container {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        label, input, button {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }

        input, button {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            padding: 20px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

            button:hover {
                background-color: #5DAD71;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <center>
                <h2>User Registration</h2>
            </center>
            <asp:Label runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtRegName" runat="server"></asp:TextBox>

            <asp:Label runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>

            <asp:Label runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="txtRegAddress" runat="server"></asp:TextBox>

            <asp:Label runat="server" Text="City"></asp:Label>
            <asp:TextBox ID="txtRegCity" runat="server"></asp:TextBox>

            <asp:Label runat="server" Text="Pincode"></asp:Label>
            <asp:TextBox ID="txtRegPincode" runat="server"></asp:TextBox>

            <asp:Label runat="server" Text="Mobile No"></asp:Label>
            <asp:TextBox ID="txtRegMobile" runat="server"></asp:TextBox>

            <asp:Label runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>

            <asp:Label runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtRegConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>

            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />


            <asp:Label runat="server" Text="If You Have Acoount"></asp:Label>
            <asp:LinkButton ID="l_btn" runat="server" OnClick="l_btn_Click">Login</asp:LinkButton>

        </div>
    </form>
</body>
</html>