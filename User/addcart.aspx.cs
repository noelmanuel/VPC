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
public partial class User_addcart : System.Web.UI.Page
{
    string cid, str1, sql, str2;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string ggg = "select * from addcart where username='" + Session["user"].ToString() + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(ggg, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            Label9.Text = DateTime.Now.ToString("M/d/yyyy");

            for (int i = 2019; i <= 2030; i++)
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

                
                string gg = "select SUM(total_price) from addcart where username='" + Session["user"].ToString() + "'";
                SqlCommand cmdd = new SqlCommand(gg, conn);
                SqlDataReader readerr = cmdd.ExecuteReader();

                if (readerr.HasRows)
                {
                    readerr.Read();
                    string noo = readerr.GetValue(0).ToString();
                    int qua = int.Parse(noo);
                    readerr.Close();
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
                    Response.Write(" <script>window.alert('NO ITEMS IN CART');  window.location='emptyaddcart.aspx'</script>");
                    
                }

            }
        }
        else
        {
            Response.Write(" <script>window.alert('NO ITEMS IN CART');  window.location='emptyaddcart.aspx'</script>");
            
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
        String pass = "123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(3 * r.NextDouble())];

        }
        string bn = new string(mypass);

        int tr = Convert.ToInt32(bn);

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string insertQuery = "select Transid from orderrr where Transid='" + bn + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        conn.Open();
        SqlDataReader readerw = cmd.ExecuteReader();

        if (readerw.HasRows)
        {
            readerw.Read();
            string no = readerw.GetValue(0).ToString();
            int yy = Convert.ToInt32(no);
            readerw.Close();
            if (yy == tr)
            {
                tr = tr + 1;


                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();
                foreach (GridViewRow g1 in GridView1.Rows)
                {

                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmdddd = new SqlCommand(ordp, conn);
                    cmdddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");

            }
            else
            {

                readerw.Close();

                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();

                foreach (GridViewRow g1 in GridView1.Rows)
                {


                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");
            }

        }
        else
        {

            readerw.Close();

            string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();
            foreach (GridViewRow g1 in GridView1.Rows)
            {


                string pro = (g1.FindControl("Label1") as Label).Text;
                string proname = (g1.FindControl("Label2") as Label).Text;
                string promod = (g1.FindControl("Label3") as Label).Text;
                string proqua = (g1.FindControl("Label4") as Label).Text;
                string protot = (g1.FindControl("Label6") as Label).Text;
                string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                SqlCommand cmdddd = new SqlCommand(ordp, conn);
                cmdddd.ExecuteNonQuery();


            }
            uig();
            conn.Close();
            Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");

        }


    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        String pass = "123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(3 * r.NextDouble())];

        }
        string bn = new string(mypass);

        int tr = Convert.ToInt32(bn);

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string insertQuery = "select Transid from orderrr where Transid='" + bn + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        conn.Open();
        SqlDataReader readerw = cmd.ExecuteReader();

        if (readerw.HasRows)
        {
            readerw.Read();
            string no = readerw.GetValue(0).ToString();
            int yy = Convert.ToInt32(no);
            readerw.Close();
            if (yy == tr)
            {
                tr = tr + 1;


                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();
                foreach (GridViewRow g1 in GridView1.Rows)
                {

                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmdddd = new SqlCommand(ordp, conn);
                    cmdddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");

            }
            else
            {

                readerw.Close();

                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();

                foreach (GridViewRow g1 in GridView1.Rows)
                {


                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");
            }

        }
        else
        {

            readerw.Close();

            string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','debit card','" + Convert.ToInt64(TextBox7.Text) + "','" + DropDownList3.SelectedItem + "','" + DropDownList4.SelectedItem + "','" + Convert.ToInt32(TextBox8.Text) + "','" + Label9.Text + "','" + TextBox10.Text + "')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();
            foreach (GridViewRow g1 in GridView1.Rows)
            {


                string pro = (g1.FindControl("Label1") as Label).Text;
                string proname = (g1.FindControl("Label2") as Label).Text;
                string promod = (g1.FindControl("Label3") as Label).Text;
                string proqua = (g1.FindControl("Label4") as Label).Text;
                string protot = (g1.FindControl("Label6") as Label).Text;
                string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                SqlCommand cmdddd = new SqlCommand(ordp, conn);
                cmdddd.ExecuteNonQuery();


            }
            uig();
            conn.Close();
            Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");

        }

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        String pass = "123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(3 * r.NextDouble())];

        }
        string bn = new string(mypass);

        int tr = Convert.ToInt32(bn);

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string insertQuery = "select Transid from orderrr where Transid='" + bn + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        conn.Open();
        SqlDataReader readerw = cmd.ExecuteReader();

        if (readerw.HasRows)
        {
            readerw.Read();
            string no = readerw.GetValue(0).ToString();
            int yy = Convert.ToInt32(no);
            readerw.Close();
            if (yy == tr)
            {
                tr = tr + 1;


                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();
                foreach (GridViewRow g1 in GridView1.Rows)
                {

                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmdddd = new SqlCommand(ordp, conn);
                    cmdddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");

            }
            else
            {

                readerw.Close();

                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();

                foreach (GridViewRow g1 in GridView1.Rows)
                {


                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");
            }

        }
        else
        {

            readerw.Close();

            string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','COD','0','0','0','0','" + Label9.Text + "','COD')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();
            foreach (GridViewRow g1 in GridView1.Rows)
            {


                string pro = (g1.FindControl("Label1") as Label).Text;
                string proname = (g1.FindControl("Label2") as Label).Text;
                string promod = (g1.FindControl("Label3") as Label).Text;
                string proqua = (g1.FindControl("Label4") as Label).Text;
                string protot = (g1.FindControl("Label6") as Label).Text;
                string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                SqlCommand cmdddd = new SqlCommand(ordp, conn);
                cmdddd.ExecuteNonQuery();


            }
            uig();
            conn.Close();
            Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");

        }

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        String pass = "123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(3 * r.NextDouble())];

        }
        string bn = new string(mypass);

        int tr = Convert.ToInt32(bn);

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string insertQuery = "select Transid from orderrr where Transid='" + bn + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        conn.Open();
        SqlDataReader readerw = cmd.ExecuteReader();

        if (readerw.HasRows)
        {
            readerw.Read();
            string no = readerw.GetValue(0).ToString();
            int yy = Convert.ToInt32(no);
            readerw.Close();
            if (yy == tr)
            {
                tr = tr + 1;


                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();
                foreach (GridViewRow g1 in GridView1.Rows)
                {

                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmdddd = new SqlCommand(ordp, conn);
                    cmdddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");

            }
            else
            {

                readerw.Close();

                string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmdd = new SqlCommand(subcredit, conn);
                cmdd.ExecuteNonQuery();

                foreach (GridViewRow g1 in GridView1.Rows)
                {


                    string pro = (g1.FindControl("Label1") as Label).Text;
                    string proname = (g1.FindControl("Label2") as Label).Text;
                    string promod = (g1.FindControl("Label3") as Label).Text;
                    string proqua = (g1.FindControl("Label4") as Label).Text;
                    string protot = (g1.FindControl("Label6") as Label).Text;
                    string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();


                }
                uig();
                conn.Close();
                Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");
            }

        }
        else
        {

            readerw.Close();

            string subcredit = "insert into orderrr(Transid,username,grandtot,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + tr + "','" + Session["user"].ToString() + "','" + Convert.ToInt32(Label7.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','gift card','" + Convert.ToInt64(TextBox11.Text) + "','0','0','0','" + Label9.Text + "','" + Session["user"].ToString() + "')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();
            foreach (GridViewRow g1 in GridView1.Rows)
            {


                string pro = (g1.FindControl("Label1") as Label).Text;
                string proname = (g1.FindControl("Label2") as Label).Text;
                string promod = (g1.FindControl("Label3") as Label).Text;
                string proqua = (g1.FindControl("Label4") as Label).Text;
                string protot = (g1.FindControl("Label6") as Label).Text;
                string ordp = "insert into orderpp(Transid,product,prod_man,prod_mod,quantity,tot) values('" + tr + "','" + pro + "','" + proname + "','" + promod + "','" + proqua + "','" + protot + "')";
                SqlCommand cmdddd = new SqlCommand(ordp, conn);
                cmdddd.ExecuteNonQuery();


            }
            uig();
            conn.Close();
            Response.Write(" <script>window.alert('Order confirmed'); window.location='emptyaddcart.aspx';</script>");

        }

    }
}