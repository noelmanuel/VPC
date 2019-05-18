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

public partial class User_usersentbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string insertQuery = "select * from message";
        SqlCommand cmdqw = new SqlCommand(insertQuery, conn);
        SqlDataReader readerqw = cmdqw.ExecuteReader();
        if (readerqw.HasRows)
        {
            Panel1.Visible = false;
            
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        else
        {
            Panel1.Visible = false;
          
            Label6.Text = "No Sent Messages";
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Select")
        {
            Panel1.Visible = true;


            //Determine the RowIndex of the Row whose Button was clicked.
            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //Reference the GridView Row.
            GridViewRow row = GridView1.Rows[rowIndex];

            //Fetch value of Name.

            string pro = (row.FindControl("Label1") as Label).Text;
            string pro1 = (row.FindControl("Label2") as Label).Text;


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            string insertQuery = "select message from message where userr='" + pro1 + "' AND Id='" + pro + "'";
            SqlCommand cmdqw = new SqlCommand(insertQuery, conn);
            SqlDataReader readerqw = cmdqw.ExecuteReader();
            if (readerqw.HasRows && readerqw.Read())
            {
                string no = readerqw.GetValue(0).ToString();
                TextArea1.Value = no;
            }
            else
            {
                TextArea1.Visible = false;
            }
            Panel1.Visible = true;
            readerqw.Close();
        }

        


    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Panel1.Visible = true;
       
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        Label compname = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        string str2 = "delete from message where Id='" + compname.Text + "' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Message Deleted'); window.location='usersentbox.aspx';</script>");
        conn.Close();


    }




   
}