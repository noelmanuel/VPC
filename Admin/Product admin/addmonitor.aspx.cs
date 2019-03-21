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

public partial class Admin_Product_admin_addmonitor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into monitor(man,mod,par,scr,rec,wid,aspe,vie,dis,bri,contr,res,refr,pan,led,bui,dvi,hdm) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "')";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(" <script>window.alert('Monitor added'); window.location='addmonitor.aspx';</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addmonitor.aspx");
    }
}