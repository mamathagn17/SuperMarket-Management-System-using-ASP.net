<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upadteitem.aspx.cs" Inherits="supermarket.upadteitem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


.txtid {
    padding: 10px;
    border-radius: 20px;
}
.label{
    font-style: italic;
    font-weight: bolder;
    font-size: 25px;
    text-align: center;
    left: 55%;
    top: 10%;

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
    margin-bottom: 0px;
}

        .auto-style1 {
            font-style: italic;
            font-weight: bolder;
            font-size: 25px;
            text-align: center;
            left: 55%;
            top: 10%;
            text-decoration: underline;
        }
       
}

 </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="ENTER ITEM NAME TO SEARCH" CssClass="auto-style1" ForeColor="#CC3300"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtsearch" runat="server" CssClass="txtid" AutoCompleteType="Search"></asp:TextBox>
                    <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SEARCH" runat="server" CssClass="button" Height="37px" OnClick="SEARCH_Click" Text="Search" Width="77px" />
                    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="itemid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Height="288px" style="margin-right: 4px; " Width="1251px" ForeColor="#333333" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="itemid" HeaderText="Item Id" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="iname" HeaderText="Item Name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="iprice" HeaderText="Item Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="iqty" HeaderText="Item Quantity" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="reorder" HeaderText="Reorder level">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" BorderStyle="Groove" Font-Underline="False" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Back" Height="37px" Width="91px" />
    
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
        </div>
    </form>
</body>
</html>
