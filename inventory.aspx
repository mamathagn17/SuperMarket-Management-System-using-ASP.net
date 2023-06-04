<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="supermarket.inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="inventorysheet.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            height: 1305px;
            width: 1357px;
            z-index: 1;
            left: 7px;
            top: 15px;
            position: absolute;
        }
        .auto-style1 {
            width: 100%;
            height: 692px;
        }
        .auto-style2 {            height: 41px;
        }
        .auto-style15 {
            width: 213px;
            height: 9px;
        }
        .auto-style16 {
            width: 297px;
            height: 9px;
        }
        .auto-style17 {
            width: 213px;
            height: 49px;
        }
        .auto-style18 {
            width: 297px;
            height: 49px;
        }
        .auto-style27 {
            width: 562px;
            height: 282px;
            position: absolute;
            top: 864px;
            left: 404px;
            z-index: 1;
        }
        .auto-style28 {
            width: 213px;
            height: 35px;
        }
        .auto-style29 {
            width: 297px;
            height: 35px;
        }
        .auto-style30 {
            width: 213px;
            height: 29px;
        }
        .auto-style31 {
            width: 297px;
            height: 29px;
        }
    </style>
</head>
<body>
    
        <form id="form1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblinventory" runat="server" Text="Inventory Details" CssClass="lblinventory" ForeColor="#CC3300"></asp:Label>
                <br />
            <div style="margin-left: 400px">
                <asp:Panel ID="Panel2" runat="server" BackColor="#FAFDD6" BorderColor="Black" BorderStyle="Groove" Height="706px" Width="511px">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style15">
                                <asp:Label ID="lblid" runat="server" CssClass="lbliid" Text="Item ID"></asp:Label>
                            </td>
                            <td class="auto-style16">
                                <asp:TextBox ID="txtiid" runat="server" CssClass="txtid" Height="16px" Width="163px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label2" runat="server" CssClass="lbliid" Text="Item Name"></asp:Label>
                            </td>
                            <td class="auto-style18">
                                <asp:TextBox ID="txtiname" runat="server" CssClass="txtid" Height="16px" Width="152px" placeholder="Enter Item name"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="Reqiname" runat="server" ControlToValidate="txtiname" Display="Dynamic" ErrorMessage="Enter item Name" ForeColor="Red" SetFocusOnError="True" ValidationGroup="save"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label5" runat="server" CssClass="lbliid" Text="Category"></asp:Label>
                            </td>
                            <td class="auto-style18">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txtid">
                                    <asp:ListItem Value="1">Groceries</asp:ListItem>
                                    <asp:ListItem Value="2">Snacks</asp:ListItem>
                                    <asp:ListItem Value="3">Essentials</asp:ListItem>
                                    <asp:ListItem Value="4">beverages</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">
                                <asp:Label ID="Label3" runat="server" CssClass="lbliid" Text="Price"></asp:Label>
                            </td>
                            <td class="auto-style29">
                                <asp:TextBox ID="txtiprice" runat="server" CssClass="txtid" placeholder="Enter Item Price"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="Reqiprice" runat="server" ControlToValidate="txtiprice" Display="Dynamic" ErrorMessage="Enter Item Price" ForeColor="#FF3300" ValidationGroup="save"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtiprice" ErrorMessage="Invalid Input" ForeColor="#FF3300" ValidationExpression="^\d+" ValidationGroup="save"></asp:RegularExpressionValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
                                <asp:Label ID="Label4" runat="server" CssClass="lbliid" Text="quantity"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtiqty" runat="server" CssClass="txtid" placeholder="Enter Item Quantity"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="Reqiqty" runat="server" ControlToValidate="txtiqty" Display="Dynamic" ErrorMessage="Enter Item Quantity" ForeColor="#FF3300" ValidationGroup="save"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtiqty" ErrorMessage="Invalid Input" ForeColor="#FF3300" ValidationExpression="^\d+" ValidationGroup="save"></asp:RegularExpressionValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
                                <asp:Label ID="Label6" runat="server" CssClass="lbliid" Text="Reorder"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtreorder" runat="server" CssClass="txtid"></asp:TextBox>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtreorder" ErrorMessage="Invalid Input" ForeColor="#FF3300" ValidationExpression="^\d+" ValidationGroup="save"></asp:RegularExpressionValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" colspan="2">&nbsp;&nbsp;
                                <asp:Button ID="btnadd" runat="server" CausesValidation="False" CssClass="button" Height="35px" OnClick="btnadd_Click" Text="Add" Width="80px" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnsave" runat="server" CssClass="button" Height="31px" OnClick="btnsave_Click" Text="Save" ValidationGroup="save" Width="68px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnreset" runat="server" CausesValidation="False" CssClass="button" Height="34px" OnClick="btnreset_Click" Text="Reset" Width="65px" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btncancel" runat="server" CausesValidation="False" CssClass="button" Height="32px" OnClick="btncancel_Click" Text="Back" Width="67px" />
                                &nbsp;
                                <asp:Button ID="btndisplay" runat="server" CssClass="button" Height="31px" OnClick="btndisplay_Click" Text="Display" Width="75px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </asp:Panel>
            </div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style27" ForeColor="#333333" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" BorderStyle="Groove" HorizontalAlign="Center" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    
            <br />
    
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
    
        </form>
    
</body>
</html>
