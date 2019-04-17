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
public partial class User_Product_Page_coolerlist : System.Web.UI.Page
{
    static int currentposition = 0;
    static int totalrows = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            brand();
            socket();
            chipset();
            bindata();
        }


    }
    private void brand()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string brand = "select DISTINCT man from cooler";
        SqlCommand cd = new SqlCommand(brand, conn);
        DropDownList1.DataSource = cd.ExecuteReader();
        DropDownList1.DataBind();
        conn.Close();
    }
    private void socket()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string sock = "select DISTINCT radi from cooler";
        SqlCommand cdd = new SqlCommand(sock, conn);
        DropDownList2.DataSource = cdd.ExecuteReader();
        DropDownList2.DataBind();
        conn.Close();
    }
    private void chipset()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string si = "select DISTINCT fan from cooler";
        SqlCommand ci = new SqlCommand(si, conn);
        DropDownList3.DataSource = ci.ExecuteReader();
        DropDownList3.DataBind();
        conn.Close();
    }
    private void bindata()
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = true;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string insertQuery = "select * from cooler";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);


        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        totalrows = ds.Tables[0].Rows.Count;
        DataTable dt = ds.Tables[0];
        PagedDataSource pg = new PagedDataSource();
        pg.DataSource = dt.DefaultView;
        pg.AllowPaging = true;
        pg.CurrentPageIndex = currentposition;
        pg.PageSize = 10;
        Button1.Enabled = !pg.IsFirstPage;
        Button2.Enabled = !pg.IsFirstPage;
        Button3.Enabled = !pg.IsLastPage;
        Button4.Enabled = !pg.IsLastPage;
        //Binding pg to datalist
        DataList1.DataSource = pg;//dl is datalist
        DataList1.DataBind();
        conn.Close();
    }
    private void loo()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string inse = "select * from cooler WHERE Pric >= '" + TextBox1.Text + "' AND pric <= '" + TextBox2.Text + "'";
        SqlCommand cmdd = new SqlCommand(inse, conn);
        SqlDataAdapter daa = new SqlDataAdapter();
        daa.SelectCommand = cmdd;
        DataSet dss = new DataSet();
        daa.Fill(dss);
        totalrows = dss.Tables[0].Rows.Count;
        DataTable dtt = dss.Tables[0];
        PagedDataSource pgg = new PagedDataSource();
        pgg.DataSource = dtt.DefaultView;
        pgg.AllowPaging = true;
        pgg.CurrentPageIndex = currentposition;
        pgg.PageSize = 10;
        Button7.Enabled = !pgg.IsFirstPage;
        Button8.Enabled = !pgg.IsFirstPage;
        Button9.Enabled = !pgg.IsLastPage;
        Button10.Enabled = !pgg.IsLastPage;
        //Binding pg to datalist
        DataList1.DataSource = pgg;//dl is datalist
        DataList1.DataBind();
        conn.Close();
    }

    private void brad()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string inp = "select * from cooler WHERE man='" + DropDownList1.SelectedItem + "'";
        SqlCommand cmdp = new SqlCommand(inp, conn);
        SqlDataAdapter dp = new SqlDataAdapter();
        dp.SelectCommand = cmdp;
        DataSet dsp = new DataSet();
        dp.Fill(dsp);
        totalrows = dsp.Tables[0].Rows.Count;
        DataTable dtp = dsp.Tables[0];
        PagedDataSource pgp = new PagedDataSource();
        pgp.DataSource = dtp.DefaultView;
        pgp.AllowPaging = true;
        pgp.CurrentPageIndex = currentposition;
        pgp.PageSize = 10;
        Button7.Enabled = !pgp.IsFirstPage;
        Button8.Enabled = !pgp.IsFirstPage;
        Button9.Enabled = !pgp.IsLastPage;
        Button10.Enabled = !pgp.IsLastPage;
        //Binding pg to datalist
        DataList1.DataSource = pgp;//dl is datalist
        DataList1.DataBind();
        conn.Close();
    }

    private void soc()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string inp = "select * from cooler WHERE radi='" + DropDownList2.SelectedItem + "'";
        SqlCommand cmdp = new SqlCommand(inp, conn);
        SqlDataAdapter dp = new SqlDataAdapter();
        dp.SelectCommand = cmdp;
        DataSet dsi = new DataSet();
        dp.Fill(dsi);
        totalrows = dsi.Tables[0].Rows.Count;
        DataTable dtp = dsi.Tables[0];
        PagedDataSource pgp = new PagedDataSource();
        pgp.DataSource = dtp.DefaultView;
        pgp.AllowPaging = true;
        pgp.CurrentPageIndex = currentposition;
        pgp.PageSize = 10;

        Button12.Enabled = !pgp.IsFirstPage;
        Button15.Enabled = !pgp.IsLastPage;

        //Binding pg to datalist
        DataList1.DataSource = pgp;//dl is datalist
        DataList1.DataBind();
        conn.Close();
    }
    private void chip()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string inp = "select * from cooler WHERE fan='" + DropDownList3.SelectedItem + "'";
        SqlCommand cmdpp = new SqlCommand(inp, conn);
        SqlDataAdapter dpp = new SqlDataAdapter();
        dpp.SelectCommand = cmdpp;
        DataSet dspp = new DataSet();
        dpp.Fill(dspp);
        totalrows = dspp.Tables[0].Rows.Count;
        DataTable dtp = dspp.Tables[0];
        PagedDataSource pgpp = new PagedDataSource();
        pgpp.DataSource = dtp.DefaultView;
        pgpp.AllowPaging = true;
        pgpp.CurrentPageIndex = currentposition;
        pgpp.PageSize = 10;

        Button18.Enabled = !pgpp.IsFirstPage;
        Button19.Enabled = !pgpp.IsLastPage;

        //Binding pg to datalist
        DataList1.DataSource = pgpp;//dl is datalist
        DataList1.DataBind();
        conn.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        currentposition = 0;
        bindata();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        if (currentposition == 0)
        {

        }
        else
        {
            currentposition = currentposition - 1;
            bindata();
        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (currentposition == totalrows - 1)
        {

        }
        else
        {
            currentposition = currentposition + 1;
            bindata();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        currentposition = totalrows;
        bindata();
    }



    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("coolerdes.aspx?id=" + e.CommandArgument.ToString());
        }
    }






    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel2.Visible = true;
        loo();


    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        currentposition = 0;
        loo();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        if (currentposition == 0)
        {

        }
        else
        {
            currentposition = currentposition - 1;
            loo();
        }
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        if (currentposition == totalrows - 1)
        {

        }
        else
        {
            currentposition = currentposition + 1;
            loo();
        }
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        currentposition = totalrows;
        loo();
    }



    protected void Button13_Click(object sender, EventArgs e)
    {
        if (currentposition == 0)
        {

        }
        else
        {
            currentposition = currentposition - 1;
            brad();
        }
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        if (currentposition == totalrows - 1)
        {

        }
        else if (currentposition == 0)
        {
            brad();
        }
        else
        {
            currentposition = currentposition + 1;
            brad();
        }
    }

    protected void Button11_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel3.Visible = true;

        brad();
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        if (currentposition == 0)
        {

        }
        else
        {
            currentposition = currentposition - 1;
            soc();
        }
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        if (currentposition == totalrows - 1)
        {

        }
        else if (currentposition == 0)
        {
            soc();
        }
        else
        {
            currentposition = currentposition + 1;
            soc();
        }
    }

    protected void Button16_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel5.Visible = false;
        Panel4.Visible = true;
        soc();
    }

    protected void Button18_Click(object sender, EventArgs e)
    {
        if (currentposition == 0)
        {

        }
        else
        {
            currentposition = currentposition - 1;
            chip();
        }
    }

    protected void Button19_Click(object sender, EventArgs e)
    {
        if (currentposition == totalrows - 1)
        {

        }
        else if (currentposition == 0)
        {
            chip();
        }
        else
        {
            currentposition = currentposition + 1;
            chip();
        }
    }

    protected void Button17_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
        chip();
    }
}