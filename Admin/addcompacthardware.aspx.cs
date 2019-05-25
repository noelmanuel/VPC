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
using System.Collections.Generic;
using System.IO;


public partial class Admin_addcompacthardware : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        String pass = "123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(4 * r.NextDouble())];

        }
        string bn = new string(mypass);
        int tr = Convert.ToInt32(bn);


        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);     
        conn.Open();

        string ggg = "select productid from cpubuildmb where productid='" + tr + "'";
        SqlCommand cmd = new SqlCommand(ggg, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {

            reader.Close();
            int trr = tr + 1;

            string ordp = "insert into cpubuildmb(Motherboard,Ram Slots,GPU Slots,Price,productid) values('" + TextBox1.Text + "','" + TextBox27.Text + "','" + TextBox28.Text + "','" + TextBox14.Text + "','" + trr + "')";
            SqlCommand cmddd = new SqlCommand(ordp, conn);
            cmddd.ExecuteNonQuery();

            string ordp1 = "insert into cpubuildram(Ram,Price,productid) values('" + TextBox3.Text + "','" + TextBox16.Text + "','" + trr + "')";
            SqlCommand cmddd1 = new SqlCommand(ordp1, conn);
            cmddd1.ExecuteNonQuery();

            string ordp2 = "insert into cpubuildgpu(GPU,Price,productid) values('" + TextBox4.Text + "','" + TextBox17.Text + "','" + trr + "')";
            SqlCommand cmddd2 = new SqlCommand(ordp2, conn);
            cmddd2.ExecuteNonQuery();

            string ordp3 = "insert into cpubuildpro(Processor,Price,productid) values('" + TextBox2.Text + "','" + TextBox15.Text + "','" + trr + "')";
            SqlCommand cmddd3 = new SqlCommand(ordp3, conn);
            cmddd3.ExecuteNonQuery();

            string ordp4 = "insert into cpubuildcase(Casee,Price,productid) values('" + TextBox10.Text + "','" + TextBox23.Text + "','" + trr + "')";
            SqlCommand cmddd4 = new SqlCommand(ordp4, conn);
            cmddd4.ExecuteNonQuery();

            string ordp5 = "insert into cpubuildsmps(smps,Price,productid) values('" + TextBox6.Text + "','" + TextBox19.Text + "','" + trr + "')";
            SqlCommand cmddd5 = new SqlCommand(ordp5, conn);
            cmddd5.ExecuteNonQuery();

            conn.Close();
            Response.Write(" <script>window.alert('CPU Build added'); window.location='addcompacthardware.aspx';</script>");
        }
        else
        {

            string ordp = "insert into cpubuildmb(Motherboard,Ram Slots,GPU Slots,Price,productid) values('" + TextBox1.Text + "','" + TextBox27.Text + "','" + TextBox28.Text + "','" + TextBox14.Text + "','" + tr + "')";
            SqlCommand cmddd = new SqlCommand(ordp, conn);
            cmddd.ExecuteNonQuery();

            string ordp1 = "insert into cpubuildram(Ram,Price,productid) values('" + TextBox3.Text + "','" + TextBox16.Text + "','" + tr + "')";
            SqlCommand cmddd1 = new SqlCommand(ordp1, conn);
            cmddd1.ExecuteNonQuery();

            string ordp2 = "insert into cpubuildgpu(GPU,Price,productid) values('" + TextBox4.Text + "','" + TextBox17.Text + "','" + tr + "')";
            SqlCommand cmddd2 = new SqlCommand(ordp2, conn);
            cmddd2.ExecuteNonQuery();

            string ordp3 = "insert into cpubuildpro(Processor,Price,productid) values('" + TextBox2.Text + "','" + TextBox15.Text + "','" + tr + "')";
            SqlCommand cmddd3 = new SqlCommand(ordp3, conn);
            cmddd3.ExecuteNonQuery();

            string ordp4 = "insert into cpubuildcase(Casee,Price,productid) values('" + TextBox10.Text + "','" + TextBox23.Text + "','" + tr + "')";
            SqlCommand cmddd4 = new SqlCommand(ordp4, conn);
            cmddd4.ExecuteNonQuery();

            string ordp5 = "insert into cpubuildsmps(smps,Price,productid) values('" + TextBox6.Text + "','" + TextBox19.Text + "','" + tr + "')";
            SqlCommand cmddd5 = new SqlCommand(ordp5, conn);
            cmddd5.ExecuteNonQuery();

            conn.Close();
            Response.Write(" <script>window.alert('CPU Build added'); window.location='addcompacthardware.aspx';</script>");
        }





        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/addcompacthardware.aspx");
    }
}