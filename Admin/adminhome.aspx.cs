using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void com_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/companyapprove.aspx");
    }
    protected void user_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/userapprove.aspx");
    }
    protected void proadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/addproduct.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register/company/admincompanyreg.aspx");
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register/user/adminuserreg.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/deleteproduct.aspx");
    }
}