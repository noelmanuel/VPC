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

public partial class User_buildcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
      
    }



    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label compname = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        string str2 = "delete from finalcart where transactionn='" + compname.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='addcart.aspx';</script>");
        conn.Close();
    }
}