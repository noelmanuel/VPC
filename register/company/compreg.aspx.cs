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

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into compregn(compusname,compname,comppass,compweb,comploc,compemail,compphone,compques,compans,status) values('" + TextBoxun.Text + "','" + TextBoxname.Text + "','" + TextBox3pass.Text + "','" + TextBoxweb.Text + "','" + TextBoxloc.Text + "','" + TextBoxem.Text + "','" + TextBoxph.Text + "','" + DropDownList2.SelectedItem + "','" + TextBoxans.Text + "','pending')";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(" <script>window.alert('REGISTRATION WAS SUCCESSFULL'); window.location='comregn.aspx';</script>");

    }

    protected void btn_loo(object sender, EventArgs e)
    {
        Response.Redirect("~/register/user/register.aspx");
    }
}