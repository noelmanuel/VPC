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

public partial class Admin_Product_admin_addnet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into net(man,par,inte,pro,fea,pri) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(" <script>window.alert('Network Card added'); window.location='addnet.aspx';</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addnet.aspx");
    }
}