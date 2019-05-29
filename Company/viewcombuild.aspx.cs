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

public partial class Company_viewcombuild : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        Label username = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
        int qua = int.Parse(username.Text);

        string str2 = "delete from cpubuildmb where productid='" + qua + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();

        string str3 = "delete from cpubuildgpu where productid='" + qua + "'";
        SqlCommand cmd3 = new SqlCommand(str3, conn);
        cmd3.ExecuteNonQuery();

        string str4 = "delete from cpubuildpro where productid='" + qua + "'";
        SqlCommand cmd4 = new SqlCommand(str4, conn);
        cmd4.ExecuteNonQuery();

        string str5 = "delete from cpubuildcase where productid='" + qua + "'";
        SqlCommand cmd5 = new SqlCommand(str5, conn);
        cmd5.ExecuteNonQuery();

        string str6 = "delete from cpubuildram where productid='" + qua + "'";
        SqlCommand cmd6 = new SqlCommand(str6, conn);
        cmd6.ExecuteNonQuery();

        string str7 = "delete from cpubuildsmps where productid='" + qua + "'";
        SqlCommand cmd7 = new SqlCommand(str7, conn);
        cmd7.ExecuteNonQuery();





        conn.Close();
        Response.Write(" <script>window.alert('Item Deleted'); window.location='viewbuilt.aspx';</script>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "")
        {
            Response.Write(" <script>window.alert('No item to delete'); window.location='viewbuilt.aspx';</script>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string str6 = "delete from cpubuildram where Ram='" + DropDownList1.SelectedItem + "'";
            SqlCommand cmd6 = new SqlCommand(str6, conn);
            cmd6.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Item Deleted'); window.location='viewbuilt.aspx';</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedValue == "")
        {
            Response.Write(" <script>window.alert('No item to delete'); window.location='viewbuilt.aspx';</script>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string str6 = "delete from cpubuildgpu where GPU='" + DropDownList3.SelectedItem + "'";
            SqlCommand cmd6 = new SqlCommand(str6, conn);
            cmd6.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Item Deleted'); window.location='viewbuilt.aspx';</script>");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedValue == "")
        {
            Response.Write(" <script>window.alert('No item to delete'); window.location='viewbuilt.aspx';</script>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string str6 = "delete from cpubuildcase where Casee='" + DropDownList4.SelectedItem + "'";
            SqlCommand cmd6 = new SqlCommand(str6, conn);
            cmd6.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Item Deleted'); window.location='viewbuilt.aspx';</script>");
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedValue == "")
        {
            Response.Write(" <script>window.alert('No item to delete'); window.location='viewbuilt.aspx';</script>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string str7 = "delete from cpubuildpro where Processor='" + DropDownList5.SelectedItem + "'";
            SqlCommand cmd7 = new SqlCommand(str7, conn);
            cmd7.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Item Deleted'); window.location='viewbuilt.aspx';</script>");
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (DropDownList5.SelectedValue == "")
        {
            Response.Write(" <script>window.alert('No item to delete'); window.location='viewbuilt.aspx';</script>");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string str6 = "delete from cpubuildsmps where smps='" + DropDownList6.SelectedItem + "'";
            SqlCommand cmd6 = new SqlCommand(str6, conn);
            cmd6.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Item Deleted'); window.location='viewbuilt.aspx';</script>");
        }
    }
}