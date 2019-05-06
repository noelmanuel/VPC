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

public partial class Admin_approveorder : System.Web.UI.Page
{
    string cid, str1, sql, str2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            appjs();
        }
    }
    public void appjs()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select DISTINCT Transid from orderpp where status='pending'", conn);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView2.DataSource = Dt;
        GridView2.DataBind();


    }



    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label username = GridView2.Rows[e.RowIndex].FindControl("Label1") as Label;
        str1 = "update orderpp set status='approved' where Transid='" + username.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str1, conn);
        cmd.ExecuteNonQuery();

        str2 = "update orderrr set status='approved' where Transid='" + username.Text + "'";
        SqlCommand cmd2 = new SqlCommand(str2, conn);
        cmd2.ExecuteNonQuery();

        Response.Write(" <script>window.alert('Order Approved'); window.location='approveorder.aspx';</script>");
        appjs();
        conn.Close();
    }


    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label username = GridView2.Rows[e.RowIndex].FindControl("Label1") as Label;
        str1 = "update orderpp set status='declined' where Transid='" + username.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str1, conn);
        cmd.ExecuteNonQuery();

        str2 = "update orderrr set status='declined' where Transid='" + username.Text + "'";      
        SqlCommand cmd2 = new SqlCommand(str2, conn);
        cmd2.ExecuteNonQuery();

        Response.Write(" <script>window.alert('Order Declined'); window.location='approveorder.aspx';</script>");
        appjs();
        conn.Close();
    }

}