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


public partial class Admin_Product_admin_addsoftware : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string insertQuery1 = "select man,mod from software where man='" + TextBox1.Text + "' and mod='" + TextBox2.Text + "'";
        SqlCommand cmd1 = new SqlCommand(insertQuery1, conn);
        SqlDataReader reader1 = cmd1.ExecuteReader();

        if (reader1.HasRows)
        {
            Response.Write(" <script>window.alert('Product Already Exist'); window.location='addsoftware.aspx';</script>");
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
            string insertQuery = "insert into software(man,mod,typ,med,supp,fea,imageurl,pric,imageurl1,imageurl2,stock) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + link + "','" + TextBox17.Text + "','" + link2 + "','" + link3 + "','" + TextBox18.Text + "')";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Software added'); window.location='addsoftware.aspx';</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addsoftware.aspx");
    }
}