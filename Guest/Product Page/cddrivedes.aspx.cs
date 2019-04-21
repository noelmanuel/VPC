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

public partial class Guest_Product_Page_cddrivedes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        string g = Session["admin"].ToString();
        if (g == "admin")
        {
            Response.Redirect("~/Admin/adminhome.aspx");
        }
        else
        {
            Response.Redirect("~/login/Login_v1/login.aspx");
        }

    }


}