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

public partial class User_product_grid_softwaregrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }





    protected void Button1_Click1(object sender, EventArgs e)
    {

        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox cbox = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
            int rollno = Convert.ToInt32(row.Cells[2].Text);
            string pro = row.Cells[1].Text;
            if (cbox.Checked)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string catt = "software";
                string insertQuery = "select software from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "' AND software = '" + pro + "'";
                SqlCommand cmd26 = new SqlCommand(insertQuery, conn);
                SqlDataReader reader21 = cmd26.ExecuteReader();
                if (reader21.HasRows)
                {
                    Response.Write(" <script>window.alert('Item already exist cannot be added again'); window.location='softwaregrid.aspx';</script>");
                }
                else
                deleterow(pro, rollno);
            }

        }
        
            
                    
            
        
        GridView1.DataBind();
        
    }

    private void deleterow(string pro, int rollno)
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

            string ordp = "insert into makecart(userr,product,mb,mbprice,mbslot,gpuslot,software,softwareprice) values('" + Session["user"].ToString() + "','software','" + no + "','" + gputot4 + "','" + gputot3 + "','" + gputot + "','" + pro + "','" + rollno + "')";
            SqlCommand cmddd = new SqlCommand(ordp, conn);
            cmddd.ExecuteNonQuery();
            conn.Close();

            Label1.Text = "Software Added Sucessfully";

        }
    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("~/User/startpc.aspx");
    }
}