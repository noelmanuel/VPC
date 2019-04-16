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


public partial class forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "select uspass from cregn where usname='" + TextBox1.Text + "' AND email='" + TextBox2.Text + "' AND usques='" + DropDownList1.SelectedItem + "' AND usans='" + TextBox3.Text + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            Panel1.Visible = true;
            reader.Read();
            string no = reader.GetValue(0).ToString();
            reader.Close();
            TextBox4.Text = no;
            conn.Close();
        }
        else
        {
            reader.Close();
            Label1.Text = "Invaild details";
            Response.Redirect("~/forgot.aspx");
        }
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/forgot.aspx");
    }
}