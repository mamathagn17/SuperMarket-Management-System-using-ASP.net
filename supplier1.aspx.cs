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
    public partial class supplier1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        string sid = "s";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            txtsid.Enabled = false;
            if (!IsPostBack)
            {
                GenerateAutoSID();
            }

        }
        private void GenerateAutoSID()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from supplierdetails", cnn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                txtsid.Text = sid + i.ToString();
            }
        }
        void clear()
        {
            txtsname.Text = "";
            txtsphno.Text = "";
            txtsaddress.Text = "";
            txtsemail.Text = "";
            DropDownList1.ClearSelection();
        }


        protected void btnsave_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("insert into supplierdetails values('" + txtsid.Text + "','" + txtsname.Text + "','" + txtsphno.Text + "','" + txtsaddress.Text + "','" + txtsemail.Text + "','" + DropDownList1.SelectedItem.Text + "')", cnn);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Supplier details Stored Successfully.....')</script>");
                    //GVbind();
                }
                clear();
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtsname.Text = "";
            txtsphno.Text = "";
            txtsaddress.Text = "";
            txtsemail.Text = "";
            DropDownList1.ClearSelection();
        }
        
       

        protected void btnnew_Click(object sender, EventArgs e)
        {
            txtsname.Text = "";
            txtsphno.Text = "";
            txtsaddress.Text = "";
            txtsemail.Text = "";
            DropDownList1.ClearSelection();
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
                SqlCommand cmd = new SqlCommand("select * from supplierdetails", cnn);

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