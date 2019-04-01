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
public partial class shoppingpage_addcart : System.Web.UI.Page
{
    string cid, str1, sql, str2;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string gg = "select SUM(total_price) from addcart";
            conn.Open();
            SqlCommand cmd = new SqlCommand(gg, conn);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                string noo = reader.GetValue(0).ToString();
                Label7.Text = noo;
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else
            {
                Response.Write(" <script>window.alert('No rows'); window.location='addcart.aspx';</script>");
            }

        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label compname = GridView1.Rows[e.RowIndex].FindControl("Label3") as Label;
        str2 = "delete from addcart where product_model='" + compname.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='addcart.aspx';</script>");
        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
    }
}