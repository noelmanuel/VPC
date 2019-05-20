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
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;

    }

    protected void user(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void company(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Panel1.Visible = false;
        Panel2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery1 = "select uspass from cregn where usname='" + TextBox1.Text + "' AND email='" + TextBox2.Text + "' AND usques='" + DropDownList1.SelectedItem + "' AND usans='" + TextBox3.Text + "'";
        SqlCommand cmd1 = new SqlCommand(insertQuery1, conn);
        SqlDataReader readerm = cmd1.ExecuteReader();

        if(readerm.HasRows)
        {
            
            readerm.Read();
            Label3.Text = readerm.GetValue(0).ToString();
            Panel1.Visible = true;
        }
        
        else
        {
            readerm.Close();
            Response.Write(" <script>window.alert('INVAILD DETAILS');  window.location='forgot.aspx'</script>");
            conn.Close();
        }
        readerm.Close();
        conn.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/forgot.aspx");
    }

    

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "select comppass from compregn where compusname='" + TextBox5.Text + "' AND compemail='" + TextBox6.Text + "' AND compques='" + DropDownList2.SelectedItem + "' AND compans='" + TextBox7.Text + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            Panel4.Visible = true;
            reader.Read();
            Label4.Text = reader.GetValue(0).ToString();
            reader.Close();
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('INVAILD DETAILS');  window.location='forgot.aspx'</script>");
        }
        conn.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/forgot.aspx");
    }
}