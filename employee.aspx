<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="supermarket.employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 932px;
            height: 774px;
            position: absolute;
            top: 58px;
            left: 287px;
            z-index: 1;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 381px;
        }
        .auto-style4 {
            width: 381px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="Employee Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtename" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label3" runat="server" Text="Phone No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtphno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txteadd" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label5" runat="server" Text="Date Of Birth"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                            &nbsp;<br />
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label6" runat="server" Text="Date Of Joining"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdoj" runat="server"></asp:TextBox>
                            <br />
                            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label12" runat="server" Text="Basic salary"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtbasic" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label7" runat="server" Text="DA"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtda" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label8" runat="server" Text="HRA"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txthra" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label9" runat="server" Text="PF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpf" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label10" runat="server" Text="Gross"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtgross" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style5"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="2">
                            <asp:Button ID="btnsave" runat="server" Text="SAVE" OnClick="btnsave_Click" />
                            &nbsp;&nbsp;&nbsp; </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
