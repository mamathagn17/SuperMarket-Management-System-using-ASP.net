using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace supermarket
{
    public partial class user : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Linksalesdet_Click(object sender, EventArgs e)
        {
            Response.Redirect("sales.aspx");
        }

        protected void Linkview_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewsalesbill.aspx");
        }

        protected void Linkaddcust_Click(object sender, EventArgs e)
        {
            Response.Redirect("customer.aspx");
        }

        protected void linkview1_Click(object sender, EventArgs e)
        {
            Response.Redirect("updatecustomer.aspx");
        }

        protected void Linklog_Click(object sender, EventArgs e)
        {
            Response.Redirect("login1.aspx");
        }
    }
}