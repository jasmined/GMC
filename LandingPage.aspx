<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="GMCWebsite.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0000CC;
            height: 62px;
            width: 570px;
        }
        .auto-style2 {
            width: 91px;
            height: 54px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="#99CCFF" BorderStyle="Outset" ForeColor="#0000CC" NavigateUrl="MainPage.aspx" Width="102px" ImageUrl="~/GMClogo.png">Enter GMC</asp:HyperLink>
        </div>
    </form>
    <p style="color: #0000CC">
        <em style="font-weight: 700" draggable="auto">Welcome! Ever encountered days on which you couldn&#39;t decide what to watch? Maybe you found a new friend and you want to impress them with high rated movies for a specific genre. Well you came to the right place!</em></p>
    <p>
        &nbsp;</p>
    <p class="auto-style1">
        <strong>Click on our logo to enter a realm of blissfulness :)</strong></p>
    <p class="auto-style1">
        <img alt="" class="auto-style2" src="contactus.jpg" /></p>
</body>
</html>
