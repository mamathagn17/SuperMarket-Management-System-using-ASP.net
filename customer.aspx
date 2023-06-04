<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="supermarket.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="supplierstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 1405px;
            height: 1170px;
        }
        .auto-style2 {
            width: 562px;
            height: 517px;
            position: absolute;
            top: 55px;
            left: 456px;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style3 {
            width: 100%;
            height: 507px;
        }
        .auto-style4 {
            width: 229px;
        }
        .auto-style7 {
            width: 229px;
            height: 93px;
        }
        .auto-style8 {
            height: 93px;
        }
        .auto-style11 {
            width: 229px;
            height: 84px;
        }
        .auto-style12 {
            height: 84px;
        }
        .auto-style13 {
            width: 229px;
            height: 96px;
        }
        .auto-style14 {
            height: 96px;
        }
        .auto-style15 {
            width: 333px;
            height: 225px;
            position: absolute;
            top: 590px;
            left: 7px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Customer Details" CssClass="lblsup" ForeColor="#33CC33"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" BackColor="#F7EDDB" BorderColor="Black" BorderStyle="Groove">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label2" runat="server" Text="Customer ID" CssClass="lbliid"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtcid" runat="server" CssClass="txtid"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label3" runat="server" Text="Customer Name" CssClass="lbliid"></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtcname" runat="server" CssClass="txtid"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcname" ErrorMessage="Enter Customer Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label4" runat="server" Text="Customer Phone No" CssClass="lbliid"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtcph" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcph" ErrorMessage="Enter Phone No" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="labadd" runat="server" Text="Customer Address" CssClass="lbliid"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcadd" runat="server" TextMode="MultiLine" CssClass="txtid"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" CssClass="button" Height="34px" Width="77px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnreset" runat="server" OnClick="btnreset_Click" Text="Reset" CausesValidation="False" CssClass="button" Height="33px" Width="59px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnnew" runat="server" OnClick="btnnew_Click" Text="New" CausesValidation="False" CssClass="button" Height="31px" Width="53px" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btndisplay" runat="server" OnClick="btndisplay_Click" Text="Display" CausesValidation="False" CssClass="button" Height="34px" Width="80px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" CausesValidation="False" CssClass="button" Height="31px" Width="70px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="225px" Width="333px" CssClass="auto-style15">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </asp:Panel>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
