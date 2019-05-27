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

public partial class User_product_grid_ramgrid : System.Web.UI.Page
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

                SqlDataAdapter Adp = new SqlDataAdapter("select Ram,Price from cpubuildram where productid='" + notest1 + "'", conn);
                DataTable Dt = new DataTable();
                Adp.Fill(Dt);
                GridView1.DataSource = Dt;
                GridView1.DataBind();

               


            }
            else
            {
                Response.Write(" <script>window.alert('No Compactiable Memory Sticks Found');</script>");
                Response.Redirect("~/User/startpc.aspx");
            }



            
        }
        else
        {
            Response.Write(" <script>window.alert('No Compactiable Memory Sticks Found');</script>");
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

                string ordp = "insert into makecart(userr,product,mb,mbprice,mbslot,ram,ramprice,gpuslot) values('" + Session["user"].ToString() + "','ram','" + no + "','" + gputot4 + "','" + gputot3 + "','" + pro.Text + "','" + pri + "','" + gputot + "')";
                SqlCommand cmddd = new SqlCommand(ordp, conn);
                cmddd.ExecuteNonQuery();
                conn.Close();
                Response.Write(" <script>window.alert('RAM Added');</script>");
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


            string gg = "select * from ram where man='" + pro.Text + "'";
            SqlCommand cmdd = new SqlCommand(gg, conn);
            SqlDataReader readerr = cmdd.ExecuteReader();

            if (readerr.HasRows)
            {
                readerr.Read();
                Label11.Text = readerr.GetString(5);
                Label12.Text = readerr.GetString(6);
                Label13.Text = readerr.GetString(7);
                Label14.Text = readerr.GetString(8);
                Label15.Text = readerr.GetString(9);
                Label16.Text = readerr.GetString(10);
                readerr.Close();

            }

            string major = "";
            int totsiz = 0;
            string q3 = "select DISTINCT mb from makecart where userr ='" + Session["user"].ToString() + "' AND mb != '" + major + "'";
            SqlCommand cmd3 = new SqlCommand(q3, conn);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            if (reader3.HasRows)
            {
                reader3.Read();
                string noo3 = reader3.GetValue(0).ToString();
                reader3.Close();

                string q4 = "select max from motherboard where man='" + noo3 + "'";
                SqlCommand cmd4 = new SqlCommand(q4, conn);
                SqlDataReader reader4 = cmd4.ExecuteReader();
                if (reader4.HasRows)
                {
                    reader4.Read();
                    string noo4 = reader4.GetValue(0).ToString();

                    string resultString = Regex.Match(noo4, @"\d+").Value;
                    int mbmemory = int.Parse(resultString);
                    reader4.Close();

                    
                    string major5 = "";
                    string q5 = "select ram from makecart where ram != '" + major5 + "'";
                    SqlCommand cmd5 = new SqlCommand(q5, conn);
                    SqlDataReader reader5 = cmd5.ExecuteReader();
                    if (reader5.HasRows)
                    {
                        ArrayList al = new ArrayList();
                        int n = 0;
                        int totm = 0;
                        while (reader5.Read())
                        {
                            al.Insert(n, reader5.GetValue(0).ToString());
                            n++;


                        }
                        
                        for (int i = 0; i < al.Count; i++)
                        {
                            reader5.Close();
                            string q6 = "select siz from ram where man= '" + al[i] + "'";
                            SqlCommand cmd6 = new SqlCommand(q6, conn);
                            SqlDataReader reader6 = cmd6.ExecuteReader();

                            if (reader6.HasRows)
                            {
                                reader6.Read();
                                string noo6 = reader6.GetValue(0).ToString();
                                string resultString6 = Regex.Match(noo6, @"\d+").Value;
                                int mbmemory6 = int.Parse(resultString6);
                                totm = totm+mbmemory6;
                                
                                if(mbmemory<totm)
                                {
                                    Label23.ForeColor = System.Drawing.Color.Orange;
                                    Label23.Text = "Not compactiable: Total memory size exceed the motherboard memory";
                                    Label300.Text = totm.ToString();
                                }
                                else
                                {
                                    Label23.ForeColor = System.Drawing.Color.Black;
                                    Label23.Text = "No Issues";
                                    Label300.Text = totm.ToString();
                                }

                            }
                            reader6.Close();

                        }


                    }

                    else
                    {
                        Label23.ForeColor = System.Drawing.Color.Black;
                        Label23.Text = "No RAM Found";
                    }



                }
                else
                {
                    Label23.ForeColor = System.Drawing.Color.Black;
                    Label23.Text = "No Motherboard Found";
                }




                    

            }
            else
            {
                Label23.ForeColor = System.Drawing.Color.Black;
                Label23.Text = "No Motherboard Found";

            }


        }
    }
}