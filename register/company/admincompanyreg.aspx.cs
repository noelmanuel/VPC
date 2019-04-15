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
using System.IO;

public partial class register_company_admincompanyreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void checkusname()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string chk = "select compusname from compregn where compusname = '" + TextBoxun.Text + "'";
        SqlCommand cmdd = new SqlCommand(chk, conn);
        SqlDataReader readerr = cmdd.ExecuteReader();

        if (readerr.HasRows)
        {
            readerr.Read();
            string no = readerr.GetValue(0).ToString();
            readerr.Close();
            if (no == TextBoxun.Text)
            {
                Response.Write(" <script>window.alert('Username Already Exist'); window.location='compreg.aspx';</script>");
            }
            else
            {


                string insertQuery = "insert into compregn(compusname,compname,comppass,compweb,comploc,compemail,compphone,compques,compans,status) values('" + TextBoxun.Text + "','" + TextBoxname.Text + "','" + TextBox3pass.Text + "','" + TextBoxweb.Text + "','" + TextBoxloc.Text + "','" + TextBoxem.Text + "','" + TextBoxph.Text + "','" + DropDownList2.SelectedItem + "','" + TextBoxans.Text + "','pending')";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.ExecuteNonQuery();
                string intt = "insert into login values('company','" + TextBoxun.Text + "','" + TextBox3pass.Text + "')";
                SqlCommand cmdd1 = new SqlCommand(intt, conn);
                cmdd1.ExecuteNonQuery();
                conn.Close();
                Response.Write(" <script>window.alert('REGISTRATION WAS SUCCESSFULL'); window.location='compreg.aspx';</script>");
            }
        }
        else
        {
            readerr.Close();
            string insertQuery = "insert into compregn(compusname,compname,comppass,compweb,comploc,compemail,compphone,compques,compans,status) values('" + TextBoxun.Text + "','" + TextBoxname.Text + "','" + TextBox3pass.Text + "','" + TextBoxweb.Text + "','" + TextBoxloc.Text + "','" + TextBoxem.Text + "','" + TextBoxph.Text + "','" + DropDownList2.SelectedItem + "','" + TextBoxans.Text + "','pending')";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            string intt = "insert into login values('company','" + TextBoxun.Text + "','" + TextBox3pass.Text + "')";
            SqlCommand cmdd1 = new SqlCommand(intt, conn);
            cmdd1.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('REGISTRATION WAS SUCCESSFULL'); window.location='admincompanyreg.aspx';</script>");
        }
    }
    protected void btn_subb(object sender, EventArgs e)
    {

        checkusname();

    }

    protected void btn_loo(object sender, EventArgs e)
    {
        Response.Redirect("~/register/user/adminuserreg.aspx");
    }
    protected void btn_home(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/adminhome.aspx");
    }
}