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
using System.IO;
using System.Timers;


public partial class shoppingpage_mbdes : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
         foreach (DataListItem dli in DataList1.Items)
            {
                Label Label2 = (Label)dli.FindControl("Label2");
                Label Label22 = (Label)dli.FindControl("Label22");
                TextBox st = (TextBox)dli.FindControl("st");
                string es = st.Text;

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                string insertQuery = "select stock from motherboard where mod = '" + Label2.Text + "'";

                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    string no = reader.GetValue(0).ToString();
                    int a = int.Parse(no);
                    int b = int.Parse(es);

                    if (a < b)
                    {
                        Label22.Text = "no stock";
                    }
                    else
                    {
                        Response.Redirect("~/Admin/ram.aspx");
                    }

                }
                else
                {
                    Response.Redirect("~/Admin/motherboard.aspx");
                }
            }

    }

    
}