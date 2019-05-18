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

public partial class Company_editcompanydetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
        GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        Label username = GridView1.Rows[e.RowIndex].FindControl("Label11") as Label;
        TextBox name = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        TextBox password = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
        TextBox birthday = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
        TextBox gender = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
        TextBox email = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
        TextBox phone = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;

        string str1 = "update compregn set compname='" + name.Text + "',comppass='" + password.Text + "',compweb='" + birthday.Text + "',comploc='" + gender.Text + "',compemail='" + email.Text + "',compphone='" + phone.Text + "' where compusname='" + username.Text + "'";
        SqlCommand cmd = new SqlCommand(str1, conn);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

        string str2 = "update login set pass='" + password.Text + "' where usname='" + username.Text + "'";
        SqlCommand cmd2 = new SqlCommand(str2, conn);
        cmd2.ExecuteNonQuery();

        conn.Close();
        Response.Write(" <script>window.alert('Details modified'); window.location='editcompanydetails.aspx';</script>");
    }


}