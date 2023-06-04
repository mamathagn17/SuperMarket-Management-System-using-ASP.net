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
    public partial class purchaseorder : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        string po = "PO";
        DataSet ds = new DataSet();
        DataSet dt = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                txtpno.Enabled = false;
                txtsid.Enabled = false;
                txtiid.Enabled = false;
                txtdate.Enabled = false;
                txtnp.Visible = false;
                DateTime t = DateTime.Now;
                txtdate.Text = "" + t;
                if (!IsPostBack)
                {
                    GenerateAutoSID();
                }
                SqlCommand cmd = new SqlCommand();
                string st = "Active";
                cmd.CommandText = "select sname from supplierdetails where status='"+st+"'";
                cmd.Connection = cnn;
                adp.SelectCommand = cmd;
                adp.Fill(ds, "s");
                if (DropDownList1.Items.Count == 0)
                {
                    DropDownList1.Items.Add("select");
                    {
                        if (ds.Tables["s"].Rows.Count > 0)
                        {
                            for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                            {
                                string sid =Convert.ToString(ds.Tables[0].Rows[j]["sname"]);

                                DropDownList1.Items.Add(sid.ToString());
                            }
                        }
                    }
                }
                cmd.CommandText = "select iname from stockdetail";
                adp.SelectCommand = cmd;
                adp.Fill(dt, "i");
                if (DropDownList2.Items.Count == 0)
                {
                    DropDownList2.Items.Add("select");
                    {
                        if (dt.Tables["i"].Rows.Count > 0)
                        {
                            for (int j = 0; j < dt.Tables[0].Rows.Count; j++)
                            {
                                string sid =
                               Convert.ToString(dt.Tables[0].Rows[j]["iname"]);

                                DropDownList2.Items.Add(sid.ToString());
                            }
                        }
                    }
                }
            }

        }
        private void GenerateAutoSID()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from purchaseorder", cnn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                txtpno.Text = po + i.ToString();
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            
            txtqty.Text = "";
            txtdue.Text = "";
            txtsid.Text = "";
            txtiid.Text = "";
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();


        }

        protected void btnnew_Click(object sender, EventArgs e)
        {
           
            txtqty.Text = "";
           // txtdue.Text = "";
            txtsid.Text = "";
            txtiid.Text = "";
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
        
            if (IsPostBack)
            {
                GenerateAutoSID();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt1 = Calendar1.SelectedDate;
            DateTime dt2 = DateTime.Today;
            if (dt1 < dt2)
            {
                Response.Write("<script>alert('Due Date Should be greater Than PurchaseOrder Date')</script>");
            }
            else
            {
                txtdue.Text = Calendar1.SelectedDate.ToShortDateString();
            }
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmz = new SqlCommand();
                cmz.Connection = cnn;
                cmz.CommandText = "select sid from supplierdetails where sname = '" + DropDownList1.SelectedItem.Text  + "'";
                string c= Convert.ToString(cmz.ExecuteScalar());
                txtsid.Text=c;
            }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmn = new SqlCommand("select itemid from stockdetail where iname = '" + DropDownList2.SelectedItem.ToString()+ "'", cnn);
                String ads= cmn.ExecuteScalar().ToString();
                txtiid.Text = ads;
                txtnp.Text = DropDownList2.SelectedItem.Text;
                
                

            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {

            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmz = new SqlCommand("select count(*) from purchaseorder where pono = '" + txtpno.Text + "'", cnn);
                int cnt = Convert.ToInt16(cmz.ExecuteScalar().ToString());
                if (cnt == 0)
                {
                    SqlCommand cml = new SqlCommand("insert into purchaseorder(pono,pdate,duedate,sid)values(@po_no, @p_date, @due_date,@s_id)", cnn);
                    cml.Parameters.AddWithValue("@po_no", txtpno.Text);
                    cml.Parameters.AddWithValue("@p_date", txtdate.Text);
                    cml.Parameters.AddWithValue("@due_date", txtdue.Text);
                    cml.Parameters.AddWithValue("@s_id", txtsid.Text);
                    cml.ExecuteNonQuery();
                }
                SqlCommand cmq = new SqlCommand("insert into purchaseorder_info(pono,itemid,iname,qty)values(@po_no,@item_id,@i_name,@qty)", cnn);
                cmq.Parameters.AddWithValue("@po_no", txtpno.Text);
                cmq.Parameters.AddWithValue("@item_id", txtiid.Text);
                cmq.Parameters.AddWithValue("@i_name",txtnp.Text);
                cmq.Parameters.AddWithValue("@qty", txtqty.Text);
                cmq.ExecuteNonQuery();
                Response.Write("<script>alert('Order Processed.....')</script>");
                txtqty.Text = "";
                txtdue.Text = "";
                txtsid.Text = "";
                txtiid.Text = "";
                txtnp.Text = "";
                DropDownList1.ClearSelection();
                DropDownList2.ClearSelection();

            }

        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select * from purchaseorder_info where pono = '" + txtpno.Text + "'", cnn);
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    Response.Write("<script>alert('No Such Records')</script>");

                }


            }
        }

        
        private void GenerateAutoiID()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from stockdetail", cnn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                txtiid.Text = "Itm" + i.ToString();
            }
        }

        protected void btnnp_Click1(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                txtnp.Visible = true;
                if (IsPostBack)
                {
                    GenerateAutoiID();
                }



            }
        }
    }
}

