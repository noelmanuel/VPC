using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_viewproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void mb_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void ram_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }


    protected void pro_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }

    protected void gpu_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void cd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddcddrive.aspx");
    }

    protected void smps_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddsmps.aspx");
    }

    protected void hd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddhdd.aspx");
    }

    protected void sd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddsoundcard.aspx");
    }

    protected void ssd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddssd.aspx");
    }

    protected void coolent_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddcooler.aspx");
    }

    protected void case_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddcase.aspx");
    }

    protected void net_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddnet.aspx");
    }

    protected void kb_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddkeyboard.aspx");
    }

    protected void mice_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddmouse.aspx");
    }

    protected void mon_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddmonitor.aspx");
    }

    protected void speaker_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddspeaker.aspx");
    }

    protected void ups_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddups.aspx");
    }

    protected void os_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddos.aspx");
    }

    protected void so_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddsoftware.aspx");
    }

    protected void soo_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddcasefan.aspx");
    }
}