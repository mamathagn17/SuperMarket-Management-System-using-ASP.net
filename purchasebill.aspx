<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchasebill.aspx.cs" Inherits="supermarket.purchasebill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1396px;
            height: 1954px;
            margin-left: 600px;
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
        .auto-style36 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 18px;
            top: 244px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style37 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 18px;
            top: 324px;
            text-align: center;
            position: absolute;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style39 {
            width: 616px;
            height: 78px;
            position: absolute;
            top: 856px;
            left: 257px;
            z-index: 1;
        }
        .auto-style40 {
            position: absolute;
            top: 321px;
            left: 528px;
            z-index: 1;
            width: 101px;
            height: 39px;
        }
        .auto-style41 {
            position: absolute;
            top: 363px;
            left: 332px;
            z-index: 1;
            width: 71px;
            margin-top: 0px;
        }
        .auto-style42 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 233px;
            left: 975px;
            z-index: 1;
        }
        .auto-style46 {
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
            position: absolute;
            top: 139px;
            left: 639px;
            z-index: 1;
        }
        .auto-style47 {
            width: 1233px;
            height: 720px;
            position: absolute;
            top: 69px;
            left: 19px;
            z-index: 1;
            margin-right: 0px;
            margin-top: 5px;
        }
        .auto-style51 {
            font-style: italic;
            font-weight: bolder;
            font-size: 35px;
            color: #ff0000;
            text-align: center;
            left: 593px;
            top: 19px;
            position: absolute;
            z-index: 1;
            width: 312px;
            height: 70px;
        }
        .auto-style85 {
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
            position: absolute;
            top: 675px;
            left: 182px;
            z-index: 1;
        }
        .auto-style86 {
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
            position: absolute;
            top: 676px;
            left: 305px;
            z-index: 1;
            right: 1102px;
        }
        .auto-style87 {
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
            position: absolute;
            top: 674px;
            left: 415px;
            z-index: 1;
            right: 984px;
        }
        .auto-style88 {
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
            position: absolute;
            top: 677px;
            left: 528px;
            z-index: 1;
        }
        .auto-style89 {
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
            position: absolute;
            top: 679px;
            left: 642px;
            z-index: 1;
            margin-bottom: 7px;
        }
        .auto-style90 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 635px;
            top: 52px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style91 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 12px;
            top: 61px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style92 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 49px;
            left: 328px;
            z-index: 1;
        }
        .auto-style93 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 48px;
            left: 791px;
            z-index: 1;
            right: 278px;
            height: 12px;
        }
        .auto-style94 {
            position: absolute;
            top: 104px;
            left: 794px;
            z-index: 1;
            right: 287px;
        }
        .auto-style95 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 9px;
            top: 139px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style96 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 133px;
            left: 329px;
            z-index: 1;
        }
        .auto-style97 {
            position: absolute;
            top: 184px;
            left: 332px;
            z-index: 1;
        }
        .auto-style98 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 237px;
            left: 327px;
            z-index: 1;
        }
        .auto-style99 {
            position: absolute;
            top: 251px;
            left: 520px;
            z-index: 1;
        }
        .auto-style35 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 789px;
            top: 243px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style100 {
            position: absolute;
            top: 271px;
            left: 1168px;
            z-index: 1;
        }
        .auto-style101 {
            width: 188px;
            height: 210px;
            position: absolute;
            top: 282px;
            left: 968px;
            z-index: 1;
        }
        .auto-style102 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 315px;
            left: 327px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style103 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 17px;
            top: 397px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style104 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 394px;
            left: 329px;
            z-index: 1;
        }
        .auto-style105 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 387px;
            left: 719px;
            z-index: 1;
        }
        .auto-style106 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 565px;
            top: 395px;
            text-align: center;
            position: absolute;
            z-index: 1;
            right: 823px;
        }
        .auto-style107 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 520px;
            left: 326px;
            z-index: 1;
            width: 152px;
        }
        .auto-style108 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 0px;
            top: 525px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style110 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 21px;
            top: 462px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style111 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 454px;
            left: 327px;
            z-index: 1;
            right: 747px;
            height: 18px;
        }
        .auto-style112 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 466px;
            left: 718px;
            z-index: 1;
        }
        .auto-style113 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 565px;
            top: 470px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style114 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 545px;
            top: 529px;
            text-align: center;
            position: absolute;
            z-index: 1;
            height: 58px;
            width: 143px;
        }
        .auto-style115 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 531px;
            left: 721px;
            z-index: 1;
        }
        .auto-style116 {
            position: absolute;
            top: 585px;
            left: 725px;
            z-index: 1;
        }
        .auto-style117 {
            font-weight: bold;
            color: #102231;
            font-size: 25px;
            left: 19px;
            top: 598px;
            text-align: center;
            position: absolute;
            z-index: 1;
        }
        .auto-style118 {
            padding: 10px;
            border-radius: 20px;
            position: absolute;
            top: 592px;
            left: 326px;
            z-index: 1;
            right: 693px;
            height: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Purchase Bill" CssClass="auto-style51" Font-Bold="True" Font-Italic="True" Font-Names="Algerian" Font-Overline="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFFDE3" CssClass="auto-style47" BorderColor="Black" BorderStyle="Groove">
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style91" Text="Purchase Bill No"></asp:Label>
                <asp:TextBox ID="txtpbno" runat="server" CssClass="auto-style92"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style90" Text="Bill Number"></asp:Label>
                <asp:TextBox ID="txtbno" runat="server" CssClass="auto-style93" Placeholder="Enter Bill No"></asp:TextBox>
                <asp:Label ID="Label12" runat="server" CssClass="auto-style95" Text="Purchase Order No"></asp:Label>
                <br />
                <br />
                <br />
                <asp:RequiredFieldValidator ID="Reqbno" runat="server" ControlToValidate="txtbno" CssClass="auto-style94" ErrorMessage="Enter Bill Number" ForeColor="#FF3300" ValidationGroup="verify"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtpono" runat="server" CssClass="auto-style96" Placeholder="Enter Purchase OrderNo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpono" CssClass="auto-style97" ErrorMessage="Purchase Order Number can not be Empty" ForeColor="#FF3300" ValidationGroup="verify"></asp:RequiredFieldValidator>
                <asp:Button ID="btnverify" runat="server" CssClass="auto-style46" Height="32px" OnClick="btnverify_Click" Text="verify" ValidationGroup="verify" Width="90px" />
                <br />
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" CssClass="auto-style36" Text=" Purchase Order Date"></asp:Label>
                <asp:RequiredFieldValidator ID="Reqpdate" runat="server" ControlToValidate="txtbdate" CssClass="auto-style99" ErrorMessage="Select Purchase Order Date" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtbdate" runat="server" CssClass="auto-style98"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style35" Text="Received Date"></asp:Label>
                <asp:TextBox ID="txtrdate" runat="server" CssClass="auto-style42"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrdate" CssClass="auto-style100" ErrorMessage="Select Received Date" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <asp:Button ID="Button3" runat="server" CausesValidation="False" CssClass="auto-style40" OnClick="Button3_Click" Text="view" />
                <asp:Label ID="Label7" runat="server" CssClass="auto-style37" Text="Item Name"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style102" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="168px">
                </asp:DropDownList>
                <br />
                <br />
                <br />
                &nbsp;
                <br />
                <asp:Label ID="Label15" runat="server" CssClass="auto-style103" Text="Category"></asp:Label>
                <asp:Label ID="Label13" runat="server" CssClass="auto-style41" Text="Label"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style104" Height="21px" Width="117px">
                    <asp:ListItem Value="1">Groceries</asp:ListItem>
                    <asp:ListItem Value="2">Snacks</asp:ListItem>
                    <asp:ListItem Value="3">Essentials</asp:ListItem>
                    <asp:ListItem Value="4">Beverages</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:TextBox ID="txtreorder" runat="server" CssClass="auto-style105"></asp:TextBox>
                <br />
                <asp:Label ID="Label16" runat="server" CssClass="auto-style106" Text="Reorder"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" CssClass="auto-style108" Text="Quantity Ordered"></asp:Label>
                <asp:TextBox ID="txtorder" runat="server" CssClass="auto-style107"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="auto-style117" Text="Total"></asp:Label>
                <asp:TextBox ID="txttotal" runat="server" CssClass="auto-style118"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label17" runat="server" CssClass="auto-style110" Text="Item Id"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrec" CssClass="auto-style116" ErrorMessage="Quantity Received cannot be Empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="btnnew" runat="server" CausesValidation="False" CssClass="auto-style87" Height="38px" OnClick="btnnew_Click" Text="New Bill" Width="85px" />
                <asp:TextBox ID="txtiid" runat="server" CssClass="auto-style111"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style113" Text="Price"></asp:Label>
                <asp:TextBox ID="txtprice" runat="server" CssClass="auto-style112"></asp:TextBox>
                <br />
                <asp:Button ID="btngen" runat="server" CssClass="auto-style85" Height="40px" OnClick="btngen_Click" Text="Save" Width="83px" />
                <br />
                <asp:Label ID="Label11" runat="server" CssClass="auto-style114" Text="Quantity Received"></asp:Label>
                <asp:TextBox ID="txtrec" runat="server" AutoPostBack="True" CssClass="auto-style115" OnTextChanged="txtrec_TextChanged" Placeholder="Enter No of received Item"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <asp:Calendar ID="Calendar2" runat="server" CssClass="auto-style101" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                <br />
                <asp:Button ID="btnreset" runat="server" CssClass="auto-style86" Height="38px" OnClick="btnreset_Click" Text="Reset" Width="77px" CausesValidation="False" />
                <asp:Button ID="btncancel" runat="server" CausesValidation="False" CssClass="auto-style88" Height="37px" OnClick="btncancel_Click" Text="Back" Width="87px" />
                <asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="auto-style89" Height="39px" OnClick="Button2_Click" Text="Show" Width="97px" />
                <br />
            </asp:Panel>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style39" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
