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
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;

        
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
            reader.Close();
            string str3 = "delete from cregn where usname='" + Session["user"].ToString() + "' AND uspass='" + TextBox1.Text + "'";
            SqlCommand cmd3 = new SqlCommand(str3, conn);
            cmd3.ExecuteNonQuery();

            string str4 = "delete from login where usname='" + Session["user"].ToString() + "' AND pass='" + TextBox1.Text + "'";
            SqlCommand cmd4 = new SqlCommand(str4, conn);
            cmd4.ExecuteNonQuery();

            Response.Redirect("~/Default.aspx");
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('INVAILD DETAILS');  window.location='editprofile.aspx'</script>");
        }
        conn.Close();

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        if (Label1.Text == "Order")
        {
            string subcredit = "insert into message(userr,name,transaction_type,transaction_no,message) values('" + Session["user"].ToString() + "','" + TextBox3.Text + "','" + Label1.Text + "','" + DropDownList2.SelectedItem + "','" + TextArea1.Value + "')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();

            string subcredit1 = "insert into message1(userr,name,transaction_type,transaction_no,message) values('" + Session["user"].ToString() + "','" + TextBox3.Text + "','" + Label1.Text + "','" + DropDownList2.SelectedItem + "','" + TextArea1.Value + "')";
            SqlCommand cmdd1 = new SqlCommand(subcredit1, conn);
            cmdd1.ExecuteNonQuery();

            conn.Close();
            Response.Write(" <script>window.alert('Message sent');  window.location='editprofile.aspx'</script>");
        }
        else if(Label1.Text == "Build Order")
        {
            string subcredit = "insert into message(userr,name,transaction_type,transaction_no,message) values('" + Session["user"].ToString() + "','" + TextBox3.Text + "','" + Label1.Text + "','" + DropDownList3.SelectedItem + "','" + TextArea1.Value + "')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();

            string subcredit1 = "insert into message1(userr,name,transaction_type,transaction_no,message) values('" + Session["user"].ToString() + "','" + TextBox3.Text + "','" + Label1.Text + "','" + DropDownList3.SelectedItem + "','" + TextArea1.Value + "')";
            SqlCommand cmdd1 = new SqlCommand(subcredit1, conn);
            cmdd1.ExecuteNonQuery();

            conn.Close();
            Response.Write(" <script>window.alert('Message sent');  window.location='editprofile.aspx'</script>");
        }
        else if(Label1.Text == "Expert Order")
        {
            string subcredit = "insert into message(userr,name,transaction_type,transaction_no,message) values('" + Session["user"].ToString() + "','" + TextBox3.Text + "','" + Label1.Text + "','" + DropDownList4.SelectedItem + "','" + TextArea1.Value + "')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();

            string subcredit1 = "insert into message1(userr,name,transaction_type,transaction_no,message) values('" + Session["user"].ToString() + "','" + TextBox3.Text + "','" + Label1.Text + "','" + DropDownList4.SelectedItem + "','" + TextArea1.Value + "')";
            SqlCommand cmdd1 = new SqlCommand(subcredit1, conn);
            cmdd1.ExecuteNonQuery();

            conn.Close();
            Response.Write(" <script>window.alert('Message sent');  window.location='editprofile.aspx'</script>");
        }
        else
        {
            Label1.Text = "general";
            string subcredit = "insert into message(userr,name,transaction_type,transaction_no,message) values('" + Session["user"].ToString() + "','" + TextBox3.Text + "','" + Label1.Text + "','" + Label1.Text + "','" + TextArea1.Value + "')";
            SqlCommand cmdd = new SqlCommand(subcredit, conn);
            cmdd.ExecuteNonQuery();

            string subcredit1 = "insert into message1(userr,name,transaction_type,transaction_no,message) values('" + Session["user"].ToString() + "','" + TextBox3.Text + "','" + Label1.Text + "','" + Label1.Text + "','" + TextArea1.Value + "')";
            SqlCommand cmdd1= new SqlCommand(subcredit1, conn);
            cmdd1.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Message sent');  window.location='editprofile.aspx'</script>");
        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Label1.Text = Button3.Text;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel4.Visible = true;
        Panel3.Visible = false;
        Panel5.Visible = false;
        Label1.Text = Button4.Text;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel5.Visible = true;
        Panel4.Visible = false;
        Panel3.Visible = false;
        Label1.Text = Button5.Text;
    }

    protected void LinkButton31_Click(object sender, EventArgs e)
    {
        Response.Redirect("msginbox.aspx");
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("usersentbox.aspx");
    }
}