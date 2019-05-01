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

public partial class Guest_usermaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login/Login_v1/login.aspx");
    }

    protected void home1(object sender, EventArgs e)
    {
        string g = Session["admin"].ToString();
        if (g == "admin")
        {
            Response.Redirect("~/Admin/adminhome.aspx");
        }
        else if (Session["company"].ToString() == "company")
        {
            Response.Redirect("~/Company/companyhome.aspx");
        }
        else
        {
            Response.Redirect("~/login/Login_v1/login.aspx");
        }
    }

    protected void home2(object sender, EventArgs e)
    {
        string g = Session["admin"].ToString();
        if (g == "admin")
        {
            Response.Redirect("~/Admin/adminhome.aspx");
        }
        else if (Session["company"].ToString() == "company")
        {
            Response.Redirect("~/Company/companyhome.aspx");
        }
        else
        {
            Response.Redirect("~/login/Login_v1/login.aspx");
        }
    }

    protected void home3(object sender, EventArgs e)
    {
        string g = Session["admin"].ToString();
        if (g == "admin")
        {
            Response.Redirect("~/Admin/adminhome.aspx");
        }
        else if (Session["company"].ToString() == "company")
        {

            Response.Write(" <script>window.alert('Coming soon'); window.location='Product category.aspx';</script>");
        }
        else
        {
            Response.Redirect("~/login/Login_v1/login.aspx");
        }
    }

    protected void home4(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product category.aspx");
    }
    protected void home5(object sender, EventArgs e)
    {
        string g = Session["admin"].ToString();
        
        if (g == "admin")
        {
            Response.Redirect("~/Admin/adminhome.aspx");
        }
        else if(Session["company"].ToString() == "company")
        {
            Response.Redirect("~/Company/companyhome.aspx");
        }
        else
        {
            Response.Redirect("~/login/Login_v1/login.aspx");
        }
    }

    
}
