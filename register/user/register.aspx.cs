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




public partial class register_register : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    private void checkusname()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string chk = "select usname from cregn where usname = '" + TextBoxun.Text + "'";
        SqlCommand cmdd = new SqlCommand(chk, conn);
        SqlDataReader readerr = cmdd.ExecuteReader();

        if (readerr.HasRows)
        {
            readerr.Read();
            string no = readerr.GetValue(0).ToString();
            readerr.Close();
            if (no == TextBoxun.Text)
            {
                Response.Write(" <script>window.alert('Username Already Exist'); window.location='register.aspx';</script>");
            }
            else
            {


                string insertQuery = "insert into cregn(usname,uname,uspass,usbday,usgen,email,usphone,usques,usans,status) values('" + TextBoxun.Text + "','" + TextBoxname.Text + "','" + TextBox3pass.Text + "','" + TextBox5bday.Text + "','" + DropDownList1.SelectedItem + "','" + TextBoxem.Text + "','" + TextBoxph.Text + "','" + DropDownList2.SelectedItem + "','" + TextBoxans.Text + "','pending')";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.ExecuteNonQuery();
                string intt = "insert into login values('user','" + TextBoxun.Text + "','" + TextBox3pass.Text + "')";
                SqlCommand cmdd1 = new SqlCommand(intt, conn);
                cmdd1.ExecuteNonQuery();
                conn.Close();
                Response.Write(" <script>window.alert('REGISTRATION WAS SUCCESSFULL'); window.location='register.aspx';</script>");
            }
        }
        else
        {
            readerr.Close();
            string insertQuery = "insert into cregn(usname,uname,uspass,usbday,usgen,email,usphone,usques,usans,status) values('" + TextBoxun.Text + "','" + TextBoxname.Text + "','" + TextBox3pass.Text + "','" + TextBox5bday.Text + "','" + DropDownList1.SelectedItem + "','" + TextBoxem.Text + "','" + TextBoxph.Text + "','" + DropDownList2.SelectedItem + "','" + TextBoxans.Text + "','pending')";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            string intt = "insert into login values('user','" + TextBoxun.Text + "','" + TextBox3pass.Text + "')";
            SqlCommand cmdd1 = new SqlCommand(intt, conn);
            cmdd1.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('REGISTRATION WAS SUCCESSFULL'); window.location='register.aspx';</script>");
        }
    }

    
    protected void btn_sub(object sender, EventArgs e)
    {
        checkusname();
        

    }

    protected void btn_lo(object sender, EventArgs e)
    {
        Response.Redirect("~/register/company/compreg.aspx");
    }
    protected void btn_home(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
