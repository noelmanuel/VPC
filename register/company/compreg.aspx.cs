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
using System.Collections.Generic;
public partial class register_company_compreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_subb(object sender, EventArgs e)
    {

        Console.WriteLine("noel");

    }

    protected void btn_loo(object sender, EventArgs e)
    {
        Response.Redirect("~/register/user/register.aspx");
    }
}