using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class shoppingpage_addcart : System.Web.UI.Page
{
    string cid, str1, sql, str2;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Text = DateTime.Now.ToString("M/d/yyyy");
        Label10.Text = "1000";
        for (int i = 1900; i <= DateTime.Now.Year; i++)
        {
            DropDownList2.Items.Add(i.ToString());
            DropDownList4.Items.Add(i.ToString());
        }
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        if (!IsPostBack)
        {
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string gg = "select SUM(total_price) from addcart where username='" + Session["user"].ToString() + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(gg, conn);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                string noo = reader.GetValue(0).ToString();
                int qua = int.Parse(noo);
                if (qua < 4000)
                {
                    qua = qua + 500;
                    Label7.Text = qua.ToString();
                    Label8.Text = "₹500";

                }
                else
                {
                    Label7.Text = noo;
                    Label8.Text = "₹50";
                }
                
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
                
            }
            else
            {
                Response.Write(" <script>window.alert('No rows'); window.location='addcart.aspx';</script>");
            }

        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label compname = GridView1.Rows[e.RowIndex].FindControl("Label3") as Label;
        str2 = "delete from addcart where product_model='" + compname.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='addcart.aspx';</script>");
        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;

    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
    }
     
    
   
    private void uig()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string del = "DELETE FROM addcart where username='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(del, conn);
        cmd.ExecuteNonQuery();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        int tr = Convert.ToInt32(Label10.Text);
        
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string insertQuery = "select Transid from orderrr where Transid='" + Label10.Text + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();
            string no = reader.GetValue(0).ToString();
            int yy = Convert.ToInt32(no);
            reader.Close();
            if (yy == 1000)
            {
                int xy = yy + 1;

                
                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + xy + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();
                foreach (GridViewRow g1 in GridView1.Rows)
                {

                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua= (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + xy + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmdddd = new SqlCommand(ordp, conn);
                    cmdddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='addmotherboard.aspx';</script>");

            }
            else
            {
                
                int xy = 1000;
                
                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + xy + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();

                foreach (GridViewRow g1 in GridView1.Rows)
                {


                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + xy + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='addmotherboard.aspx';</script>");
            }

        }
        else
        {
            reader.Close();
            int xy = 1000;
            
            string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + xy + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();
            foreach (GridViewRow g1 in GridView1.Rows)
            {


                string pro = (g1.FindControl("Label1") as Label).Text;
                string proname = (g1.FindControl("Label2") as Label).Text;
                string promod = (g1.FindControl("Label3") as Label).Text;
                string proqua = (g1.FindControl("Label4") as Label).Text;
                string protot = (g1.FindControl("Label6") as Label).Text;
                string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + xy + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                SqlCommand cmdddd = new SqlCommand(ordp, conn);
                cmdddd.ExecuteNonQuery();


            }
            uig();
            conn.Close();
            Response.Write(" <script>window.alert('Order confirmed'); window.location='addmotherboard.aspx';</script>");
            
        }

        
    }
}