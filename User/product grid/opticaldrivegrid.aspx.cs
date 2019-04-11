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
public partial class User_product_grid_opticaldrivegrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select DISTINCT cd,cdp from cpubuild", conn);
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
            GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

            Label pro = (Label)row.FindControl("Label1");
            Label mbprice = (Label)row.FindControl("Label2");

            int pri = int.Parse(mbprice.Text);

            string ordp = "insert into makecart(userr,product,opticaldrive,opticaldriveprice) values('" + Session["user"].ToString() + "','optical drive','" + pro.Text + "','" + pri + "')";
            SqlCommand cmddd = new SqlCommand(ordp, conn);
            cmddd.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Optical Drive Added');</script>");
            Response.Redirect("~/User/startpc.aspx");
        }
    }
}