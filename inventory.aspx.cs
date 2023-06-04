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
    public partial class inventory : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        string iid = "Itm";
        protected void Page_Load(object sender, EventArgs e)
        {
            txtiid.Enabled = false;
           
            txtiid.Enabled = false;
            if (!IsPostBack)
            {
                GenerateAutoSID();
            }
        }
        public void GenerateAutoSID()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from stockdetail", cnn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                txtiid.Text = iid+i.ToString();
                
            }
        }

        void clear()
        {
            txtiname.Text = "";
            txtiprice.Text = "";
            txtiqty.Text = "";
            txtreorder.Text = "";
            DropDownList1.ClearSelection();
          //  DropDownList1.ClearSelection();
            
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("insert into stockdetail values('" + txtiid.Text + "','" + txtiname.Text + "','"+ DropDownList1.SelectedItem.Text+"',  '" + txtiprice.Text + "','" + txtiqty.Text + "','"+txtreorder.Text+"')", cnn);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                     Response.Write("<script>alert('stock details Stored Successfully.....')</script>");
                    //MessageBox.Show("stock details Stored Successfully.....");
                    //GVbind();
                }
                clear();
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtiname.Text = "";
            txtiprice.Text = "";
            txtiqty.Text = "";
            txtreorder.Text = "";
            //DropDownList1.ClearSelection();
        }
      
        protected void btnadd_Click(object sender, EventArgs e)
        {
            txtiname.Text = "";
            txtiprice.Text = "";
            txtiqty.Text = "";
            txtreorder.Text = "";
           // DropDownList1.ClearSelection();
            if (IsPostBack)
            {
                GenerateAutoSID();
            }

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
        protected void GVbind()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select * from stockdetail ", cnn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }

        }

        protected void btndisplay_Click(object sender, EventArgs e)
        {
            GVbind();
        }
    }
}