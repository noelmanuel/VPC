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

public partial class Company_companyeditprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = false;
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void LinkButton31_Click(object sender, EventArgs e)
    {
        Response.Redirect("compmsginbox.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("editcompanydetails.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string subcredit = "insert into compmessage(userr,name,message) values('" + Session["comp"].ToString() + "','" + TextBox3.Text + "','" + TextArea1.Value + "')";
        SqlCommand cmdd = new SqlCommand(subcredit, conn);
        cmdd.ExecuteNonQuery();

        string subcredit1 = "insert into compmessage1(userr,name,message) values('" + Session["comp"].ToString() + "','" + TextBox3.Text + "','" + TextArea1.Value + "')";
        SqlCommand cmdd1 = new SqlCommand(subcredit1, conn);
        cmdd1.ExecuteNonQuery();

        conn.Close();
        Response.Write(" <script>window.alert('Message sent');  window.location='companyeditprofile.aspx'</script>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string insertQuery = "select comppass,compans,compques from compregn where compusname='" + Session["comp"].ToString() + "' AND comppass='" + TextBox1.Text + "' AND compques='" + DropDownList1.SelectedItem + "' AND compans='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            string str3 = "delete from compregn where compusname='" + Session["comp"].ToString() + "' AND comppass='" + TextBox1.Text + "'";
            SqlCommand cmd3 = new SqlCommand(str3, conn);
            cmd3.ExecuteNonQuery();

            string str4 = "delete from login where compusname='" + Session["comp"].ToString() + "' AND comppass='" + TextBox1.Text + "'";
            SqlCommand cmd4 = new SqlCommand(str4, conn);
            cmd4.ExecuteNonQuery();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('INVAILD DETAILS');  window.location='companyeditprofile.aspx'</script>");
        }
        conn.Close();
    }

    protected void LinkButton312_Click(object sender, EventArgs e)
    {
        Response.Redirect("compsentbox.aspx");
    }
}