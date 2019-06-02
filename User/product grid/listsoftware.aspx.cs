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
using System.Text.RegularExpressions;

public partial class User_product_grid_listsoftware : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            appjs();
        }
    }
    public void appjs()
    {
        string catt = "software";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select DISTINCT software,softwareprice from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'", conn);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView2.DataSource = Dt;
        GridView2.DataBind();


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        if (e.CommandName == "Insert")
        {
            Panel1.Visible = true;



            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();



            GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            Label pro = (Label)row.FindControl("Label1");


            string gg = "select * from software where man='" + pro.Text + "'";
            SqlCommand cmdd = new SqlCommand(gg, conn);
            SqlDataReader readerr = cmdd.ExecuteReader();

            if (readerr.HasRows)
            {
                readerr.Read();
                Label11.Text = readerr.GetString(3);
                Label12.Text = readerr.GetString(4);
                Label13.Text = readerr.GetString(5);
                Label14.Text = readerr.GetString(6);
                
                readerr.Close();

            }

            string major34 = "";
            string q3 = "select typ from software where man='" + pro.Text + "'";
            SqlCommand cmd3 = new SqlCommand(q3, conn);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            if (reader3.HasRows)
            {
                reader3.Read();
                string noo3 = reader3.GetValue(0).ToString();
                reader3.Close();
                
                if(noo3== "Photography" || noo3== "Design & Illustration")
                {
                    
                    string q4 = "select gpu from makecart where userr ='" + Session["user"].ToString() + "' AND gpu != '" + major34 + "'";
                    SqlCommand cmd4 = new SqlCommand(q4, conn);
                    SqlDataReader reader4 = cmd4.ExecuteReader();
                    if (reader4.HasRows)
                    {
                        reader4.Close();
                        string q5 = "select ram from makecart where userr ='" + Session["user"].ToString() + "' AND ram != '" + major34 + "'";
                        SqlCommand cmd5 = new SqlCommand(q5, conn);
                        SqlDataReader reader5 = cmd5.ExecuteReader();
                        if (reader5.HasRows)
                        {
                            reader5.Read();
                            string noo5 = reader5.GetValue(0).ToString();
                            reader5.Close();
                            string q6 = "select siz from ram where man='" + noo5 + "'";
                            SqlCommand cmd6 = new SqlCommand(q6, conn);
                            SqlDataReader reader6 = cmd6.ExecuteReader();
                            if (reader6.HasRows)
                            {
                                reader6.Read();
                                string noo6 = reader6.GetValue(0).ToString();
                                string resultString6 = Regex.Match(noo6, @"\d+").Value;
                                int mbmemory6 = int.Parse(resultString6);
                                reader6.Close();
                                if(mbmemory6<8)
                                {
                                    Label23.ForeColor = System.Drawing.Color.Orange;
                                    Label23.Text = "Warning: Selected software minimum need 8GB RAM for better performance.";
                                }
                                else
                                {
                                    Label23.ForeColor = System.Drawing.Color.Black;
                                    Label23.Text = "No Issues";
                                }
                            }
                            else
                            {
                                Label23.ForeColor = System.Drawing.Color.Black;
                                Label23.Text = "RAM feature undefined";
                            }
                        }
                        else
                        {
                            Label23.ForeColor = System.Drawing.Color.Red;
                            Label23.Text = "Without adding RAM selected software wont work";
                        }
                    }
                    else
                    {
                        Label23.ForeColor = System.Drawing.Color.Orange;
                        Label23.Text = "Warning: Selected software need graphic card for better quality and other features.";

                    }
                }
                else if (noo3 == "Audio & Video")
                {
                    string q8 = "select pro from makecart where userr ='" + Session["user"].ToString() + "' AND pro != '" + major34 + "'";
                    SqlCommand cmd8 = new SqlCommand(q8, conn);
                    SqlDataReader reader8 = cmd8.ExecuteReader();
                    if (reader8.HasRows)
                    {
                        reader8.Read();
                        string noo8 = reader8.GetValue(0).ToString();
                        reader8.Close();

                        string q9 = "select pric from processor where man='" + noo8 + "'";
                        SqlCommand cmd9 = new SqlCommand(q9, conn);
                        SqlDataReader reader9 = cmd9.ExecuteReader();
                        if (reader9.HasRows)
                        {
                            reader9.Read();
                            string noo9 = reader9.GetValue(0).ToString();
                            reader9.Close();
                            int proprice = int.Parse(noo9);

                            if(proprice>8000 && proprice<13000)
                            {
                                Label23.ForeColor = System.Drawing.Color.Orange;
                                Label23.Text = "Warning: Selected software may experience low performance issue";
                            }
                            else if(proprice < 8000)
                            {
                                Label23.ForeColor = System.Drawing.Color.Red;
                                Label23.Text = "This software wont work on this selected build";
                            }
                            else
                            {
                                Label23.ForeColor = System.Drawing.Color.Black;
                                Label23.Text = "No Issues";
                            }

                        }
                        else
                        {
                            Label23.ForeColor = System.Drawing.Color.Black;
                            Label23.Text = "Processor feature undefined";
                        }

                    }
                    else
                    {
                        Label23.ForeColor = System.Drawing.Color.Orange;
                        Label23.Text = "Warning: Select Processor for testing compactibility";
                    }
                }
                else
                {
                    Label23.ForeColor = System.Drawing.Color.Black;
                    Label23.Text = "No Issues";
                }
            }
            else
            {
                Label23.ForeColor = System.Drawing.Color.Black;
                Label23.Text = "Software feature undefined";
            }


        }
    }




    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string catt = "software";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label username = GridView2.Rows[e.RowIndex].FindControl("Label1") as Label;
        string str2 = "delete from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "' AND software= '" + username.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item Deleted'); window.location='listsoftware.aspx';</script>");
        appjs();
        conn.Close();
    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("~/User/startpc.aspx");
    }
}