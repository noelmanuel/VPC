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


public partial class shoppingpage_filter : System.Web.UI.Page
{
    static int currentposition = 0;
    static int totalrows = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        string q = Request.QueryString["SelectedValue"].ToString();
        Label5.Text = q;
    }
   

}