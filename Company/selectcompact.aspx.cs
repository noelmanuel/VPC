using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_selectcompact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void pro_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/addcomcompacthardware.aspx");
    }

    protected void gpu_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/addcomcompact.aspx");
    }
}