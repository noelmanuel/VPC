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
using System.Drawing;
using System.Text.RegularExpressions;

public partial class User_product_grid_smpsgrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string major1 = "";
        string upttest = "select mb from makecart where userr='" + Session["user"].ToString() + "' AND mb !='" + major1 + "'";
        SqlCommand cmdtest = new SqlCommand(upttest, conn);
        SqlDataReader readertest = cmdtest.ExecuteReader();
        if (readertest.HasRows)
        {
            readertest.Read();
            string notest = readertest.GetValue(0).ToString();
            readertest.Close();


            string upttest1 = "select productid from cpubuildmb where Motherboard='" + notest + "'";
            SqlCommand cmdtest1 = new SqlCommand(upttest1, conn);
            SqlDataReader readertest1 = cmdtest1.ExecuteReader();
            if (readertest1.HasRows)
            {
                readertest1.Read();
                string notest1 = readertest1.GetValue(0).ToString();
                readertest1.Close();

                SqlDataAdapter Adp = new SqlDataAdapter("select smps,Price from cpubuildsmps where productid='" + notest1 + "'", conn);
                DataTable Dt = new DataTable();
                Adp.Fill(Dt);
                GridView1.DataSource = Dt;
                GridView1.DataBind();

            }
            else
            {
                Response.Write(" <script>window.alert('No Compactiable SMPS Found');</script>");
                Response.Redirect("~/User/startpc.aspx");
            }




        }
        else
        {
            Response.Write(" <script>window.alert('No Compactiable SMPS Found');</script>");
            Response.Redirect("~/User/startpc.aspx");
        }
    }






    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        if (e.CommandName == "Select")
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string major = "";
            string uptmb = "select mb from makecart where userr='" + Session["user"].ToString() + "' AND mb !='" + major + "'";
            SqlCommand cmd25 = new SqlCommand(uptmb, conn);
            SqlDataReader reader21 = cmd25.ExecuteReader();
            if (reader21.HasRows)
            {
                reader21.Read();
                string no = reader21.GetValue(0).ToString();
                reader21.Close();

                string ramslot = "select mbslot from makecart where userr='" + Session["user"].ToString() + "' AND mb = '" + no + "'";
                SqlCommand cmdd2 = new SqlCommand(ramslot, conn);
                SqlDataReader reader2 = cmdd2.ExecuteReader();
                reader2.Read();
                string gym = reader2.GetValue(0).ToString();
                int gputot3 = int.Parse(gym);
                reader2.Close();

                string gslot = "select gpuslot from makecart where userr='" + Session["user"].ToString() + "' AND mb = '" + no + "'";
                SqlCommand cmdd4 = new SqlCommand(gslot, conn);
                SqlDataReader reader4 = cmdd4.ExecuteReader();
                reader4.Read();
                string noo = reader4.GetValue(0).ToString();
                int gputot = int.Parse(noo);
                reader4.Close();

                string q3 = "select mbprice from makecart where userr ='" + Session["user"].ToString() + "' AND mb = '" + no + "'";
                SqlCommand cmd3 = new SqlCommand(q3, conn);
                SqlDataReader reader3 = cmd3.ExecuteReader();
                reader3.Read();
                string gym3 = reader3.GetValue(0).ToString();
                int gputot4 = int.Parse(gym3);
                reader3.Close();
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

                Label pro = (Label)row.FindControl("Label1");
                Label mbprice = (Label)row.FindControl("Label2");

                int pri = int.Parse(mbprice.Text);

                string ordp = "insert into makecart(userr,product,mb,mbprice,mbslot,gpuslot,powerr,powerprice) values('" + Session["user"].ToString() + "','smps','" + no + "','" + gputot4 + "','" + gputot3 + "','" + gputot + "','" + pro.Text + "','" + pri + "')";
                SqlCommand cmddd = new SqlCommand(ordp, conn);
                cmddd.ExecuteNonQuery();
                conn.Close();
                Response.Write(" <script>window.alert('SMPS Added');</script>");
                Response.Redirect("~/User/startpc.aspx");
            }
        }
        else if (e.CommandName == "Insert")
        {
            Panel1.Visible = true;



            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();



            GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            Label pro = (Label)row.FindControl("Label1");


            string gg = "select * from smps where man='" + pro.Text + "'";
            SqlCommand cmdd = new SqlCommand(gg, conn);
            SqlDataReader readerr = cmdd.ExecuteReader();

            if (readerr.HasRows)
            {
                readerr.Read();
                Label11.Text = readerr.GetString(4);
                Label12.Text = readerr.GetString(5);
                Label13.Text = readerr.GetString(6);
                Label14.Text = readerr.GetString(7);
                Label15.Text = readerr.GetString(8);
                readerr.Close();

            }

            string major = "";
            string q3 = "select mbprice from makecart where userr ='" + Session["user"].ToString() + "' AND mb != '" + major + "'";
            SqlCommand cmd3 = new SqlCommand(q3, conn);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            if (reader3.HasRows)
            {
                reader3.Read();
                string noo3 = reader3.GetValue(0).ToString();
                int qua = int.Parse(noo3);
                reader3.Close();
                if (qua > 9000)
                {

                    string major33 = "";
                    string q33 = "select count(gpu) from makecart where userr ='" + Session["user"].ToString() + "' AND gpu != '" + major33 + "'";
                    SqlCommand cmd33 = new SqlCommand(q33, conn);
                    SqlDataReader reader33 = cmd33.ExecuteReader();
                    if (reader33.HasRows)
                    {
                        reader33.Read();
                        string noo33 = reader33.GetValue(0).ToString();
                        int gpucount = int.Parse(noo33);
                        reader33.Close();
                        if (gpucount == 2)
                        {
                            string major34 = "";
                            string q34 = "select sum(gpuprice) from makecart where userr ='" + Session["user"].ToString() + "' AND gpu != '" + major34 + "'";
                            SqlCommand cmd34 = new SqlCommand(q34, conn);
                            SqlDataReader reader34 = cmd34.ExecuteReader();
                            if (reader34.HasRows)
                            {
                                reader34.Read();
                                string noo34 = reader34.GetValue(0).ToString();
                                int gpucost = int.Parse(noo34);
                                reader34.Close();
                                if (gpucost > 15000)
                                {
                                    string q35 = "select wat from smps where man='" + pro.Text + "'";
                                    SqlCommand cmd35 = new SqlCommand(q35, conn);
                                    SqlDataReader reader35 = cmd35.ExecuteReader();
                                    if (reader35.HasRows)
                                    {
                                        reader35.Read();
                                        string noo35 = reader35.GetValue(0).ToString();
                                        string resultString = Regex.Match(noo35, @"\d+").Value;
                                        
                                        int walt = int.Parse(resultString);
                                        reader35.Close();
                                        if (walt < 750)
                                        {
                                            Label23.ForeColor = System.Drawing.Color.Orange;
                                            Label23.Text = "Warning: Both selected GPU's fetch more power so you need higher power";
                                        }
                                        else
                                        {
                                            Label23.ForeColor = System.Drawing.Color.Black;
                                            Label23.Text = "No Issues";
                                        }
                                    }
                                    else
                                    {
                                        Label23.ForeColor = System.Drawing.Color.Orange;
                                        Label23.Text = "Warning: No SMPS Found";
                                    }
                                }
                                else
                                {
                                    Label23.ForeColor = System.Drawing.Color.Black;
                                    Label23.Text = "No Issues";
                                }
                            }
                        }
                        else if (gpucount == 1)
                        {
                            string major34 = "";
                            string q34 = "select gpuprice from makecart where userr ='" + Session["user"].ToString() + "' AND gpu != '" + major34 + "'";
                            SqlCommand cmd34 = new SqlCommand(q34, conn);
                            SqlDataReader reader34 = cmd34.ExecuteReader();
                            if (reader34.HasRows)
                            {
                                reader34.Read();
                                string noo34 = reader34.GetValue(0).ToString();
                                int gpucost = int.Parse(noo34);
                                reader34.Close();
                                if (gpucost > 15000)
                                {
                                    
                                    string q35 = "select wat from smps where man='" + pro.Text + "'";
                                    SqlCommand cmd35 = new SqlCommand(q35, conn);
                                    SqlDataReader reader35 = cmd35.ExecuteReader();
                                    if (reader35.HasRows)
                                    {
                                        reader35.Read();
                                        string noo35 = reader35.GetValue(0).ToString();
                                        string resultString = Regex.Match(noo35, @"\d+").Value;
                                        
                                        int walt = int.Parse(resultString);
                                        reader35.Close();
                                        if (walt < 750)
                                        {
                                            Label23.ForeColor = System.Drawing.Color.Orange;
                                            Label23.Text = "Warning: Selected GPU fetch more power so you need higher power";
                                        }
                                        else
                                        {
                                            Label23.ForeColor = System.Drawing.Color.Black;
                                            Label23.Text = "No Issues";
                                        }
                                    }
                                    else
                                    {
                                        Label23.ForeColor = System.Drawing.Color.Orange;
                                        Label23.Text = "Warning: No SMPS Found";
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
                                    Label23.Text = "No Issues";
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
                            Label23.Text = "No Issues";
                        }
                       
                }
                else
                {
                    Label23.ForeColor = System.Drawing.Color.Black;
                    Label23.Text = "No Issues";
                }
                reader3.Close();

            }
            else
            {
                Label23.ForeColor = System.Drawing.Color.Black;
                Label23.Text = "No Issues";
            }




        }
        



    

}

    
}