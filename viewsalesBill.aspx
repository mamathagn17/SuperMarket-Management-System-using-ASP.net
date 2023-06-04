<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewsalesBill.aspx.cs" Inherits="supermarket.viewsalesBill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server" Text="Enter Sales Bill  No To Search" CssClass="lbliid"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtsearch" runat="server" CssClass="txtid"></asp:TextBox>
            </p>
        <p>
            <asp:Button ID="btnsearch" runat="server"  Text="Search" CssClass="button" Height="38px" Width="93px" OnClick="btnsearch_Click" />
            </p>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        <div>
            <asp:Button ID="Button1" runat="server" CssClass="button" Height="39px"  Text="Back" Width="97px"  />
        </div>
    </form>
</body>
</html>
