﻿using System;
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

public partial class Admin_addcompact : System.Web.UI.Page
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

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox cbox = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
                int rollno = Convert.ToInt32(row.Cells[2].Text);
                string pro = row.Cells[1].Text;
                if (cbox.Checked)
                {

                    string ordp = "insert into cpubuildmb(Motherboard,Ram Slots,GPU Slots,Price,productid) values('" + pro + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + rollno + "','" + trr + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();

                }
                else
                {
                    Response.Write(" <script>window.alert('You should add motherboard'); window.location='addcompact.aspx';</script>");
                }
            }

            foreach (GridViewRow row1 in GridView2.Rows)
            {
                CheckBox cboxram = (row1.Cells[0].FindControl("CheckBox2") as CheckBox);
                int rollnoram = Convert.ToInt32(row1.Cells[2].Text);
                string proram = row1.Cells[1].Text;
                if (cboxram.Checked)
                {
                    string ordp1 = "insert into cpubuildram(Ram,Price,productid) values('" + proram + "','" + rollnoram + "','" + trr + "')";
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
                    string ordp2 = "insert into cpubuildgpu(GPU,Price,productid) values('" + progpu + "','" + rollnogpu + "','" + trr + "')";
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
                    string ordp3 = "insert into cpubuildpro(Processor,Price,productid) values('" + propro + "','" + rollnopro + "','" + trr + "')";
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
                    string ordp4 = "insert into cpubuildcase(Casee,Price,productid) values('" + procase + "','" + rollnocase + "','" + trr + "')";
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
                    string ordp5 = "insert into cpubuildsmps(smps,Price,productid) values('" + prosmps + "','" + rollnosmps + "','" + trr + "')";
                    SqlCommand cmddd5 = new SqlCommand(ordp5, conn);
                    cmddd5.ExecuteNonQuery();
                }
                else
                {

                }
            }
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

                    string ordp = "insert into cpubuildmb(Motherboard,RamSlots,GPUSlots,Price,productid) values('" + pro + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + rollno + "' ,'" + tr + "')";
                    SqlCommand cmddd = new SqlCommand(ordp, conn);
                    cmddd.ExecuteNonQuery();

                }
                else
                {
                    

                    RequiredFieldValidator1.ControlToValidate = cbox.Text;
                }
            }

            foreach (GridViewRow row1 in GridView2.Rows)
            {
                CheckBox cboxram = (row1.Cells[0].FindControl("CheckBox2") as CheckBox);
                int rollnoram = Convert.ToInt32(row1.Cells[2].Text);
                string proram = row1.Cells[1].Text;
                if (cboxram.Checked)
                {
                    string ordp1 = "insert into cpubuildram(Ram,Price,productid) values('" + proram + "','" + rollnoram + "','" + tr + "')";
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
                    string ordp2 = "insert into cpubuildgpu(GPU,Price,productid) values('" + progpu + "','" + rollnogpu + "','" + tr + "')";
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
                    string ordp3 = "insert into cpubuildpro(Processor,Price,productid) values('" + propro + "','" + rollnopro + "','" + tr + "')";
                    SqlCommand cmddd3 = new SqlCommand(ordp3, conn);
                    cmddd3.ExecuteNonQuery();
                }
            }

            foreach (GridViewRow row10 in GridView11.Rows)
            {
                CheckBox cboxcase = (row10.Cells[0].FindControl("CheckBox11") as CheckBox);
                int rollnocase = Convert.ToInt32(row10.Cells[2].Text);
                string procase = row10.Cells[1].Text;
                if (cboxcase.Checked)
                {
                    string ordp4 = "insert into cpubuildcase(Casee,Price,productid) values('" + procase + "','" + rollnocase + "','" + tr + "')";
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
                    string ordp5 = "insert into cpubuildsmps(smps,Price,productid) values('" + prosmps + "','" + rollnosmps + "','" + tr + "')";
                    SqlCommand cmddd5 = new SqlCommand(ordp5, conn);
                    cmddd5.ExecuteNonQuery();
                }
                else
                {

                }
            }

            conn.Close();

        }


    }







}