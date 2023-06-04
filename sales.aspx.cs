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
    public partial class sales : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        DataSet dt = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter();
        string sb = "SB";
        string cno = "CUS";
        DataTable ds;
        Int64 totalp;




        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                Panel3.Visible = false;
                txtsbno.Enabled = false;
                txtcid.Enabled = false;
                //HyperLink1.Visible = false;
                txtiid.Enabled = false;
                Label15.Visible = false;
                txtprice.Enabled = false;
                DateTime date = DateTime.Now;
                txtdate.Text = "" + date;
                if (!IsPostBack)
                {
                    GenerateAutoSID();
                    TextBox1.Text = "1";

                }
                if(!IsPostBack)
                {
                    ds = new DataTable();
                    ds.Columns.Add("sno");
                    ds.Columns.Add("iname");
                    ds.Columns.Add("iprice");
                    ds.Columns.Add("qty");
                    ds.Columns.Add("amount");
                    Session["data"] = ds;

                }
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select iname from stockdetail";
                cmd.Connection = cnn;
                adp.SelectCommand = cmd;
                adp.Fill(dt, "i");
                if (DropDownList1.Items.Count == 0)
                {
                    DropDownList1.Items.Add("select");
                    {
                        if (dt.Tables["i"].Rows.Count > 0)
                        {
                            for (int j = 0; j <
                           dt.Tables[0].Rows.Count; j++)
                            {
                                string sid = Convert.ToString(dt.Tables[0].Rows[j]["iname"]);
                                DropDownList1.Items.Add(sid.ToString());

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
                SqlCommand cmd = new SqlCommand("select count(*) from salesbill", cnn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                txtsbno.Text = sb + i.ToString();
                txtcid.Text = cno + i.ToString();
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
           
            ds = (DataTable)Session["data"];
            DataRow dr;
            dr = ds.NewRow();
            if (ds.Rows.Count > 0)
            {
                dr["sno"] = TextBox1.Text;
                dr["iname"] = DropDownList1.SelectedItem.Text;
                dr["iprice"] = txtprice.Text;
                dr["qty"] = txtqty.Text;
                totalp = Convert.ToInt64(txtqty.Text) * Convert.ToInt64(txtprice.Text);
                dr["amount"] = totalp.ToString();
            }
            else
            {
                dr["sno"] = TextBox1.Text;
                dr["iname"] = DropDownList1.SelectedItem.Text;
                dr["iprice"] = txtprice.Text;
                dr["qty"] = txtqty.Text;
                totalp = Convert.ToInt64(txtqty.Text) * Convert.ToInt64(txtprice.Text);
                dr["amount"] = totalp.ToString();
            }
            ds.Rows.Add(dr);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Session["buyitem"] = ds;
            TextBox1.Text = (ds.Rows.Count + 1).ToString();
           /* DropDownList1.ClearSelection();
            txtiid.Text = "";
            txtqty.Text = "";
            txttotal.Text = "";
            txtprice.Text = "";*/
            grandtotal();

        }
        private void grandtotal()
        {
            Int32 grandtotal = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                grandtotal = grandtotal + Convert.ToInt32(row.Cells[4].Text);

            }
            GridView1.FooterRow.Cells[3].Text = "Grand Total";
            GridView1.FooterRow.Cells[4].Text = grandtotal.ToString();


        }
        void clear()
        {
            txtiid.Text = "";
            txtqty.Text = "";
            DropDownList1.ClearSelection();
            txtcname.Text = "";
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                string iname, ino;
                iname = DropDownList1.SelectedItem.ToString();
                if (iname == "select")
                {
                    Label15.Visible = true;
                    Label15.Text = "select item name first";
                }
                else
                {
                    SqlCommand cmj = new SqlCommand("select itemid from stockdetail where iname = '" + iname + "'", cnn);
                    ino = cmj.ExecuteScalar().ToString();
                    txtiid.Text = ino;
                    SqlCommand cmo = new SqlCommand("select iprice from stockdetail where iname = '" + iname + "'", cnn);
                    double price = Convert.ToDouble(cmo.ExecuteScalar().ToString());
                    txtprice.Text = price.ToString();
                }
                txtqty.Text = "";
                txttotal.Text = "";
            }
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("user.aspx");
        }

        protected void btnnew_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                int i;
                SqlCommand cmd = new SqlCommand("select count(*) from salesbill", cnn);
                

                i = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                i++;
                txtsbno.Text = sb + i.ToString();
                txtcid.Text = cno + i.ToString();
                clear();
                GridView1.DataSource = null;
                txtcid.Text = "";
                txtcname.Text = "";
                txttotal.Text = "";
                txtqty.Text = "";
                txtprice.Text = "";
                TextBox1.Text = "";
                DropDownList1.ClearSelection();
                txtpno.Text = "";
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                    cnn.Open();
               
                    int  qty;
                    qty = Convert.ToInt32(txtqty.Text);
                    int tamt;
                   Int32 amt = Convert.ToInt32(txtprice.Text);
                    tamt = amt * qty;
                    Session["total"] = Convert.ToInt32(Session["total"]) + tamt;
                    SqlCommand cmo = new SqlCommand("select count(*) from salesbill where sbid = '" + txtsbno.Text + "'", cnn);
                    int cc =Convert.ToInt32(cmo.ExecuteScalar().ToString());
                    if (cc == 0)
                    {
                        SqlCommand cms = new SqlCommand("insert into salesbill(sbid, cust_id, sdbate, gtotal)values(@sb_id, @c_id, @sb_date, @g_total)", cnn);
                        cms.Parameters.AddWithValue("@sb_id", txtsbno.Text);
                        cms.Parameters.AddWithValue("@c_id", txtcid.Text);
                        cms.Parameters.AddWithValue("@sb_date", txtdate.Text);
                        cms.Parameters.AddWithValue("@g_total", Session["total"]);
                        cms.ExecuteNonQuery();
                        SqlCommand cmv = new SqlCommand("update salesbill set gtotal = '" + Session["total"] + "' where sbid = '" + txtsbno.Text + "'", cnn);
                        cmv.ExecuteNonQuery();

                        SqlCommand cmw = new SqlCommand("insert into salesbill_info values(@sbid,@sno, @itemid, @iname,@iprice, @qty, @amount)", cnn);
                        cmw.Parameters.AddWithValue("@sbid", txtsbno.Text);
                    cmw.Parameters.AddWithValue("@sno", TextBox1.Text);
                    cmw.Parameters.AddWithValue("@itemid", txtiid.Text);
                        cmw.Parameters.AddWithValue("@iname", DropDownList1.SelectedItem.ToString());
                        cmw.Parameters.AddWithValue("@iprice", Convert.ToInt64(txtprice.Text));
                        cmw.Parameters.AddWithValue("@qty", qty);
                        cmw.Parameters.AddWithValue("@amount", tamt);
                        cmw.ExecuteNonQuery();
                       // Response.Write("<script>alert('Bill Saved.')</script>");
                       
                    }
                    else
                    {
                        SqlCommand cmw = new SqlCommand("insert into salesbill_info values(@sbid,@sno, @itemid, @iname,@iprice, @qty, @amount)", cnn);
                        cmw.Parameters.AddWithValue("@sbid", txtsbno.Text);
                        cmw.Parameters.AddWithValue("@sno", TextBox1.Text);
                         cmw.Parameters.AddWithValue("@itemid", txtiid.Text);
                        cmw.Parameters.AddWithValue("@iname", DropDownList1.SelectedItem.ToString());
                    cmw.Parameters.AddWithValue("@iprice", Convert.ToInt64(txtprice.Text));
                    cmw.Parameters.AddWithValue("@qty", qty);
                        cmw.Parameters.AddWithValue("@amount", tamt);
                        cmw.ExecuteNonQuery();
                        SqlCommand cmx = new SqlCommand("update salesbill set gtotal = '" + Session["total"] + "' where sbid = '" + txtsbno.Text + "'", cnn);
                        cmx.ExecuteNonQuery();
                    //Response.Write("<script>alert('Bill Saved1.')</script>");


                }
                /*DropDownList1.ClearSelection();
                txtiid.Text = "";
                txtqty.Text = "";
                txttotal.Text= "";
                txtprice.Text = "";*/




                    }
            }

        protected void txtqty_TextChanged(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                int quanti, qty;
                qty = Convert.ToInt32(txtqty.Text);
                SqlCommand cmp = new SqlCommand("select iqty from stockdetail where itemid = '" + txtiid.Text + "'", cnn);
                int countsi =Convert.ToInt32(cmp.ExecuteScalar().ToString());
                if (qty>countsi)
                {
                    Response.Write("<script>alert('YOU have less stock in Hand')</script>");
                    txttotal.Text = "";
                    txtqty.Text = "";
                }
                else
                {


                    decimal f = (Convert.ToDecimal(txtprice.Text) * Convert.ToDecimal(txtqty.Text));
                    txttotal.Text = f.ToString();
                    quanti = countsi - qty;
                    SqlCommand cma = new SqlCommand("update stockdetail set iqty = '" + quanti + "' where itemid = '" + txtiid.Text + "'", cnn);
                    cma.ExecuteNonQuery();
                }
            }
        }

        protected void btnprint_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            lblsbno.Text = txtsbno.Text;
            lblsdate.Text = txtdate.Text;
            lblcid.Text = txtcid.Text;
            lblcname.Text = txtcname.Text;
            lblph.Text = txtpno.Text;
            showgrid();
        }
        private void  showgrid()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("itemid");
                dt.Columns.Add("iname");
                dt.Columns.Add("iprice");
                dt.Columns.Add("qty");
                dt.Columns.Add("amount");
                string myquery = "select * from salesbill_info where sbid='" + txtsbno.Text + "'";

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = myquery;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
               
                
                da.Fill(ds);
                int totalrows = ds.Tables[0].Rows.Count;
                int i = 0;
                int grandt = 0;
                while (i < totalrows)
                {
                    dr = dt.NewRow();
                    dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                    dr["itemid"] = ds.Tables[0].Rows[i]["itemid"].ToString();
                    dr["iname"] = ds.Tables[0].Rows[i]["iname"].ToString();
                    dr["iprice"] = ds.Tables[0].Rows[i]["iprice"].ToString();
                    dr["qty"] = ds.Tables[0].Rows[i]["qty"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[i]["iprice"].ToString());
                    int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["qty"].ToString());
                    int totalprice = price * quantity;
                    dr["amount"] = totalprice;
                    grandt = grandt + totalprice;
                    dt.Rows.Add(dr);
                    i = i + 1;

                }
                GridView2.DataSource = dt;
                GridView2.DataBind();
                lblgt.Text = grandt.ToString();
              
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("offer.aspx");
        }
    }
}





