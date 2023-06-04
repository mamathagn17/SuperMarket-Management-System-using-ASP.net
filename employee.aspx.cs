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
    public partial class employee : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        string eid = "Emp";
        protected void Page_Load(object sender, EventArgs e)
        {
            txteid.Enabled = false;
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
                SqlCommand cmd = new SqlCommand("select count(*) from employee", cnn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                txteid.Text = eid + i.ToString();

            }
        }
        void clear()
        {
            txteadd.Text = "";
            txtename.Text = "";
            txtda.Text = "";
            txthra.Text = "";
            txtgross.Text = "";
            txtpf.Text = "";
            txtphno.Text = "";
            txtbasic.Text = "";
            txtdob.Text = "";
            txtdoj.Text = "";
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                String s = "Active";
                SqlCommand cmz = new SqlCommand("select count(*) from employee where empid = '" + txteid.Text + "'");
                int cnt = Convert.ToInt16(cmz.ExecuteScalar().ToString());
                if (cnt == 0)
                {
                    SqlCommand cmd = new SqlCommand("insert into employee values(@empid, @empname, @dob, @phno, @address,@doj,@basic,@da,@hra,@pf,@tax,@status)", cnn);
                    cmd.Parameters.AddWithValue("@empid", txteid.Text);
                    cmd.Parameters.AddWithValue("@empname", txtename.Text);
                    cmd.Parameters.AddWithValue("@dob", txtdob.Text);
                    cmd.Parameters.AddWithValue("@phno",Convert.ToInt32(txtphno.Text));
                    cmd.Parameters.AddWithValue("@address", txteadd.Text);
                    cmd.Parameters.AddWithValue("@doj", txtdoj.Text);
                    cmd.Parameters.AddWithValue("@basic", txtbasic.Text);
                    cmd.Parameters.AddWithValue("@da", txtda.Text);
                    cmd.Parameters.AddWithValue("@hra", txthra.Text);
                    cmd.Parameters.AddWithValue("@pf", txtpf.Text);
                    cmd.Parameters.AddWithValue("@tax", txtgross.Text);
                    cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = s.ToString();
                    Response.Write("<script>alert('Employee Details Saved')</script>");
                    cmz.ExecuteNonQuery();

                }
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdob.Text = Calendar1.SelectedDate.ToString("dd'.'MM'.'yyyy");
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtdoj.Text = Calendar1.SelectedDate.ToString("dd'.'MM'.'yyyy");
        }
    }
}