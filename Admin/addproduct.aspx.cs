using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_addproduct : System.Web.UI.Page
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

    protected void mb_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addmotherboard.aspx");
    }

    protected void ram_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addram.aspx");
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

    protected void ups_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addups.aspx");
    }

    protected void os_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addos.aspx");
    }

    protected void so_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addsoftware.aspx");
    }

    protected void soo_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Product admin/addcasefan.aspx");
    }
}