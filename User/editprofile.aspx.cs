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

public partial class User_editprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("orders.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("buildorders.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("expertorders.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("edituserdetails.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string insertQuery = "select uspass,usans,usques from cregn where usname='" + Session["user"].ToString() + "' AND uspass='" + TextBox1.Text + "' AND usques='" + DropDownList1.SelectedItem + "' AND usans='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            string str3 = "delete from cregn where usname='" + Session["user"].ToString() + "' AND uspass='" + TextBox1.Text + "'";
            SqlCommand cmd3 = new SqlCommand(str3, conn);
            cmd3.ExecuteNonQuery();

            string str4 = "delete from login where usname='" + Session["user"].ToString() + "' AND uspass='" + TextBox1.Text + "'";
            SqlCommand cmd4 = new SqlCommand(str4, conn);
            cmd4.ExecuteNonQuery();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('INVAILD DETAILS');  window.location='editprofile.aspx'</script>");
        }
        conn.Close();

    }
}