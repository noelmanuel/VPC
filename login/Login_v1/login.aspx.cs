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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string insertQuery = "select ustype from login where usname='" + txtuname.Value + "' and pass='" + txtpass.Value + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);


        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();
            string no = reader.GetValue(0).ToString();
            if (no == "admin")
            {
                Response.Redirect("~/Admin/adminhome.aspx");
            }
            else if (no == "company")
            {
                Session["comp"] = txtuname.Value;

                Response.Redirect("~/Company/companyhome.aspx");


            }
            else if (no == "user")
            {
                Session["user"] = txtuname.Value;

                Response.Redirect("~/User/userhome.aspx");


            }
            else
            {
                Response.Write(" <script>window.alert('Invaild user'); window.location='login.aspx';</script>");
            }

        }
        else
        {
            Response.Write(" <script>window.alert('Invaild user'); window.location='login.aspx';</script>");
        }


    }

}

