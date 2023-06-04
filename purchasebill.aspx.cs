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
    public partial class purchasebill : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["group18ConnectionString"].ConnectionString;
        string bno = "PB";
        DataSet dt = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            txtpbno.Enabled = false;
            txtbdate.Enabled = false;
            txtrdate.Enabled = false;
            txtiid.Enabled = false;
            txtorder.Enabled = false;
           // txtprice.Enabled = false;
            Label13.Visible = false;
            txttotal.Enabled = false;
            DropDownList2.Visible = false;
            txtreorder.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;



            if (!IsPostBack)
            {
                GenerateAutoSID();
                //Calendar2.Visible = false;
            }


        }
        private void GenerateAutoSID()
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from purchasebill", cnn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                txtpbno.Text = bno + i.ToString();
            }
        }



        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

            DateTime dt1 = Calendar2.SelectedDate;
          
            DateTime dt2 = Convert.ToDateTime(txtbdate.Text.ToString());
            if (dt1 <dt2)
            {
                Response.Write("<script>alert('Received Date Cannot be greater than PurchaseOrder Date')</script>");
            }
            else
            {
                txtrdate.Text = Calendar2.SelectedDate.ToShortDateString();

            }
          
        }

        protected void btnnew_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                Session["total"] = 0;
                int i;
                SqlCommand cmd = new SqlCommand("select count(*) from  purchasebill", cnn);
                i = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                i++;
                txtpbno.Text = bno + i.ToString();
                txtpono.Text = "";
                txtrdate.Text = "";
                txtbdate.Text = "";
                txtiid.Text = "";
                txtprice.Text = "";
                txtorder.Text = "";
                txtrec.Text = "";
                DropDownList1.ClearSelection();
                GridView1.DataSource = null;
                cmd.CommandText = "select * from purchasebill_info where pbno = '" + txtpbno.Text + "'";
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            }

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }



        protected void btnreset_Click(object sender, EventArgs e)
        {
            // txtbno.Text = "";
            //txtbdate.Text = "";
            txtrdate.Text = "";
            //txtpono.Text = "";
            txtiid.Text = "";
            txtprice.Text = "";
            txtorder.Text = "";
            txtrec.Text = "";
            txttotal.Text = "";
            DropDownList1.ClearSelection();
        }

        protected void btnverify_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                DateTime dt3 = DateTime.Now;
                txtrdate.Text = "" + dt3;
                SqlCommand cmd = new SqlCommand("select count(*) from purchaseorder_info where pono = '" + txtpono.Text + "'", cnn);
                int cnt = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (cnt == 0)
                {
                    Response.Write("<script>alert('Invalid Purchase Order.....')</script>");
                }
                else
                {
                    SqlCommand cmm = new SqlCommand("select pdate from purchaseorder where  pono = '" + txtpono.Text + "'", cnn);
                    string date1 = cmm.ExecuteScalar().ToString();
                    txtbdate.Text = date1.ToString();
                    cmd.CommandText = "select iname from purchaseorder_info where pono = '" + txtpono.Text + "'";
                    adp.SelectCommand = cmd;
                    adp.Fill(dt, "i");
                    if (DropDownList1.Items.Count == 0)
                    {
                        DropDownList1.Items.Add("select");
                        {
                            if (dt.Tables["i"].Rows.Count > 0)
                            {
                                for (int j = 0; j < dt.Tables[0].Rows.Count; j++)
                                {
                                    string iid = Convert.ToString(dt.Tables[0].Rows[j]["iname"]);
                                    DropDownList1.Items.Add(iid.ToString());
                                }
                            }
                        }
                    }
                }



            }
        }



        protected void btnsave_Click(object sender, EventArgs e)
        {
           /* using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmp = new SqlCommand("update purchasebill set total = '"+Convert.ToInt32 (Session ["total"])+"' where pbno = '"+txtpbno .Text +"'", cnn);
                cmp.ExecuteNonQuery();
                Response.Write("<script>alert('Bill Saved')</script>");

            }*/
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
             using (SqlConnection cnn = new SqlConnection(cs))
             {
                 cnn.Open();
                string iname;
                iname = DropDownList1.SelectedItem.Text;
                SqlCommand cmd = new SqlCommand("select count(*) from stockdetail where iname = '" + DropDownList1.SelectedItem.Text + "'", cnn);
                int countsi = Convert.ToInt16(cmd.ExecuteScalar().ToString());
                if(countsi==0)
                {
                    DropDownList2.Visible = true;
                    txtreorder.Visible = true;
                    Label15.Visible = true;
                    Label16.Visible = true;
                    SqlCommand cmj = new SqlCommand("select itemid from purchaseorder_info where iname = '" + iname + "'", cnn);
                string  ino = cmj.ExecuteScalar().ToString();
                    txtiid.Text = ino;
                    SqlCommand cmu = new SqlCommand("select qty from purchaseorder_info where iname = '" + iname + "' and pono = '" + txtpono.Text + "'", cnn);
                    int qt = Convert.ToInt16(cmu.ExecuteScalar().ToString());
                    txtorder.Text = qt.ToString();
                    txtreorder.Text = "";
                    DropDownList2.ClearSelection();
                }
            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select * from purchasebill_info where pbno = '" + txtpbno.Text + "'", cnn);
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    Response.Write("<script>alert('No')</script>");

                }


            }

        }

        protected void txtrec_TextChanged(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                int m = Convert.ToInt32(txtorder.Text);
                int n = Convert.ToInt32(txtrec.Text);
                if (m < n)
                {
                    Response.Write("<script>alert('Item received cannot be greater than items Ordered')</script>");
                    txtrec.Text = "";

                }
                else
                {



                    decimal f = (Convert.ToDecimal(txtprice.Text) * Convert.ToDecimal(txtrec.Text));
                    txttotal.Text = f.ToString();
                    //SqlCommand cmd = new SqlCommand("update stockdetail set iqty=iqty+" + Convert.ToInt32(txtrec.Text) + ", iprice=" + Convert.ToDecimal(txtprice.Text) + " where iname='" + DropDownList1.SelectedItem.Text + "'", cnn);
                    // cmd.ExecuteNonQuery();
                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                string iname, ino;
                iname = DropDownList1.SelectedItem.ToString();
                if (iname == "select")
                {
                    Label13.Visible = true;
                    Label13.Text = "select item name first";
                }
                else
                {
                    SqlCommand cmj = new SqlCommand("select itemid from purchaseorder_info where iname = '" + iname + "'", cnn);
                    ino = cmj.ExecuteScalar().ToString();
                    txtiid.Text = ino;
                    SqlCommand cmo = new SqlCommand("select iprice from stockdetail where iname = '" + iname + "'", cnn);
                    double price = Convert.ToDouble(cmo.ExecuteScalar().ToString());
                    txtprice.Text = price.ToString();
                    SqlCommand cmu = new SqlCommand("select qty from purchaseorder_info where iname = '" + iname + "' and pono = '" + txtpono.Text + "'", cnn);
                    int qt = Convert.ToInt16(cmu.ExecuteScalar().ToString());
                    txtorder.Text = qt.ToString();
                    Label13.Visible = false;
                }
                txtrec.Text = "";

            }
        }

        protected void btngen_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(cs))
            {
                cnn.Open();
                int tqty = 0;
                int tamt, amt = 0;
                int qty = Convert.ToInt32(txtrec.Text);
                SqlCommand cmb = new SqlCommand("select count(*) from stockdetail where itemid='" + txtiid.Text + "'",cnn);
                int countsi = Convert.ToInt16(cmb.ExecuteScalar().ToString());
                if (countsi == 0)
                {

                    tqty = qty;
                    SqlCommand cmi = new SqlCommand("insert into  stockdetail(itemid, iname,category, iprice, iqty,reorder)values(@itemid, @iname,@category, @iprice, @iqty,@reorder )", cnn);

                    cmi.Parameters.AddWithValue("@itemid", txtiid.Text);
                    cmi.Parameters.AddWithValue("@iname", DropDownList1.SelectedItem.ToString());
                    cmi.Parameters.AddWithValue("@category", DropDownList2.SelectedItem.ToString());
                    cmi.Parameters.AddWithValue("@iprice", Convert.ToInt32(txtprice.Text));
                    cmi.Parameters.AddWithValue("@iqty", tqty);
                    cmi.Parameters.AddWithValue("@reorder", txtreorder.Text);

                    cmi.ExecuteNonQuery();
                    
                }
                else
                {
                    SqlCommand cmv = new SqlCommand("select iqty from stockdetail where itemid = '" + txtiid.Text + "'", cnn);

                    int quanti = Convert.ToInt32(cmv.ExecuteScalar().ToString());
                    tqty = qty + quanti;
                    SqlCommand cma = new SqlCommand("update stockdetail set iqty = '" + tqty + "' where itemid = '" + txtiid.Text + "'", cnn);
                    cma.ExecuteNonQuery();
                    Response.Write("<script>alert('Bill Saved')</script>");


                }
                amt = Convert.ToInt32(txtprice.Text);
                tamt = amt * qty;
                txttotal.Text = tamt.ToString();
                Session["total"] = Convert.ToInt32(Session["total"]) + tamt;

                SqlCommand cmz = new SqlCommand("select count(*) from purchasebill where pbno= '" + txtpbno.Text + "'", cnn);
                int cnt = Convert.ToInt16(cmz.ExecuteScalar().ToString());
                if (cnt == 0)
                {
                    SqlCommand cml = new SqlCommand("insert into purchasebill(pbno,bno,pono,podate,recdate,total)values(@pb_no, @b_no, @po_no,@po_date,@rec_date,@tot)", cnn);
                    cml.Parameters.AddWithValue("@pb_no", txtpbno.Text);
                    cml.Parameters.AddWithValue("@b_no", txtbno.Text);
                    cml.Parameters.AddWithValue("@po_no", txtpono.Text);
                    cml.Parameters.AddWithValue("@po_date", txtbdate.Text);
                    cml.Parameters.AddWithValue("@rec_date", txtrdate.Text);
                    cml.Parameters.AddWithValue("@tot", Convert.ToInt32(Session["total"]));
                    cml.ExecuteNonQuery();
                    
                    SqlCommand cmp = new SqlCommand("update purchasebill set total = '" + Convert.ToInt32(Session["total"]) + "' where pbno = '" + txtpbno.Text + "'", cnn);
                    cmp.ExecuteNonQuery();
                }

                SqlCommand cmq = new SqlCommand("insert into purchasebill_info(pbno, itemid, iname, qty, amount)values(@pb_no, @item_id, @i_name, @q_ty, @amt)", cnn);
                cmq.Parameters.AddWithValue("@pb_no", txtpbno.Text);
                cmq.Parameters.AddWithValue("@item_id", txtiid.Text);
                cmq.Parameters.AddWithValue("@i_name", DropDownList1.SelectedItem.ToString());
                cmq.Parameters.AddWithValue("@q_ty", txtrec.Text);
                cmq.Parameters.AddWithValue("@amt", tamt);
                cmq.ExecuteNonQuery();
                SqlCommand cmm = new SqlCommand("update purchasebill set total = '" + Convert.ToInt32(Session["total"]) + "' where pbno = '" + txtpbno.Text + "'", cnn);
                cmm.ExecuteNonQuery();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select *from purchasebill_info where pbno = '" + txtpbno.Text + "'";
                cmd.Connection = cnn;
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                if (GridView1.Rows.Count == 0)
                {
                    Response.Write("<script>alert('No records.....')</script>");
                }



                txtiid.Text = "";
                txtrec.Text = "";
                txtorder.Text = "";
                DropDownList1.ClearSelection();
                txttotal.Text = "";
                txtprice.Text = "";


            }

        }

      
    }
}











