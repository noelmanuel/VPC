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
        SqlDataAdapter Adp = new SqlDataAdapter("select Motherboard,RamSlots,GPUSlots,Price from cpubuildmb", conn);
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
            Label mbslot = (Label)row.FindControl("Label3");
            Label gpuslot = (Label)row.FindControl("Label4");




            int pri = int.Parse(mbprice.Text);
            int slo = int.Parse(mbslot.Text);
            int gpus = int.Parse(gpuslot.Text);
            string ordp = "insert into makecart(userr,product,mb,mbprice,mbslot,gpuslot) values('" + Session["user"].ToString() + "','motherboard','" + pro.Text + "','" + pri + "','" + slo + "','" + gpus + "')";
            SqlCommand cmddd = new SqlCommand(ordp, conn);
            cmddd.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Motherboard Added');</script>");
            Response.Redirect("~/User/startpc.aspx");
        }
    }
}