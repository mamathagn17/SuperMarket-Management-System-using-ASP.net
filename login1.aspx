<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="supermarket.login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="loginstyle1.css" rel="stylesheet" />
</head>
<body>
   <div class="loginbox">
        <img src="images/user2.jpg"  alt="Alternate Text" class="user"/>
        <h2>Log In Here</h2>
        <form runat="server">
            <asp:Label ID="lbluser" CssClass="lblusername" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtuser" runat="server" CssClass="txtusername" placeholder="Enter username"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username" ControlToValidate="txtuser" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblpass" Text="Password" CssClass="lblpass" runat="server" />
            <asp:TextBox ID="txtpass" runat="server" CssClass="txtpass" placeholder="Enter password" AutoPostBack="False" ClientIDMode="Inherit" ValidateRequestMode="Inherit"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" Font-Italic="True" Font-Overline="False" Display="Dynamic" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Password" ControlToValidate="txtpass" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8}$" ForeColor="#CC3300"></asp:RegularExpressionValidator>
            <br />
          
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"  Text="Show password" ForeColor="White" AutoPostBack="True" />
            <br />
            <br />
            <asp:Label ID="lblselect" Text="Select user type" CssClass="lblselect" runat="server" />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem>user</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btnsubmit" Text="Login" CssClass="btnsubmit" runat="server" OnClick="btnsubmit_Click"  />
            <br/>
            <br />
            <asp:LinkButton ID="lnkforget" Text="Forget Password" CssClass="btnforget" runat="server" OnClick="lnkforget_Click" href="forgetpassword.aspx" />
         </form>
    </div>
   

</body>
</html>
