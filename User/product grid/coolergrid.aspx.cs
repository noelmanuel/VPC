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
public partial class User_product_grid_coolergrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select man,pric from cooler", conn);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
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

                string ordp = "insert into makecart(userr,product,mb,mbprice,mbslot,gpuslot,cooler,coolerprice) values('" + Session["user"].ToString() + "','cooler','" + no + "','" + gputot4 + "','" + gputot3 + "','" + gputot + "','" + pro.Text + "','" + pri + "')";
                SqlCommand cmddd = new SqlCommand(ordp, conn);
                cmddd.ExecuteNonQuery();
                conn.Close();
                Response.Write(" <script>window.alert('Cooler Added');</script>");
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


            string gg = "select * from cooler where man='" + pro.Text + "'";
            SqlCommand cmdd = new SqlCommand(gg, conn);
            SqlDataReader readerr = cmdd.ExecuteReader();

            if (readerr.HasRows)
            {
                readerr.Read();
                Label11.Text = readerr.GetString(3);
                Label12.Text = readerr.GetString(4);
                Label13.Text = readerr.GetString(5);
                Label14.Text = readerr.GetString(6);
                Label15.Text = readerr.GetString(7);
                readerr.Close();


            }

            string major = "";
            string q3 = "select pro from makecart where userr ='" + Session["user"].ToString() + "' AND pro != '" + major + "'";
            SqlCommand cmd3 = new SqlCommand(q3, conn);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            if (reader3.HasRows)
            {
                reader3.Read();
                string noo3 = reader3.GetValue(0).ToString();
                reader3.Close();

                string q4 = "select sup from cooler where man='" + pro.Text + "'";
                SqlCommand cmd4 = new SqlCommand(q4, conn);
                SqlDataReader reader4 = cmd4.ExecuteReader();
                if (reader4.HasRows)
                {
                    reader4.Read();
                    string noo4 = reader4.GetValue(0).ToString();
                    reader4.Close();

                    string q5 = "select soc from processor where man='" + noo3 + "'";
                    SqlCommand cmd5 = new SqlCommand(q5, conn);
                    SqlDataReader reader5 = cmd5.ExecuteReader();
                    if (reader5.HasRows)
                    {

                        reader5.Read();
                        string noo5 = reader5.GetValue(0).ToString();
                        reader5.Close();

                        bool contains = noo4.Contains(noo5);

                        if (contains == true)
                        {
                            Label23.ForeColor = System.Drawing.Color.Black;
                            Label23.Text = "No Issues";
                        }
                        else
                        {
                            Label23.ForeColor = System.Drawing.Color.Red;
                            Label23.Text = "Selected CPU Coolers socket is incompatible";
                            

                        }

                    }
                    else
                    {
                        Label23.ForeColor = System.Drawing.Color.Orange;
                        Label23.Text = "Warning: Processor not selected";

                    }


                }
                else
                {
                    Label23.ForeColor = System.Drawing.Color.Orange;
                    Label23.Text = "Warning: CPU Cooler not selected";
                }

            }
            else
            {
                Label23.ForeColor = System.Drawing.Color.Orange;
                Label23.Text = "Warning: Processor not selected";
            }




        }
    }
}