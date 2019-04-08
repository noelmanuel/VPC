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
using System.Collections.Generic;
using System.IO;

public partial class User_startpc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "select mb from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            string no = reader.GetValue(0).ToString();
            Label1.Text = no;
            Image1.ImageUrl = "~/images/mboff.jpg";                               
            reader.Close();
            Button1.Enabled = false;

            string ramslot = "select mbslot from makecart where userr='" + Session["user"].ToString() + "' AND mb = '" + Label1.Text + "'";
            SqlCommand cmdd2 = new SqlCommand(ramslot, conn);
            SqlDataReader reader2 = cmdd2.ExecuteReader();
            if (reader2.HasRows)
            {
                reader2.Read();
                string noo = reader2.GetValue(0).ToString();
                reader2.Close();
                if(noo=="4")
                {
                    Panel2.Visible = true;
                    Panel1.Visible = false;
                }
                else
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                }

            }
            else
            {
                reader2.Close();
            }
        }
         else
         {
            reader.Close();
            Label1.Text = "ADD MOTHERBOARD";
         }

            

        string insertram = "select ram from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd1 = new SqlCommand(insertram, conn);
        SqlDataReader reader1 = cmd1.ExecuteReader();
        if (reader1.HasRows)
        {
           
            if (reader1.Read())
            {
                string no = reader1.GetValue(0).ToString();
                Label2.Text = no;
                Label4.Text = no;
            }
            else
            {
                Label2.Text = "ADD RAM";
                Label4.Text = "ADD RAM";
            }
            
            


            if (reader1.NextResult())
            {
                string ra1 = reader1.GetValue(0).ToString();
                Label5.Text = ra1;
                Label3.Text = ra1;
                
            }
            else
            {
                Label5.Text = "ADD RAM";
                Label3.Text = "ADD RAM";

            }

            
            if (reader1.NextResult())
            {
                string ra2 = reader1.GetValue(0).ToString();
                Label6.Text = ra2;
                
            }
            else
            {
                Label6.Text = "ADD RAM";
            }
            
            if (reader1.NextResult())
            {

                string ra3 = reader1.GetValue(0).ToString();
                Label7.Text = ra3;
                
            }
            else
            {
              
                Label7.Text = "ADD RAM";
            }
            reader1.Close();
            Button3.Enabled = false;
        }
        else
        {
            reader1.Close();
            Label2.Text = "ADD RAM";
            Label4.Text = "ADD RAM";
            Label5.Text = "ADD RAM";
        }
        conn.Close();
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/motherboardgrid.aspx");
    }

    

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='motherboard' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    
    protected void ram1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram12_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram13_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram14_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void delram11_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram12_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram4_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }
}