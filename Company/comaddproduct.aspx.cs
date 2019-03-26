using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_comaddproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void mb_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddmotherboard.aspx");
    }

    protected void ram_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddram.aspx");
    }


    protected void pro_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddprocessor.aspx");
    }

    protected void gpu_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Product company/comaddgpu.aspx");
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
}