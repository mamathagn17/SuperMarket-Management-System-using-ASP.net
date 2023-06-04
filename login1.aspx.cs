using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Collections;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

namespace supermarket
{
    public partial class login1 : System.Web.UI.Page
    {
       



        protected void Page_Load(object sender, EventArgs e)
        {
            txtpass.TextMode = TextBoxMode.Password;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {

                txtpass.TextMode = TextBoxMode.SingleLine;
                this.txtpass.Text = txtpass.Text;

            }
           else
            {
                txtpass.TextMode = TextBoxMode.Password;
                this.txtpass.Text = txtpass.Text;
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source=LAPTOP-CS4PS8GH\\SQLEXPRESS ; initial catalog =group18 ; Integrated security = true");
            SqlDataAdapter da = new SqlDataAdapter("select * from logindetails where username='" + txtuser.Text + "' and password='" + txtpass.Text + "' and usertype='" + DropDownList1.SelectedItem.ToString() + "'", cnn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
               
                Response.Write("<script>alert('You are logined as"  + dt.Rows[0][3]+"')</script>");
                if(DropDownList1.SelectedIndex==0)
                {
                    Server.Transfer("admin.aspx");

                }else if(DropDownList1.SelectedIndex==1)
                {
                    Server.Transfer("user.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid login Credentials')</script>");
                }
            }

            else
            {
                Response.Write("<script>alert('Invalid " + "Credentials')</script>");
            }
        }

        protected void lnkforget_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgetpass.aspx");
        }
    }
}