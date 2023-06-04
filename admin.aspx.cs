using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Linkview_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewsupplier.aspx");
        }

        protected void Linkaddsup_Click(object sender, EventArgs e)
        {
            Response.Redirect("supplier1.aspx");
        }

        protected void Linkadditm_Click(object sender, EventArgs e)
        {
            Response.Redirect("inventory.aspx");
        }

        protected void linkupitm_Click(object sender, EventArgs e)
        {
            Response.Redirect("upadteitem.aspx");
        }

        protected void vieworder_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewPurchaseOrder.aspx");
        }

        protected void purchaseorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchaseorder.aspx");
        }

        protected void purchasebill_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchasebill.aspx");
        }

        protected void billdetail_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbill.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login1.aspx");
        }

        protected void Linkreorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("reorder.aspx");
        }
    }
}