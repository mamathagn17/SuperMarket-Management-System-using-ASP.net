<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sales.aspx.cs" Inherits="supermarket.sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 641px;
        }
        .auto-style2 {
            width: 232px;
        }
        .auto-style3 {
            width: 232px;
            height: 51px;
        }
        .auto-style4 {
            height: 51px;
        }
        .auto-style5 {
            width: 232px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style9 {
            width: 596px;
            height: 555px;
            position: absolute;
            top: 827px;
            left: 54px;
            z-index: 1;
        }
        .auto-style10 {
            width: 98%;
            height: 514px;
        }
         body {
    margin: 0;
    padding: 0;
    background-image: url('images/img1.jpg');
    background-size: cover;
    font-family: sans-serif;
}

.title{
    font-style: italic;
    font-weight: bolder;
    font-size: 35px;
    color:#ff0000;
    text-align: center;
    left: 55%;
    top: 10%;
}

.label {
    font-weight: bold;
    color: #102231;
    font-size: 25px;
    left: 45%;
    top: 20%;
    text-align: center;
}

.textbox {
    padding: 10px;
    border-radius: 20px;
}

.button {
    border-style: none;
    border-color: inherit;
    border-width: medium;
    outline: none;
    font-size: 16px;
    color: #fff;
    background-color: rgb(255,9,9);
    cursor: pointer;
    border-radius: 20px;
    transition: .3s ease-in-out;
}

    .button:hover {
        background-color: rgb(255,217,9);
    }

.Panel {
    position: relative;
    height: 551px;
    width: 396px;
    left: 133px;
    top: 34px;
      padding: 10px;
    border-radius: 20px;
}
        .auto-style12 {
            height: 47px;
        }
        .auto-style14 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 45%;
            top: 20%;
            text-align: center;
            width: 836px;
        }
        .auto-style15 {
            width: 836px;
        }
        .auto-style16 {
            text-decoration: underline;
        }
        .newStyle1 {
        }
        .auto-style17 {
            width: 836px;
            height: 60px;
        }
        .auto-style18 {
            width: 667px;
            height: 260px;
            position: absolute;
            top: 299px;
            left: 674px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 670px;
            left: 1105px;
            z-index: 1;
        }
        .auto-style20 {
            width: 232px;
            height: 48px;
        }
        .auto-style21 {
            height: 48px;
        }
        .auto-style22 {
            width: 509px;
            height: 680px;
            position: absolute;
            top: 89px;
            left: 28px;
            z-index: 1;
        }
        .slabel{
            font-size :15px;
        }
    </style>
</head>
<body style="width: 1560px; height: 1609px">
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="#FCEFEE" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style22">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style16"><strong> Sales Bill</strong></span><br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" CssClass="label" Text="Sales Bill No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtsbno" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" CssClass="label" Text="Customer ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcid" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" CssClass="label" Text="Customer Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcname" runat="server" CssClass="textbox"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcname" ErrorMessage="Enter Customer Name" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" CssClass="label" Text="Customer PHONE No"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtpno" runat="server" CssClass="textbox"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpno" ErrorMessage="Invalid Numer" ForeColor="Red" ValidationExpression="^[6-9]\d{9}$" ValidationGroup="save"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" CssClass="label" Text="Sales Bill Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdate" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label14" runat="server" CssClass="label" Text="S No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server" CssClass="label" Text="Item name"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style18" ForeColor="#333333" ShowFooter="True">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="S.No">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="iname" HeaderText="Item Name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="iprice" HeaderText="Price">
                                <HeaderStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="qty" HeaderText="Quantity">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="amount" HeaderText="Total">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="textbox" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        &nbsp;<asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" CssClass="label" Text="Item ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtiid" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" CssClass="label" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtprice" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Label11" runat="server" CssClass="label" Text="Quantity"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="txtqty" runat="server" AutoPostBack="True" CssClass="textbox" OnTextChanged="txtqty_TextChanged"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtqty" ErrorMessage="Enter quantity" ForeColor="#FF3300" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label16" runat="server" CssClass="label" Text="Total"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttotal" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:Button ID="btnadd" runat="server" CssClass="button" Height="34px" OnClick="btnadd_Click" Text="Add To Bill" Width="117px" CausesValidation="False" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsave" runat="server" CssClass="button" Height="33px" OnClick="btnsave_Click" Text="Save" Width="61px" ValidationGroup="save" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnnew" runat="server" CssClass="button" Height="37px" OnClick="btnnew_Click" Text="New Bill" Width="90px" />
                        &nbsp;&nbsp;
                        <asp:Button ID="btnback" runat="server" CssClass="button" Height="35px" OnClick="btnback_Click" Text="Back" Width="74px" CausesValidation="False" />
                        &nbsp;
                        <asp:Button ID="btnprint" runat="server" CssClass="button" Height="32px" OnClick="btnprint_Click" Text="Print" Width="69px" CausesValidation="False" />
                        &nbsp;&nbsp;&nbsp;
                        <formview>
                            <asp:Panel ID="Panel3" runat="server" BackColor="#E7F6F2" BorderColor="Black" BorderStyle="Groove" BorderWidth="5px" CssClass="auto-style9">
                                <table class="auto-style10">
                                    <tr>
                                        <td class="auto-style14">Procare SuperMarket &nbsp;&nbsp;<br />
                                            <asp:Label ID="Label18" runat="server" CssClass="slabel" Text="Opp.sachidananda residency,kalsanka,udupi"></asp:Label>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Sales Bill ID:<asp:Label ID="lblsbno" runat="server"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer ID:<asp:Label ID="lblcid" runat="server"></asp:Label>
                                            <br />
                                            <br />
                                            Sales Bill Date:<asp:Label ID="lblsdate" runat="server"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Customer Name:<asp:Label ID="lblcname" runat="server"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Phone No:<asp:Label ID="lblph" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">
                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="255px" Width="529px">
                                                <Columns>
                                                    <asp:BoundField DataField="sno" HeaderText="S.No">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="itemid" HeaderText="Item ID">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="iname" HeaderText="Item Name">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="iprice" HeaderText="Price">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="qty" HeaderText="Quantity">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="amount" HeaderText="Total price">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Grand Total:<asp:Label ID="lblgt" runat="server"></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .....................................................................................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THANK YOU&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No:8660165630<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Once material sold will not be taken back)<br /> &nbsp;&nbsp;&nbsp;&nbsp; ......................................................................................<br /> </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </formview>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </asp:Panel>
        <asp:Label ID="Label17" runat="server" CssClass="auto-style19"></asp:Label>
    </form>
</body>
</html>
