<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkoutpage.aspx.cs" Inherits="FINALproject.Checkoutpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        您購買的物品:<br />
        <br />
        螢幕:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        滑鼠:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        鍵盤:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <p>
            總金額:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
