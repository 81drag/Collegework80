<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rollingDice.aspx.cs" Inherits="Assignment5_JC.Assignment5_JC.rollingDice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Guess if it will appear game<br />
            <br />
            This application will roll a pair of dice 5 times.<br />
            You must select a number between 2 and 12 from the dropdown list below that you guess it will appear at least once.<br />
            After you select the number, click the &quot;Roll the Dice&quot; button to play.<br />
            <br />
            Select a number:
            <asp:DropDownList ID="NumberSelectionList" runat="server">
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Roll the Dice" />
            <br />
            <br />
            <asp:ListBox ID="OutputLB" runat="server" Height="196px" Rows="10" Width="329px"></asp:ListBox>
        </div>
    </form>
</body>
</html>
