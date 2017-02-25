<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserCreate.aspx.cs" Inherits="AdminPanel_AdminPages_UserCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Kayıt</asp:LinkButton><br />
        <asp:Label ID="Inst_Lbl" runat="server" Visible="False" Text="Kayıt Yapılmıştır" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:Label>
    </div>
    </form>
</body>
</html>
