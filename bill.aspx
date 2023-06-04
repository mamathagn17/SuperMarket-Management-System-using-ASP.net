<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="supermarket.bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 1018px;
            height: 762px;
            position: absolute;
            top: 72px;
            left: 232px;
            z-index: 1;
        }
        .auto-style3 {
            width: 100%;
            height: 705px;
        }
        .auto-style4 {
            height: 65px;
        }
        .auto-style5 {
            height: 142px;
        }
        .auto-style6 {
            height: 65px;
            width: 24px;
        }
        .auto-style7 {
            height: 142px;
            width: 24px;
        }
        .auto-style8 {
            width: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
                <table border="1" class="auto-style3">
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Procare SuperMarket &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Sales Bill ID:<asp:Label ID="Label2" runat="server"></asp:Label>
                            <br />
                            <br />
                            Sales Bill Date:<asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Customer ID:
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                            <br />
                            <br />
                            Customer Name:
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                            <br />
                            <br />
                            Customer Phone No:
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="255px" Width="529px">
                                <Columns>
                                    <asp:BoundField HeaderText="S.No" />
                                    <asp:BoundField DataField="itemid" HeaderText="Item ID" />
                                    <asp:BoundField DataField="iname" HeaderText="Item Name" />
                                    <asp:BoundField DataField="iprice" HeaderText="Price" />
                                    <asp:BoundField DataField="qty" HeaderText="Quantity" />
                                    <asp:BoundField DataField="amount" HeaderText="Total price" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Grand Total:
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thank You&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
