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


public partial class expertsystem_expertcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        for (int i = 1900; i <= DateTime.Now.Year; i++)
        {
            DropDownList2.Items.Add(i.ToString());
            DropDownList4.Items.Add(i.ToString());
        }
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string gg = "select * from expertcart";
            SqlCommand cmd = new SqlCommand(gg, conn);
            SqlDataReader readerr = cmd.ExecuteReader();

            if (readerr.HasRows)
            {

                appjs();
            }
            else
            {
                Response.Redirect("expertemptycart.aspx");
            }
            conn.Close();

        }
    }
    public void appjs()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select * from expertcart where userr='" + Session["user"].ToString() + "'", conn);       
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();

    }

    



    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label transa = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        string str2 = "delete from expertcart where transac='" + transa.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='expertcart.aspx';</script>");
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

    protected void Button8_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow g1 in GridView1.Rows)
        {


            string pro = (g1.FindControl("Label1") as Label).Text;
            string proname = (g1.FindControl("Label2") as Label).Text;
            string monitor = (g1.FindControl("Label3") as Label).Text;
            string mb = (g1.FindControl("Label4") as Label).Text;
            string totp = (g1.FindControl("Label5") as Label).Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string ordp = "insert into expertpastorder(transactionn,username,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name,motherboard,monitor,totalprice) select '" + pro + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + proname + "','" + TextBox9.Text + "','" + mb + "','" + monitor + "','" + totp + "'";
            SqlCommand cmdfinal = new SqlCommand(ordp, conn);
            cmdfinal.ExecuteNonQuery();

            string ordp1 = "insert into pastexpert(budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr) select budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr from expertcart where transac= '" + pro + "'";
            SqlCommand cmdfinal1 = new SqlCommand(ordp1, conn);
            cmdfinal1.ExecuteNonQuery();

            string str22 = "delete from expertcart where transac='" + pro + "'";
            SqlCommand cmd22 = new SqlCommand(str22, conn);
            cmd22.ExecuteNonQuery();

            Response.Write(" <script>window.alert('Order Confirmed'); window.location='expertcart.aspx';</script>");
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow g1 in GridView1.Rows)
        {


            string pro = (g1.FindControl("Label1") as Label).Text;
            string proname = (g1.FindControl("Label2") as Label).Text;
            string monitor = (g1.FindControl("Label3") as Label).Text;
            string mb = (g1.FindControl("Label4") as Label).Text;
            string totp = (g1.FindControl("Label5") as Label).Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string ordp = "insert into expertpastorder(transactionn,username,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name,motherboard,monitor,totalprice) select '" + pro + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','debit card','" + Convert.ToInt64(TextBox7.Text) + "','" + DropDownList3.SelectedItem + "','" + DropDownList4.SelectedItem + "','" + Convert.ToInt32(TextBox8.Text) + "','" + proname + "','" + TextBox10.Text + "','" + mb + "','" + monitor + "','" + totp + "'";
            SqlCommand cmdfinal = new SqlCommand(ordp, conn);
            cmdfinal.ExecuteNonQuery();

            string ordp1 = "insert into pastexpert(budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr) select budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr from expertcart where transac= '" + pro + "'";
            SqlCommand cmdfinal1 = new SqlCommand(ordp1, conn);
            cmdfinal1.ExecuteNonQuery();

            string str22 = "delete from expertcart where transac='" + pro + "'";
            SqlCommand cmd22 = new SqlCommand(str22, conn);
            cmd22.ExecuteNonQuery();

            Response.Write(" <script>window.alert('Order Confirmed'); window.location='expertcart.aspx';</script>");
        }

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow g1 in GridView1.Rows)
        {


            string pro = (g1.FindControl("Label1") as Label).Text;
            string proname = (g1.FindControl("Label2") as Label).Text;
            string monitor = (g1.FindControl("Label3") as Label).Text;
            string mb = (g1.FindControl("Label4") as Label).Text;
            string totp = (g1.FindControl("Label5") as Label).Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string ordp = "insert into expertpastorder(transactionn,username,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name,motherboard,monitor,totalprice) select '" + pro + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','COD','0','0','0','0','" + proname + "','COD','" + mb + "','" + monitor + "','" + totp + "'";
            SqlCommand cmdfinal = new SqlCommand(ordp, conn);
            cmdfinal.ExecuteNonQuery();

            string ordp1 = "insert into pastexpert(budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr) select budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr from expertcart where transac= '" + pro + "'";
            SqlCommand cmdfinal1 = new SqlCommand(ordp1, conn);
            cmdfinal1.ExecuteNonQuery();

            string str22 = "delete from expertcart where transac='" + pro + "'";
            SqlCommand cmd22 = new SqlCommand(str22, conn);
            cmd22.ExecuteNonQuery();

            Response.Write(" <script>window.alert('Order Confirmed'); window.location='expertcart.aspx';</script>");
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow g1 in GridView1.Rows)
        {


            string pro = (g1.FindControl("Label1") as Label).Text;
            string proname = (g1.FindControl("Label2") as Label).Text;
            string monitor = (g1.FindControl("Label3") as Label).Text;
            string mb = (g1.FindControl("Label4") as Label).Text;
            string totp = (g1.FindControl("Label5") as Label).Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string ordp = "insert into expertpastorder(transactionn,username,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name,motherboard,monitor,totalprice) select '" + pro + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','gift card','" + Convert.ToInt64(TextBox11.Text) + "','0','0','0','" + proname + "','" + Session["user"].ToString() + "','" + mb + "','" + monitor + "','" + totp + "'";
            SqlCommand cmdfinal = new SqlCommand(ordp, conn);
            cmdfinal.ExecuteNonQuery();

            string ordp1 = "insert into pastexpert(budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr) select budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr from expertcart where transac= '" + pro + "'";
            SqlCommand cmdfinal1 = new SqlCommand(ordp1, conn);
            cmdfinal1.ExecuteNonQuery();

            string str22 = "delete from expertcart where transac='" + pro + "'";
            SqlCommand cmd22 = new SqlCommand(str22, conn);
            cmd22.ExecuteNonQuery();

            Response.Write(" <script>window.alert('Order Confirmed'); window.location='expertcart.aspx';</script>");
        }
    }
}
