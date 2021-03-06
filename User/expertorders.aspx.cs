﻿using System;
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


public partial class User_expertorders : System.Web.UI.Page
{
    static int currentposition = 0;
    static int totalrows = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindata();



        }
    }
    private void bindata()
    {

        Panel1.Visible = true;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string insertQuery = "select * from expertpastorder where username='" + Session["user"].ToString() + "'";
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
        pg.PageSize = 4;
        Button1.Enabled = !pg.IsFirstPage;
        Button2.Enabled = !pg.IsFirstPage;
        Button3.Enabled = !pg.IsLastPage;
        Button4.Enabled = !pg.IsLastPage;
        //Binding pg to datalist
        DataList1.DataSource = pg;//dl is datalist
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
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {

        if (e.Item != null)
        {
            if (e.Item.DataItem != null)
            {
                DataRowView drv = (DataRowView)e.Item.DataItem;
                Label ll = (Label)e.Item.FindControl("Label5");
                Label l = (Label)e.Item.FindControl("Label6");
                if (ll.Text == "approved")
                {
                    l.Text = "Delivery expected between 8 to 10 days";
                }
                else if (ll.Text == "pending")
                {
                    l.Text = "Waiting for approval";
                }
                else
                {
                    l.Text = "Order declined";
                }



            }
        }
    }
}