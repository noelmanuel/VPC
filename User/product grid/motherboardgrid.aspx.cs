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

public partial class User_product_grid_motherboardgrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataAdapter Adp = new SqlDataAdapter("select Motherboard,RamSlots,GPUSlots,Price from cpubuildmb", conn);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        GridView1.DataSource = Dt;
        GridView1.DataBind();

        
    }






    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

            Label pro = (Label)row.FindControl("Label1");
            Label mbprice = (Label)row.FindControl("Label2");
            Label mbslot = (Label)row.FindControl("Label3");
            Label gpuslot = (Label)row.FindControl("Label4");




            int pri = int.Parse(mbprice.Text);
            int slo = int.Parse(mbslot.Text);
            int gpus = int.Parse(gpuslot.Text);
            string ordp = "insert into makecart(userr,product,mb,mbprice,mbslot,gpuslot) values('" + Session["user"].ToString() + "','motherboard','" + pro.Text + "','" + pri + "','" + slo + "','" + gpus + "')";
            SqlCommand cmddd = new SqlCommand(ordp, conn);
            cmddd.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('Motherboard Added');</script>");
            Response.Redirect("~/User/startpc.aspx");
        }
        else if (e.CommandName == "Insert")
        {
            Panel1.Visible = true;


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();



            GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            Label pro = (Label)row.FindControl("Label1");


            string gg = "select * from motherboard where man='" + pro.Text + "'";
            SqlCommand cmdd = new SqlCommand(gg, conn);
            SqlDataReader readerr = cmdd.ExecuteReader();

            if (readerr.HasRows)
            {
                readerr.Read();
                Label7.Text = readerr.GetString(16);
                Label8.Text = readerr.GetString(4);
                Label9.Text = readerr.GetString(5);
                Label10.Text = readerr.GetString(6);
                Label11.Text = readerr.GetString(7);
                Label12.Text = readerr.GetString(8);
                readerr.Close();

            }

            string q35 = "select sli from motherboard where man='" + pro.Text + "'";
            SqlCommand cmd35 = new SqlCommand(q35, conn);
            SqlDataReader reader35 = cmd35.ExecuteReader();
            if (reader35.HasRows)
            {
                reader35.Read();
                string noo35 = reader35.GetValue(0).ToString();
                reader35.Close();
                if (noo35 == "Yes" || noo35 == "3-way SLI")
                {
                    Label23.ForeColor = System.Drawing.Color.Black;
                    Label23.Text = "This motherboard support SLI technology. Select Nvidia cards for better performance";
                }
                else
                {
                    string q36 = "select cro from motherboard where man='" + pro.Text + "'";
                    SqlCommand cmd36 = new SqlCommand(q36, conn);
                    SqlDataReader reader36 = cmd36.ExecuteReader();
                    if (reader36.HasRows)
                    {
                        reader36.Read();
                        string noo36 = reader36.GetValue(0).ToString();
                        reader36.Close();

                        if(noo36=="Yes")
                        {
                            Label23.ForeColor = System.Drawing.Color.Black;
                            Label23.Text = "This motherboard support Crossfire technology. Select Cards with same architecture for better performance";
                        }
                        else
                        {
                            Label23.ForeColor = System.Drawing.Color.Black;
                            Label23.Text = "This motherboard does not support SLI and CROSSFIRE technologies";
                        }
                    }
                    else
                    {
                        Label23.ForeColor = System.Drawing.Color.Black;
                        Label23.Text = "Motherboard feature undefined";
                    }
                }

            }
            else
            {
                Label23.ForeColor = System.Drawing.Color.Black;
                Label23.Text = "Motherboard feature undefined";
            }
        }
    }
}