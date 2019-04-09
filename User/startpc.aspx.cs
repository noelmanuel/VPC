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
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
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
                if (noo == "4")
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




            string gslot = "select gpuslot from makecart where userr='" + Session["user"].ToString() + "' AND mb = '" + Label1.Text + "'";
            SqlCommand cmdd4 = new SqlCommand(gslot, conn);
            SqlDataReader reader4 = cmdd4.ExecuteReader();
            if (reader4.HasRows)
            {
                reader4.Read();
                string noo = reader4.GetValue(0).ToString();
                reader4.Close();
                if (noo == "2")
                {
                    Panel4.Visible = true;
                    Panel3.Visible = false;
                }
                else
                {
                    Panel3.Visible = true;
                    Panel4.Visible = false;
                }

            }
            else
            {
                reader4.Close();
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

            int cnt = 5;
            for (int i = 0; i < cnt; i++)
            {
                if (i == 0)
                {
                    reader1.Read();
                    string no = reader1.GetValue(0).ToString();
                    

                }
                if (i == 1)
                {

                    if (reader1.Read() == true)
                    {
                        string noi = reader1.GetValue(0).ToString();
                        Label4.Text = noi;
                        Label2.Text = noi;
                        Button3.Enabled = false;
                        Button7.Enabled = false;
                        
                    }
                    else
                    {
                        Label4.Text = "ADD RAM";
                        Label2.Text = "ADD RAM";
                        
                    }                                    

                }
                else if (i == 2)
                {
                    if (reader1.Read() == true)
                    {
                        string noii = reader1.GetValue(0).ToString();
                        Label5.Text = noii;
                        Label3.Text = noii;
                        Button5.Enabled = false;
                        Button9.Enabled = false;
                        
                    }
                    else
                    {
                        Label5.Text = "ADD RAM";
                        Label3.Text = "ADD RAM";
                        
                    }
                                    
                }
                else if (i == 3)
                {
                    if(reader1.Read()==true)
                    {
                        string nop = reader1.GetValue(0).ToString();
                        Label6.Text = nop;
                        Button11.Enabled = false;
                        
                    }
                    else
                    {
                        Label6.Text = "ADD RAM";
                        

                    }

                                       
                }
                else if (i == 4)
                {
                    if (reader1.Read() == true)
                    {
                        string nopp = reader1.GetValue(0).ToString();
                        Label7.Text = nopp;
                        Button13.Enabled = false;
                        

                    }
                    else
                    {
                        Label7.Text = "ADD RAM";
                        
                    }

                    
                    
                }
                else
                {
                    
                    Label2.Text = "ADD RAM";
                    Label3.Text = "ADD RAM";
                    Label4.Text = "ADD RAM";
                    Label5.Text = "ADD RAM";
                    Label6.Text = "ADD RAM";
                    Label7.Text = "ADD RAM";
                    
                }
                


            }

            reader1.Close();
        }
        else
        {
            Label2.Text = "ADD RAM";
            Label3.Text = "ADD RAM";
            Label4.Text = "ADD RAM";
            Label5.Text = "ADD RAM";
            Label6.Text = "ADD RAM";
            Label7.Text = "ADD RAM";
            reader1.Close();
        }
        
        string insertgpu = "select gpu from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd55 = new SqlCommand(insertgpu, conn);
        SqlDataReader reader55 = cmd55.ExecuteReader();
        if (reader55.HasRows)
        {
            
            int cnt = 3;
            for (int i = 0; i < cnt; i++)
            {
                if (i == 0)
                {
                    
                    reader55.Read();
                    string item1 = reader55.GetValue(0).ToString();

                }
                if (i == 1)
                {

                    if (reader55.Read() == true)
                    {
                        string item2 = reader55.GetValue(0).ToString();
                        Label8.Text = item2;
                        Label9.Text = item2;
                        Button15.Enabled = false;
                        Button17.Enabled = false;
                    }
                    else
                    {
                        Label8.Text = "ADD GPU";
                        Label9.Text = "ADD GPU";
                    }

                }
                else if (i == 2)
                {
                    if (reader55.Read() == true)
                    {
                        string item3 = reader55.GetValue(0).ToString();
                        Label10.Text = item3;
                        
                        Button19.Enabled = false;
                        
                    }
                    else
                    {
                        Label10.Text = "ADD GPU";
                        
                    }

                }
                
                else
                {
                    
                    Label8.Text = "ADD GPU";
                    Label9.Text = "ADD GPU";
                    Label10.Text = "ADD GPU";



                }
                


            }

            reader55.Close();
        }
        


        else
        {
            
            
            Label2.Text = "ADD RAM";
            Label3.Text = "ADD RAM";
            Label4.Text = "ADD RAM";
            Label5.Text = "ADD RAM";
            Label6.Text = "ADD RAM";
            Label7.Text = "ADD RAM";
            reader55.Close();
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
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label2.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram12_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label3.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label4.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label5.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label6.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram4_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label7.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void gpu19_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/gpugrid.aspx");
    }

    protected void gpu17_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/gpugrid.aspx");
    }

    protected void gpu15_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/gpugrid.aspx");
    }

    protected void delgpu20_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label10.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delgpu18_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label9.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delgpu16_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label8.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }
}