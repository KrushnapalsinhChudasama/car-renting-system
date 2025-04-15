<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Ragisterr.aspx.cs" Inherits="Carr.Admin.Admin_Ragisterr" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <title>Admin Registration</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
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
            background-color: #5dad71;
            color: white;
            cursor: pointer;
            border: none;
        }

        button:hover {
            background-color: #4cae4f;
        }

        .footer-links {
            text-align: center;
            margin-top: 20px;
        }

        .footer-links a {
            color: #5dad71;
            text-decoration: none;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Admin Registration</h2>
            <asp:Label runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtRegEmail" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label  runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtrepa" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

            

            <asp:Label runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtRegConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-primary" />

            <div class="footer-links">
                <asp:Label runat="server" Text="If You Have An Account"></asp:Label>
                <asp:LinkButton ID="a_l_btn" runat="server" OnClick="a_l_btn_Click1">Login</asp:LinkButton>
            </div>
        </div>
    </form>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
