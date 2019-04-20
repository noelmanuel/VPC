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
public partial class Admin_manageuser : System.Web.UI.Page
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
        TextBox ques = GridView1.Rows[e.RowIndex].FindControl("TextBox7") as TextBox;
        TextBox ans = GridView1.Rows[e.RowIndex].FindControl("TextBox8") as TextBox;
        TextBox status = GridView1.Rows[e.RowIndex].FindControl("TextBox9") as TextBox;
        string str1 = "update cregn set uname='" + name.Text + "',uspass='" + password.Text + "',usbday='" + birthday.Text + "',usgen='" + gender.Text + "',email='" + email.Text + "',usphone='" + phone.Text + "',usques='" + ques.Text + "',usans='" + ans.Text + "',status='" + status.Text + "' where usname='" + username.Text + "'";
        SqlCommand cmd = new SqlCommand(str1, conn);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
        conn.Close();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label usernamee = GridView1.Rows[e.RowIndex].FindControl("Label10") as Label;
        string str3 = "delete from cregn where usname='" + usernamee.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str3, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(" <script>window.alert('User Deleted'); window.location='manageuser.aspx';</script>");
    }
}