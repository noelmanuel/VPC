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
            if(cbox.Checked)
            {
                deleterow(pro,rollno);
            }
        }
        GridView1.DataBind();
        
    }

    private void deleterow(string pro,int rollno)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string ordp = "insert into makecart(userr,product,software,softwareprice) values('" + Session["user"].ToString() + "','software','" + pro + "','" + rollno + "')";
        SqlCommand cmddd = new SqlCommand(ordp, conn);
        cmddd.ExecuteNonQuery();
        conn.Close();
        

    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("~/User/startpc.aspx");
    }
}