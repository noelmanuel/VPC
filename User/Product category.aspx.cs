using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Product_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void mb_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product Page/motherboardlist.aspx");
    }

    protected void ram_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product Page/ramlist.aspx");
    }


    protected void pro_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addprocessor.aspx");
    }

    protected void gpu_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addgpu.aspx");
    }

    protected void cd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addcddrive.aspx");
    }

    protected void smps_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addsmps.aspx");
    }

    protected void hd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addhdd.aspx");
    }

    protected void sd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addsoundcard.aspx");
    }

    protected void ssd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addssd.aspx");
    }

    protected void coolent_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addcooler.aspx");
    }

    protected void case_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addcase.aspx");
    }

    protected void net_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addnet.aspx");
    }

    protected void kb_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addkeyboard.aspx");
    }

    protected void mice_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addmouse.aspx");
    }

    protected void mon_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addmonitor.aspx");
    }

    protected void speaker_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addspeaker.aspx");
    }
}