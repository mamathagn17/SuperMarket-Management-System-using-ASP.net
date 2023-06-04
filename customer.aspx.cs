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
    public partial class customer : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        string sid = "c";

        protected void Page_Load(object sender, EventArgs e)
        {
            txtcid.Enabled = false;
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
                SqlCommand cmd = new SqlCommand("select count(*) from customer", cnn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                txtcid.Text = sid + i.ToString();
            }
        }
        void clear()
        {
            txtcname.Text = "";
            txtcph.Text = "";
            txtcadd.Text = "";
           
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("insert into customer values('" + txtcid.Text + "','" + txtcname.Text + "','" + txtcph.Text + "','" + txtcadd.Text + "')", cnn);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                 
                    Response.Write("<script>alert('Customer Details Stored successfully')</script>");
                    
                }
                clear();
            }

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void btnnew_Click(object sender, EventArgs e)
        {
            txtcname.Text = "";
            txtcph.Text = "";
            txtcadd.Text = "";
            if (IsPostBack)
            {
                GenerateAutoSID();
            }

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("user.aspx");
        }
        protected void GVbind()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select * from customer", cnn);

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