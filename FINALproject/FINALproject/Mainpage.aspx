<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="FINALproject.Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 366px;
        }
        .auto-style2 {
            width: 313px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" ImageHeight="60px" ImageUrl="~/Models/logo.png" ImageWidth="200px"></asp:HyperLink>
            <asp:LinkButton ID="LoginButton" runat="server" OnClick="LinkButton1_Click">登入</asp:LinkButton>
            <asp:Label ID="Hello" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:LinkButton ID="Logoutbutton" runat="server" OnClick="Logoutbutton_Click" Visible="False">登出</asp:LinkButton>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/Models/螢幕.jpg" />
                </td>
                <td class="auto-style2">
                    <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl="~/Models/滑鼠.jpg" />
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="250px" ImageUrl="~/Models/鍵盤.jpg" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">NT.30000</td>
                <td class="auto-style2">NT.1000</td>
                <td>NT.3000</td>
            </tr>
            <tr>
                <td class="auto-style1">數量:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp; </td>
                <td class="auto-style2">&nbsp; 數量:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;數量:
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;</td>
            </tr>
        </table>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="購買" />
        <p>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Enabled="False" ValidationExpression="^(0|[1-9][0-9]*)$"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Enabled="False" ValidationExpression="^(0|[1-9][0-9]*)$"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Enabled="False" ValidationExpression="^(0|[1-9][0-9]*)$"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
