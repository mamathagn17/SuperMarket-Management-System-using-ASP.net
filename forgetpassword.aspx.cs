using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace supermarket
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        connect c;
        DataSet ds = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblnew.Visible = false;
            lblconfirm.Visible = false;
            txtnew.Visible = false;
            txtconfirm.Visible = false;
            btnsave.Visible = false;
            Reqnew.Visible = false;
            Reqconfirm.Visible = false;
            Regconfirm.Visible = false;
            Regnew.Visible = false;

        }

        protected void btnverify_Click(object sender, EventArgs e)
        {
            c = new connect();
            string usr, mail;
            usr = txtuser.Text;
            mail = txtemail.Text;
            c.cmd.CommandText = "select * from logindetails where username = '" + txtuser.Text + "'and email = '" + txtemail.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "log");
            if (ds.Tables["log"].Rows.Count > 0)
            {
                lblnew.Visible = true;
                lblconfirm.Visible = true;
                txtnew.Visible = true;
                txtconfirm.Visible = true;
                btnsave.Visible = true;
                Reqnew.Visible = true;
                Reqconfirm.Visible = true;
                Regconfirm.Visible = true;
                Regnew.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials')</script>");
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                c = new connect();
                string usr, mail, newpass, confirmpass;
                usr = txtuser.Text;
                mail = txtemail.Text;
                newpass = txtnew.Text;
                confirmpass = txtconfirm.Text;
                if (newpass == confirmpass)
                {
                    c.cmd.CommandText = "select * from logindetails where username = '" + usr + "'and email = '" + mail + "'";
                    adp.SelectCommand = c.cmd;
                    adp.Fill(ds, "log");
                    if (ds.Tables["log"].Rows.Count > 0)
                    {

                        c.cmd.CommandText = "update logindetails set password = '" + newpass + "'where email= '" + mail + "'";
                        Response.Write("<script language ='javascript'>alert('Password Changed successfully....');</script>");
                        c.cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        Response.Write("<script language ='javascript'>alert('Invalid Input');</script>");
                    }
                }
                else
                {
                    Response.Write("<script language ='javascript'>alert('NewPassword must match Confirm Password');</script>");

                }
            }
            catch (Exception)
            {

            }
            finally
            {
                c.cnn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login1.aspx");
        }
    }
}