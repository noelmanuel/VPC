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
using System.Collections.Generic;
using System.IO;

public partial class Company_Product_company_comaddups : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string insertQuery1 = "select man,mod from ups where man='" + TextBox1.Text + "' and mod='" + TextBox2.Text + "'";
        SqlCommand cmd1 = new SqlCommand(insertQuery1, conn);
        SqlDataReader reader1 = cmd1.ExecuteReader();

        if (reader1.HasRows)
        {
            Response.Write(" <script>window.alert('Product Already Exist'); window.location='comaddups.aspx';</script>");
        }
        else
        {
            reader1.Close();
            mbimg1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(mbimg1.FileName));
            String link = "/images/" + Path.GetFileName(mbimg1.FileName);
            mbimg2.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(mbimg2.FileName));
            String link2 = "/images/" + Path.GetFileName(mbimg2.FileName);
            mbimg3.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(mbimg3.FileName));
            String link3 = "/images/" + Path.GetFileName(mbimg3.FileName);
            string insertQuery = "insert into ups(man,mod,load,load1,ala,bac,bac1,batt,batt1,datp,emg,fac,hot,inp,maxi,outp,recp,ser,swi,usb,wave,imageurl,pric,imageurl1,imageurl2,stock,brand) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + link + "','" + TextBox22.Text + "','" + link2 + "','" + link3 + "','" + TextBox23.Text + "','" + Session["comp"].ToString() + "')";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('UPS added'); window.location='comaddups.aspx';</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddups.aspx");
    }
}