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

public partial class expertsystem_userexpertdes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (DataListItem dli in DataList1.Items)
        {
            Label budget = (Label)dli.FindControl("Label5");
            Label typee = (Label)dli.FindControl("Label6");
            Label pri = (Label)dli.FindControl("Label7");

            Label mb = (Label)dli.FindControl("Label1");
            Label ram1 = (Label)dli.FindControl("Label2");
            Label ram2 = (Label)dli.FindControl("Label8");
            Label ram3 = (Label)dli.FindControl("Label17");
            Label ram4 = (Label)dli.FindControl("Label18");

            Label pro = (Label)dli.FindControl("Label3");
            Label gpu1 = (Label)dli.FindControl("Label4");
            Label gpu2 = (Label)dli.FindControl("Label19");

            Label cd = (Label)dli.FindControl("Label9");
            Label smps = (Label)dli.FindControl("Label12");
            Label hd = (Label)dli.FindControl("Label13");
            Label cool = (Label)dli.FindControl("Label14");
            Label casee = (Label)dli.FindControl("Label15");

            Label casefan = (Label)dli.FindControl("Label10");
            Label sd = (Label)dli.FindControl("Label11");
            Label net = (Label)dli.FindControl("Label16");
            Label ssd = (Label)dli.FindControl("Label20");

            Label mn = (Label)dli.FindControl("Label22");
            Label keyy = (Label)dli.FindControl("Label23");
            Label mice = (Label)dli.FindControl("Label24");
            Label sp = (Label)dli.FindControl("Label25");
            Label ups = (Label)dli.FindControl("Label26");

            Label tp = (Label)dli.FindControl("Label21");
            int tpr = Convert.ToInt32(tp.Text);

            lbldate.Text = DateTime.Now.ToString("M/d/yyyy");

            String pass = "123456";
            Random r = new Random();
            char[] mypass = new char[6];
            for (int i = 0; i < 6; i++)
            {
                mypass[i] = pass[(int)(4 * r.NextDouble())];

            }
            string bn = new string(mypass);
            int tr = Convert.ToInt32(bn);

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into expertcart(budget,type,pri1,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice,transac,datee,userr) values('" + budget.Text + "','" + typee.Text + "','" + pri.Text + "','" + mb.Text + "','" + ram1.Text + "','" + ram2.Text + "','" + ram3.Text + "','" + ram4.Text + "','" + pro.Text + "','" + gpu1.Text + "','" + gpu2.Text + "','" + cd.Text + "','" + smps.Text + "','" + hd.Text + "','" + sd.Text + "','" + ssd.Text + "','" + cool.Text + "','" + casee.Text + "','" + net.Text + "','" + keyy.Text + "','" + mice.Text + "','" + mn.Text + "','" + sp.Text + "','" + ups.Text + "','" + casefan.Text + "','" + tpr + "','" + tr + "','" + lbldate.Text + "','" + Session["user"].ToString() + "')";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("expertcart.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("expertpanel.aspx");
    }
}