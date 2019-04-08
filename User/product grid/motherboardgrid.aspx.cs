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

public partial class User_product_grid_motherboardgrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select DISTINCT motherboard,mbp from cpubuild", conn);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        foreach (GridViewRow g1 in GridView1.Rows)
        {


            string pro = (g1.FindControl("Label1") as Label).Text;
            string mbprice = (g1.FindControl("Label2") as Label).Text;
            int pri = int.Parse(mbprice);
            string ordp = "insert into makecart(userr,product,mb,mbprice) values('" + Session["user"].ToString() + "','motherboard','" + pro + "','" + pri + "')";
            SqlCommand cmddd = new SqlCommand(ordp, conn);
            cmddd.ExecuteNonQuery();


        }
        conn.Close();
        Response.Write(" <script>window.alert('Motherboard Added');</script>");
        Response.Redirect("~/User/startpc.aspx");
    }
}