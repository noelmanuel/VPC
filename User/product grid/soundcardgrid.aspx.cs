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

public partial class User_product_grid_soundcardgrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select man,pric from soundcard", conn);
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

                string ordp = "insert into makecart(userr,product,mb,mbprice,mbslot,gpuslot,soundcard,soundcardprice) values('" + Session["user"].ToString() + "','soundcard','" + no + "','" + gputot4 + "','" + gputot3 + "','" + gputot + "','" + pro.Text + "','" + pri + "')";
                SqlCommand cmddd = new SqlCommand(ordp, conn);
                cmddd.ExecuteNonQuery();
                conn.Close();
                Response.Write(" <script>window.alert('Soundcard Added');</script>");
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
            Label pro1 = (Label)row.FindControl("Label2");


            string gg = "select * from soundcard where man='" + pro.Text + "'";
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
                int qua1 = int.Parse(pro1.Text);


                if (qua < 4000 && qua1 < 1500)
                {
                    Label23.ForeColor = System.Drawing.Color.Orange;
                    Label23.Text = "Warning: User may experience slight noise";
                }
                else
                {
                    Label23.ForeColor = System.Drawing.Color.Black;
                    Label23.Text = "Selected motherboard has better audio technology than this soundcard";
                }
                reader3.Close();

            }



        }
    }
}