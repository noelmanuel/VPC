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

public partial class User_product_grid_listsoftware : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            appjs();
        }
    }
    public void appjs()
    {
        string catt = "software";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select DISTINCT software,softwareprice from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'", conn);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView2.DataSource = Dt;
        GridView2.DataBind();


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        if (e.CommandName == "Insert")
        {
            Panel1.Visible = true;



            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();



            GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            Label pro = (Label)row.FindControl("Label1");


            string gg = "select * from software where man='" + pro.Text + "'";
            SqlCommand cmdd = new SqlCommand(gg, conn);
            SqlDataReader readerr = cmdd.ExecuteReader();

            if (readerr.HasRows)
            {
                readerr.Read();
                Label11.Text = readerr.GetString(3);
                Label12.Text = readerr.GetString(4);
                Label13.Text = readerr.GetString(5);
                Label14.Text = readerr.GetString(6);
                
                readerr.Close();

            }
        
        }
    }




    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string catt = "software";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Label username = GridView2.Rows[e.RowIndex].FindControl("Label1") as Label;
        string str2 = "delete from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "' AND software= '" + username.Text + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item Deleted'); window.location='listsoftware.aspx';</script>");
        appjs();
        conn.Close();
    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("~/User/startpc.aspx");
    }
}