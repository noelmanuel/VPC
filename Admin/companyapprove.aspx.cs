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

public partial class Admin_companyapprove : System.Web.UI.Page
{
    string cid,str1,sql,str2;
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
        SqlDataAdapter Adp = new SqlDataAdapter("select * from compregn where status='pending'", conn);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
        

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label compname = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        str1 = "update compregn set status='approved' where compname='" + compname.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str1, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Company Approved'); window.location='companyapprove.aspx';</script>");
        appjs();
        conn.Close();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label compname = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        str2 = "delete from compregn where compname='" + compname.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Company Deleted'); window.location='companyapprove.aspx';</script>");
        appjs();
        conn.Close();
    }
}