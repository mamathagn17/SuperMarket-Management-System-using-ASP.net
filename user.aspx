<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="supermarket.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" />
</head>
<body style="width: 1368px; height: 777px">
    <form id="form1" runat="server">
        <div id="menu">
            <ul>
                <li><asp:LinkButton ID="linksales" runat="server">Sales<span><img src="images/dropdown.png" /></span></asp:LinkButton>
                    <ul>
                        <li> <asp:LinkButton ID="Linksalesdet" runat="server" Text="Sales Details" CssClass="sublabel" OnClick="Linksalesdet_Click"  ></asp:LinkButton></li>
                        <li> <asp:LinkButton ID="Linkview" runat="server" Text="View Bill"  CssClass="sublabel" OnClick="Linkview_Click"></asp:LinkButton></li>
                    </ul>
                </li>
                <li><asp:LinkButton ID="linkcust" runat="server" >Customer</asp:LinkButton>
                    <ul>
                        <li> <asp:LinkButton ID="Linkaddcust" runat="server" Text="Customer Details" CssClass="sublabel" OnClick="Linkaddcust_Click"   >Add Customer</asp:LinkButton></li>
                        <li> <asp:LinkButton ID="linkview1" runat="server" Text="view Customer"  CssClass="sublabel" OnClick="linkview1_Click" >Update Customer</asp:LinkButton></li>
                    </ul>
                </li>
                <li><asp:LinkButton ID="Linklog" runat="server" OnClick="Linklog_Click" >Logout</asp:LinkButton></li>
            </ul>
           
        </div>
    </form>
</body>
</html>
