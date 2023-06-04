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
    public partial class viewsupplier : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GVbind();
            }
        }

        protected void GVbind()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select * from supplierdetails ", cnn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GVbind();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string phone = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string Email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string status = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;

            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("update supplierdetails  set sname='" + name + "',sphno='" + phone + "',saddress='" + address + "',semail='" + Email + "',status='"+status+"'where sid='" + id + "'", cnn);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Supplier details Updated Successfully.....')</script>");
                    GridView1.EditIndex = -1;
                    GVbind();
                }

            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GVbind();
        }

       
        protected void SEARCH_Click(object sender, EventArgs e)
        {

            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();

                SqlCommand cmt = new SqlCommand();
                string query = "select * from supplierdetails where sname like '%'+@sname+'%'";
                cmt.CommandText = query;
                cmt.Connection = cnn;
                cmt.Parameters.AddWithValue("sname", txtsearch.Text);

                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmt);
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    Response.Write("<script>alert('No Such records Found')</script>");
                }
                txtsearch.Text = "";
                // GVbind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }

        
    }
}