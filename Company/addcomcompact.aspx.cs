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


public partial class Company_addcomcompact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Try to Build with your own products and dont build any incompatiable build thus resulting in ban";

       


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

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox cbox = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
                int rollno = Convert.ToInt32(row.Cells[2].Text);
                string pro = row.Cells[1].Text;
                if (cbox.Checked)
                {
                    
                    string ordp = "insert into cpubuildmb(Motherboard,Ram Slots,GPU Slots,Price,author,productid) values('" + pro + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + rollno + "','" + Session["comp"].ToString() + "','" + trr + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();
                    

                }
                else
                {

                }
            }

            foreach (GridViewRow row1 in GridView2.Rows)
            {
                CheckBox cboxram = (row1.Cells[0].FindControl("CheckBox2") as CheckBox);
                int rollnoram = Convert.ToInt32(row1.Cells[2].Text);
                string proram = row1.Cells[1].Text;
                if (cboxram.Checked)
                {
                    string ordp1 = "insert into cpubuildram(Ram,Price,author,productid) values('" + proram + "','" + rollnoram + "','" + Session["comp"].ToString() + "','" + trr + "')";
                    SqlCommand cmddd1 = new SqlCommand(ordp1, conn);
                    cmddd1.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }

            foreach (GridViewRow row2 in GridView3.Rows)
            {
                CheckBox cboxgpu = (row2.Cells[0].FindControl("CheckBox3") as CheckBox);
                int rollnogpu = Convert.ToInt32(row2.Cells[2].Text);
                string progpu = row2.Cells[1].Text;
                if (cboxgpu.Checked)
                {
                    string ordp2 = "insert into cpubuildgpu(GPU,Price,author,productid) values('" + progpu + "','" + rollnogpu + "','" + Session["comp"].ToString() + "','" + trr + "')";
                    SqlCommand cmddd2 = new SqlCommand(ordp2, conn);
                    cmddd2.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }
            foreach (GridViewRow row7 in GridView8.Rows)
            {
                CheckBox cboxpro = (row7.Cells[0].FindControl("CheckBox8") as CheckBox);
                int rollnopro = Convert.ToInt32(row7.Cells[2].Text);
                string propro = row7.Cells[1].Text;
                if (cboxpro.Checked)
                {
                    string ordp3 = "insert into cpubuildpro(Processor,Price,author,productid) values('" + propro + "','" + rollnopro + "','" + Session["comp"].ToString() + "','" + trr + "')";
                    SqlCommand cmddd3 = new SqlCommand(ordp3, conn);
                    cmddd3.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }

            foreach (GridViewRow row10 in GridView11.Rows)
            {
                CheckBox cboxcase = (row10.Cells[0].FindControl("CheckBox11") as CheckBox);
                int rollnocase = Convert.ToInt32(row10.Cells[2].Text);
                string procase = row10.Cells[1].Text;
                if (cboxcase.Checked)
                {
                    string ordp4 = "insert into cpubuildcase(Casee,Price,author,productid) values('" + procase + "','" + rollnocase + "','" + Session["comp"].ToString() + "','" + trr + "')";
                    SqlCommand cmddd4 = new SqlCommand(ordp4, conn);
                    cmddd4.ExecuteNonQuery();
                    

                }
                else
                {

                }
            }

            foreach (GridViewRow row12 in GridView13.Rows)
            {
                CheckBox cboxsmps = (row12.Cells[0].FindControl("CheckBox13") as CheckBox);
                int rollnosmps = Convert.ToInt32(row12.Cells[2].Text);
                string prosmps = row12.Cells[1].Text;
                if (cboxsmps.Checked)
                {
                    string ordp5 = "insert into cpubuildsmps(smps,Price,author,productid) values('" + prosmps + "','" + rollnosmps + "','" + Session["comp"].ToString() + "','" + trr + "')";
                    SqlCommand cmddd5 = new SqlCommand(ordp5, conn);
                    cmddd5.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }
            Response.Write(" <script>window.alert('Build created');</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox cbox = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
                int rollno = Convert.ToInt32(row.Cells[2].Text);
                string pro = row.Cells[1].Text;
                if (cbox.Checked)
                {
                    
                    string ordp = "insert into cpubuildmb(Motherboard,RamSlots,GPUSlots,Price,author,productid) values('" + pro + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + rollno + "','" + Session["comp"].ToString() + "','" + tr + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();
                   

                }
                else
                {

                }
            }

            foreach (GridViewRow row1 in GridView2.Rows)
            {
                CheckBox cboxram = (row1.Cells[0].FindControl("CheckBox2") as CheckBox);
                int rollnoram = Convert.ToInt32(row1.Cells[2].Text);
                string proram = row1.Cells[1].Text;
                if (cboxram.Checked)
                {
                    string ordp1 = "insert into cpubuildram(Ram,Price,author,productid) values('" + proram + "','" + rollnoram + "','" + Session["comp"].ToString() + "','" + tr + "')";
                    SqlCommand cmddd1 = new SqlCommand(ordp1, conn);
                    cmddd1.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }

            foreach (GridViewRow row2 in GridView3.Rows)
            {
                CheckBox cboxgpu = (row2.Cells[0].FindControl("CheckBox3") as CheckBox);
                int rollnogpu = Convert.ToInt32(row2.Cells[2].Text);
                string progpu = row2.Cells[1].Text;
                if (cboxgpu.Checked)
                {
                    string ordp2 = "insert into cpubuildgpu(GPU,Price,author,productid) values('" + progpu + "','" + rollnogpu + "','" + Session["comp"].ToString() + "','" + tr + "')";
                    SqlCommand cmddd2 = new SqlCommand(ordp2, conn);
                    cmddd2.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }
            foreach (GridViewRow row7 in GridView8.Rows)
            {
                CheckBox cboxpro = (row7.Cells[0].FindControl("CheckBox8") as CheckBox);
                int rollnopro = Convert.ToInt32(row7.Cells[2].Text);
                string propro = row7.Cells[1].Text;
                if (cboxpro.Checked)
                {
                    string ordp3 = "insert into cpubuildpro(Processor,Price,author,productid) values('" + propro + "','" + rollnopro + "','" + Session["comp"].ToString() + "','" + tr + "')";
                    SqlCommand cmddd3 = new SqlCommand(ordp3, conn);
                    cmddd3.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }

            foreach (GridViewRow row10 in GridView11.Rows)
            {
                CheckBox cboxcase = (row10.Cells[0].FindControl("CheckBox11") as CheckBox);
                int rollnocase = Convert.ToInt32(row10.Cells[2].Text);
                string procase = row10.Cells[1].Text;
                if (cboxcase.Checked)
                {
                    string ordp4 = "insert into cpubuildcase(Casee,Price,author,productid) values('" + procase + "','" + rollnocase + "','" + Session["comp"].ToString() + "','" + tr + "')";
                    SqlCommand cmddd4 = new SqlCommand(ordp4, conn);
                    cmddd4.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }

            foreach (GridViewRow row12 in GridView13.Rows)
            {
                CheckBox cboxsmps = (row12.Cells[0].FindControl("CheckBox13") as CheckBox);
                int rollnosmps = Convert.ToInt32(row12.Cells[2].Text);
                string prosmps = row12.Cells[1].Text;
                if (cboxsmps.Checked)
                {
                    string ordp5 = "insert into cpubuildsmps(smps,Price,author,productid) values('" + prosmps + "','" + rollnosmps + "','" + Session["comp"].ToString() + "','" + tr + "')";
                    SqlCommand cmddd5 = new SqlCommand(ordp5, conn);
                    cmddd5.ExecuteNonQuery();
                    
                }
                else
                {

                }
            }
            Response.Write(" <script>window.alert('Build created');</script>");
            conn.Close();

        }
        

    }
        

    



    
}