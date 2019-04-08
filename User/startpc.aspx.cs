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

public partial class User_startpc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "select mb from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                string no = reader.GetValue(0).ToString();
                Label1.Text = no;
                Image1.ImageUrl = "~/images/mboff.jpg";
                reader.Close();
            Button1.Enabled = false;
            }
            else
            {
                Label1.Text = "ADD MOTHERBOARD";
            }
            conn.Close();
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/motherboardgrid.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write(" <script>window.alert('Motherboard Added');</script>");
    }
}