﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Data.aspx.cs" Inherits="Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
        <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="Maroon" Visible="False"></asp:Label>
    </form>
</body>
</html>