<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="supermarket.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="forgetstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-bottom: 20px;
            background-color: rgb(255,9,9);
        }
        .auto-style2 {
            height: 768px;
            width: 420px;
        }
    </style>
</head>
<body>
     <div class="forgetbox">
          <form runat="server" class="auto-style2">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label1"  runat="server" Text="Answer the Security Question" BackColor="#FFFF99" BorderColor="Fuchsia" ForeColor="#FF3300"></asp:Label>
              <br />
              <br />
            <asp:Label ID="lbluser" CssClass="lbluser" runat="server" Text="Username"></asp:Label>
            <br />
            <asp:TextBox ID="txtuser" runat="server" CssClass="txtuser" placeholder="Enter username"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="Requser" runat="server" ErrorMessage="Enter Username" ControlToValidate="txtuser" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblemail" CssClass="lblemail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtemail" runat="server" CssClass="txtemail" placeholder="Enter Email ID"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="Reqemail" runat="server" ErrorMessage="Enter Email ID" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnverify" Text="Verify" CssClass="btnverify" runat="server" Height="42px" OnClick="btnverify_Click" Width="123px" />
            <br/>

            <asp:Label ID="lblnew" CssClass="lblnew" runat="server" Text="New Password"></asp:Label>
            <asp:TextBox ID="txtnew" runat="server" CssClass="txtnew" placeholder="Enter New Password" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="Reqnew" runat="server" ErrorMessage="Enter New Password" ControlToValidate="txtnew" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="Regnew" runat="server" ErrorMessage="Invalid Password" ControlToValidate="txtnew" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8}$" ForeColor="#CC3300"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="lblconfirm" CssClass="lblconfirm" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtconfirm" runat="server" CssClass="txtconfirm" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="Reqconfirm" runat="server" ErrorMessage="Enter confirm Password " ControlToValidate="txtconfirm" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
              <asp:RegularExpressionValidator ID="Regconfirm" runat="server" ErrorMessage="Invalid Password" ControlToValidate="txtconfirm" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8}$" ForeColor="#CC3300"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btnsave" Text="Save" CssClass="btnsave" runat="server" Height="40px" OnClick="btnsave_Click" Width="127px" />
            <br/>

              <br />
              <asp:Button ID="Button1" runat="server" CausesValidation="False" CssClass="auto-style1" Height="32px" OnClick="Button1_Click" Text="Back" Width="120px" />

              </form>
         </div>
</body>
</html>
