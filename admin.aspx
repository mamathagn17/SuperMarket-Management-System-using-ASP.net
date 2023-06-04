<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="supermarket.admin" %>

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
                <li><asp:LinkButton ID="linksupplier" runat="server">Supplier<span><img src="images/dropdown.png" /></span></asp:LinkButton>
                    <ul>
                        <li> <asp:LinkButton ID="Linkaddsup" runat="server" Text="Add Supplier" CssClass="sublabel" OnClick="Linkaddsup_Click" ></asp:LinkButton></li>
                        <li> <asp:LinkButton ID="Linkview" runat="server" Text="Update Supplier" OnClick="Linkview_Click" CssClass="sublabel"></asp:LinkButton></li>
                    </ul>
                </li>
                <li><asp:LinkButton ID="linkinventory" runat="server" >Inventory<span><img src="images/dropdown.png" /></span></asp:LinkButton>
                    <ul>
                        <li> <asp:LinkButton ID="Linkadditm" runat="server" Text="Add Item" CssClass="sublabel" OnClick="Linkadditm_Click"  >Add Item</asp:LinkButton></li>
                        <li> <asp:LinkButton ID="linkupitm" runat="server" Text="Update Item"  CssClass="sublabel" OnClick="linkupitm_Click">Update Item</asp:LinkButton></li>
                    </ul>
                </li>
                <li>
                    <asp:LinkButton ID="linkpurchase" runat="server">Purchase<span><img src="images/dropdown.png" /></span></asp:LinkButton>
                    <ul>
                        <li> <asp:LinkButton ID="Linkreorder" runat="server" Text="ReOrder" OnClick="Linkreorder_Click" >Reorder Level</asp:LinkButton></li>
                        <li> <asp:LinkButton ID="purchaseorder" runat="server" Text="Purchase Order" OnClick="purchaseorder_Click">Purchase Order</asp:LinkButton></li>
                        <li> <asp:LinkButton ID="vieworder" runat="server" Text="View Order" OnClick="vieworder_Click">View Order</asp:LinkButton></li>
                    </ul>  
                </li>
                    <li> <asp:LinkButton ID="LinkBill" runat="server">Bill<span><img src="images/dropdown.png" /></span></asp:LinkButton>
                        <ul>
                            <li><asp:LinkButton ID="purchasebill" runat="server" Text="Purchase Bill" OnClick="purchasebill_Click">Purchase Bill</asp:LinkButton></li>
                            <li> <asp:LinkButton ID="billdetail" runat="server" Text="View Bill" OnClick="billdetail_Click"></asp:LinkButton></li>
                        </ul>
                    </li>
                <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Logout</asp:LinkButton></li>

             </ul> 
            </div>
    </form>
</body>
</html>
