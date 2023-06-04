using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace supermarket
{
    public partial class viewPurchaseOrder : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
                GVbind();
            
        }
        protected void GVbind()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select * from purchaseorder_info, purchaseorder where purchaseorder_info.pono = purchaseorder.pono", cnn);
              
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmt = new SqlCommand();
                string query = "select * from purchaseorder_info,purchaseorder where purchaseorder_info.pono = purchaseorder.pono and purchaseorder_info.pono like'" + txtsearch.Text + "%' ";
                cmt.CommandText = query;
                cmt.Connection = cnn;
                cmt.Parameters.AddWithValue("pono", txtsearch.Text);

                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmt);
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    Response.Write("<script>alert('No Such records Found')</script>");
                    GVbind();
                }
                txtsearch.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}