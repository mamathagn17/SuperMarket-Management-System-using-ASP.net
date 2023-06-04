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
    public partial class viewbill : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = "select * from purchasebill_info, purchasebill where purchasebill_info.pbno = purchasebill.pbno";
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
                string query = "select* from purchasebill_info,purchasebill where purchasebill_info.pbno = purchasebill.pbno and purchasebill_info.pbno like'" + txtsearch.Text + "%' ";
                cmt.CommandText = query;
                cmt.Connection = cnn;
                cmt.Parameters.AddWithValue("pbno", txtsearch.Text);

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

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}
