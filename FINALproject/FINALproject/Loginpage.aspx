<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="FINALproject.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" ImageHeight="60px" ImageUrl="~/Models/logo.png" ImageWidth="200px">HyperLink</asp:HyperLink>
            <br />
            <asp:Label ID="UsernameLabel" runat="server" Text="帳號 :"></asp:Label>
            <asp:TextBox ID="Id" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="PasswordLabel" runat="server" Text="密碼 :"></asp:Label>
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Login" runat="server" OnClick="Login_Click" Text="登入" />
            <asp:LinkButton ID="Register" runat="server" OnClick="Register_Click">註冊</asp:LinkButton>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Password], [Name] FROM [Table] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Id" Name="Id" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
