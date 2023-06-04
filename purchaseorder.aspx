<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchaseorder.aspx.cs" Inherits="supermarket.purchaseorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
    margin: 0;
    padding: 0;
    background-image: url('images/img1.jpg');
    background-size: cover;
    font-family: sans-serif;
}

.lblsup{
    font-style: italic;
    font-weight: bolder;
    font-size: 35px;
    text-align: center;
    left: 55%;
    top: 10%;
}

.lbliid {
    font-weight: bold;
    color: #102231;
    font-size: 25px;
    left: 45%;
    top: 20%;
    text-align: center;
}

.txtid {
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

        .auto-style6 {
            width: 756px;
            height: 1279px;
            margin-left: 440px;
        }

        .auto-style16 {
            width: 486px;
            height: 224px;
            position: absolute;
            top: 1041px;
            left: 552px;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style17 {
            width: 99%;
            height: 759px;
        }
        .auto-style19 {
            width: 335px;
            height: 36px;
        }
        .auto-style20 {
            height: 36px;
        }

        .auto-style21 {
            width: 335px;
        }
        .auto-style22 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 429px;
            top: 263px;
            text-align: center;
            position: absolute;
            z-index: 1;
            width: 137px;
            height: 38px;
        }
        .auto-style23 {
            width: 335px;
            height: 313px;
        }
        .auto-style24 {
            height: 313px;
        }

        .auto-style25 {
            padding: 10px;
            border-radius: 20px;
            margin-right: 5px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">
            <br />
            &nbsp;
            &nbsp;<br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="224px" Width="486px" CssClass="auto-style16">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
            
            <asp:Panel ID="Panel3" runat="server" BackColor="White" Height="859px" Width="695px" BorderColor="Black" BorderStyle="Groove">
                <table class="auto-style17">
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblpod" runat="server" CssClass="lblsup" Text="PURCHASE ORDER DETAILS"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="pno" runat="server" CssClass="lbliid" Text="PurchaseOrder No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpno" runat="server" CssClass="txtid"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label4" runat="server" CssClass="lbliid" Text="Purchase Order Date"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdate" runat="server" CssClass="txtid"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style22" Text="Due Date"></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <asp:TextBox ID="txtdue" runat="server" CssClass="txtid"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="Reqpod" runat="server" ControlToValidate="txtdue" ErrorMessage="Select Due Date" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="lblsname" runat="server" CssClass="lbliid" Text="Select Supplier Name"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="56px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="141px" CssClass="txtid">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="lblsid" runat="server" CssClass="lbliid" Text="Supplier ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtsid" runat="server" CssClass="txtid" Height="22px" Width="174px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="lbliid" Text="Item Name"></asp:Label>
                        </td>
                        <td class="auto-style20">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="81px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="125px" CssClass="txtid">
                            </asp:DropDownList>
                            &nbsp;<asp:Button ID="btnnp" runat="server" OnClick="btnnp_Click1" Text="New Item" Width="105px" />
                            <br />
                            <asp:TextBox ID="txtnp" runat="server" CssClass="auto-style25" placeholder="Enter New Item Name" Height="16px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label3" runat="server" CssClass="lbliid" Text="Item ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtiid" runat="server" CssClass="txtid" Height="17px" Width="164px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label2" runat="server" CssClass="lbliid" Text="Quantity"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtqty" runat="server" CssClass="txtid"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="Reqqty" runat="server" ControlToValidate="txtqty" ErrorMessage="Enter Item Quantity" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnsave" runat="server" CssClass="button" Height="45px" OnClick="btnsave_Click" Text="Save" ValidationGroup="save" Width="105px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnnew" runat="server" CssClass="button" Height="44px" OnClick="btnnew_Click" Text="New Order" Width="106px" CausesValidation="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnreset" runat="server" CssClass="button" Height="44px" OnClick="btnreset_Click" Text="Reset" Width="107px" CausesValidation="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnshow" runat="server" CssClass="button" Height="45px" OnClick="btnshow_Click" Text="Show" Width="109px" CausesValidation="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btncancel" runat="server" CssClass="button" Height="43px" OnClick="btncancel_Click" Text="Back" Width="109px" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            
        </div>
    </form>
</body>
</html>
