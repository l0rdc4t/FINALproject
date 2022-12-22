<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerpage.aspx.cs" Inherits="FINALproject.Registerpage" %>

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
            <asp:Label ID="IdLabel" runat="server" Text="使用者名稱:"></asp:Label>
&nbsp;<asp:TextBox ID="Id" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="(英數字10字內)"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Id" ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="PasswordLabel" runat="server" Text="密碼:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="(英數字20字內)"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="EmailLabel" runat="server" Text="電子信箱:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Name" ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="NameLabel" runat="server" Text="姓名:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Name" ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="SexLabel" runat="server" Text="性別:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Sex" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="(男/女)"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Sex" ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="birhtdayLabel" runat="server" Text="生日:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Birthday" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="(西元年/月/日)"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Birthday" ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="PhoneLabel" runat="server" Text="電話:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Phone" ErrorMessage="RequiredFieldValidator" Visible="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Back" runat="server" OnClick="Back_Click" Text="返回登入" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Registrate" runat="server" OnClick="Registrate_Click" Text="註冊" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Phone] = @original_Phone AND [Birthday] = @original_Birthday AND [Sex] = @original_Sex AND [Password] = @original_Password AND [Email] = @original_Email" InsertCommand="INSERT INTO [Table] ([Id], [Name], [Phone], [Birthday], [Sex], [Password], [Email]) VALUES (@Id, @Name, @Phone, @Birthday, @Sex, @Password, @Email)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Phone] = @Phone, [Birthday] = @Birthday, [Sex] = @Sex, [Password] = @Password, [Email] = @Email WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Phone] = @original_Phone AND [Birthday] = @original_Birthday AND [Sex] = @original_Sex AND [Password] = @original_Password AND [Email] = @original_Email" ConflictDetection="CompareAllValues" EnableCaching="True" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Phone" Type="Int32" />
                <asp:Parameter Name="original_Birthday" Type="DateTime" />
                <asp:Parameter Name="original_Sex" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="Id" Name="Id" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Phone" Name="Phone" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Birthday" Name="Birthday" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="Sex" Name="Sex" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Password" Name="Password" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Phone" Type="Int32" />
                <asp:Parameter Name="Birthday" Type="DateTime" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="original_Id" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Phone" Type="Int32" />
                <asp:Parameter Name="original_Birthday" Type="DateTime" />
                <asp:Parameter Name="original_Sex" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
