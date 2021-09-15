<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment1.NewFolder1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please Enter Students Information<br />
            <br />
            Student Name:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB1" runat="server" ForeColor="Black"></asp:TextBox>
            <br />
            <br />
            Academic Class:&nbsp; <asp:TextBox ID="TB2" runat="server" ForeColor="Black"></asp:TextBox>
            <br />
            <br />
            Major:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB3" runat="server" ForeColor="Black"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="BTN" runat="server" OnClick="BTN_Click" Text="Submit Information" />
            <br />
            <br />
            <asp:Label ID="Lbl" runat="server" Font-Italic="True"></asp:Label>
        </div>
    </form>
</body>
</html>
