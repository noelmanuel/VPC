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

public partial class User_userhomemaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery21 = "select COUNT(category) from addcart where username='" + Session["user"].ToString() + "'";
        SqlCommand cmdqw21 = new SqlCommand(insertQuery21, conn);
        SqlDataReader readerqw21 = cmdqw21.ExecuteReader();
        if (readerqw21.HasRows)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            readerqw21.Read();
            string noo = readerqw21.GetValue(0).ToString();
            Label1.Text = noo;
        }
        else
        {
            Label1.Text = "0";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        readerqw21.Close();
        conn.Close();
    }
}
