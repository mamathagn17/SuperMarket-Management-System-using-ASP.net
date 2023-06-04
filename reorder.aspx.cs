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
    public partial class reorder : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select * from stockdetail where stockdetail.iqty=stockdetail.reorder", cnn);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchaseorder.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}