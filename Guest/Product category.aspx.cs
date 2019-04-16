using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_Product_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void mb_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/motherboardlist.aspx");
    }

    protected void ram_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/ramlist.aspx");
    }


    protected void pro_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/processorlist.aspx");
    }

    protected void gpu_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/gpulist.aspx");
    }

    protected void cd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/cddrivelist.aspx");
    }

    protected void smps_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/smpslist.aspx");
    }

    protected void hd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/hddlist.aspx");
    }

    protected void sd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/soundcardlist.aspx");
    }

    protected void ssd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/ssdlist.aspx");
    }

    protected void coolent_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/coolerlist.aspx");
    }

    protected void case_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/caselist.aspx");
    }

    protected void net_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/netlist.aspx");
    }

    protected void kb_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/keyboardlist.aspx");
    }

    protected void mice_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/mouselist.aspx");
    }

    protected void mon_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/monitorlist.aspx");
    }

    protected void speaker_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/speakerlist.aspx");
    }
    protected void ups_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/upslist.aspx");
    }

    protected void os_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/oslist.aspx");
    }

    protected void so_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/softwarelist.aspx");
    }

    protected void soo_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/Product Page/casefanlist.aspx");
    }
}