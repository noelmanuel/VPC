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
using System.Collections.Generic;
using System.IO;

public partial class User_startpc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        motherboard_check();
        motherboardslot_check();
        motherboard_gpuslot();
        ram_check();
        gpu_check();
        hdd_check();
        ssd_check();
        pro_check();
        cool_check();
        sound_check();

    }

    public void motherboard_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "select mb from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            string no = reader.GetValue(0).ToString();
            Label1.Text = no;
            Image1.ImageUrl = "~/images/mboff.jpg";
            reader.Close();
            Button1.Enabled = false;
        }

        else
        {
            reader.Close();
            Label1.Text = "ADD MOTHERBOARD";
        }

        conn.Close();
    }

    public void motherboardslot_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string ramslot = "select mbslot from makecart where userr='" + Session["user"].ToString() + "' AND mb = '" + Label1.Text + "'";
        SqlCommand cmdd2 = new SqlCommand(ramslot, conn);
        SqlDataReader reader2 = cmdd2.ExecuteReader();
        if (reader2.HasRows)
        {
            reader2.Read();
            string gym = reader2.GetValue(0).ToString();
            reader2.Close();
            if (gym == "4")
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
            }
            else
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }

        }
        else
        {
            reader2.Close();
        }
        conn.Close();

    }

    public void motherboard_gpuslot()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string gslot = "select gpuslot from makecart where userr='" + Session["user"].ToString() + "' AND mb = '" + Label1.Text + "'";
        SqlCommand cmdd4 = new SqlCommand(gslot, conn);
        SqlDataReader reader4 = cmdd4.ExecuteReader();
        if (reader4.HasRows)
        {
            reader4.Read();
            string noo = reader4.GetValue(0).ToString();
            reader4.Close();
            if (noo == "2")
            {
                Panel4.Visible = true;
                Panel3.Visible = false;
            }
            else
            {
                Panel3.Visible = true;
                Panel4.Visible = false;
            }

        }
        else
        {
            reader4.Close();
        }
        conn.Close();
    }

    public void ram_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string tata = "ram";
        string insertram = "select ram from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + tata + "'";
        SqlCommand cmd1 = new SqlCommand(insertram, conn);
        SqlDataReader reader1 = cmd1.ExecuteReader();
        if (reader1.HasRows)
        {

            int cnt = 5;
            for (int j = 0; j < cnt; j++)
            {
                if (j == 0)
                {
                    


                }
                if (j == 1)
                {

                    if (reader1.Read() == true)
                    {
                        string noi = reader1.GetValue(0).ToString();
                        Label4.Text = noi;
                        Label2.Text = noi;
                        Button3.Enabled = false;
                        Button7.Enabled = false;

                    }
                    else
                    {
                        Label4.Text = "ADD RAM";
                        Label2.Text = "ADD RAM";

                    }

                }
                else if (j == 2)
                {
                    if (reader1.Read() == true)
                    {
                        string noii = reader1.GetValue(0).ToString();
                        Label5.Text = noii;
                        Label3.Text = noii;
                        Button5.Enabled = false;
                        Button9.Enabled = false;

                    }
                    else
                    {
                        Label5.Text = "ADD RAM";
                        Label3.Text = "ADD RAM";

                    }

                }
                else if (j == 3)
                {
                    if (reader1.Read() == true)
                    {
                        string nop = reader1.GetValue(0).ToString();
                        Label6.Text = nop;
                        Button11.Enabled = false;

                    }
                    else
                    {
                        Label6.Text = "ADD RAM";


                    }


                }
                else if (j == 4)
                {
                    if (reader1.Read() == true)
                    {
                        string nopp = reader1.GetValue(0).ToString();
                        Label7.Text = nopp;
                        Button13.Enabled = false;


                    }
                    else
                    {
                        Label7.Text = "ADD RAM";

                    }



                }
                else
                {

                    Label2.Text = "ADD RAM";
                    Label3.Text = "ADD RAM";
                    Label4.Text = "ADD RAM";
                    Label5.Text = "ADD RAM";
                    Label6.Text = "ADD RAM";
                    Label7.Text = "ADD RAM";

                }



            }

            reader1.Close();
        }
        else
        {
            Label2.Text = "ADD RAM";
            Label3.Text = "ADD RAM";
            Label4.Text = "ADD RAM";
            Label5.Text = "ADD RAM";
            Label6.Text = "ADD RAM";
            Label7.Text = "ADD RAM";
            reader1.Close();
        }
        conn.Close();
    }


    public void gpu_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string fog = "gpu";
        string insertgpu = "select gpu from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + fog + "'";
        SqlCommand cmd55 = new SqlCommand(insertgpu, conn);
        SqlDataReader reader55 = cmd55.ExecuteReader();
        if (reader55.HasRows)
        {

            int cnt = 3;
            for (int i = 0; i < cnt; i++)
            {
                if (i == 0)
                {

                    

                }
                if (i == 1)
                {

                    if (reader55.Read() == true)
                    {
                        string item2 = reader55.GetValue(0).ToString();
                        Label8.Text = item2;
                        Label9.Text = item2;
                        Button15.Enabled = false;
                        Button17.Enabled = false;
                    }
                    else
                    {
                        Label8.Text = "ADD GPU";
                        Label9.Text = "ADD GPU";
                    }

                }
                else if (i == 2)
                {
                    if (reader55.Read() == true)
                    {
                        string item3 = reader55.GetValue(0).ToString();
                        Label10.Text = item3;

                        Button19.Enabled = false;

                    }
                    else
                    {
                        Label10.Text = "ADD GPU";

                    }

                }

                else
                {

                    Label8.Text = "ADD GPU";
                    Label9.Text = "ADD GPU";
                    Label10.Text = "ADD GPU";



                }



            }

            reader55.Close();
        }



        else
        {


            Label8.Text = "ADD GPU";
            Label9.Text = "ADD GPU";
            Label10.Text = "ADD GPU";
            reader55.Close();
        }
        conn.Close();
    }


    public void hdd_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string frog = "hdd";
        string insertQuery = "select hdd from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + frog + "'";
        SqlCommand cmd9 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader9 = cmd9.ExecuteReader();
        if (reader9.HasRows)
        {
            reader9.Read();
            string no = reader9.GetValue(0).ToString();
            Label11.Text = no;
            reader9.Close();
            Button21.Enabled = false;
        }

        else
        {
            reader9.Close();
            Label11.Text = "ADD HDD";
        }

        conn.Close();
    }

    public void ssd_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string cat = "ssd";
        string insertQuery = "select sssd from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + cat + "'";
        SqlCommand cmd12 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader12 = cmd12.ExecuteReader();
        if (reader12.HasRows)
        {
            reader12.Read();
            string no = reader12.GetValue(0).ToString();
            Label12.Text = no;
            reader12.Close();
            Button23.Enabled = false;
        }

        else
        {
            reader12.Close();
            Label12.Text = "ADD SSD";
        }

        conn.Close();
    }

    public void pro_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "processor";
        string insertQuery = "select pro from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd13 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader13 = cmd13.ExecuteReader();
        if (reader13.HasRows)
        {
            reader13.Read();
            string no = reader13.GetValue(0).ToString();
            Label13.Text = no;
            reader13.Close();
            Button25.Enabled = false;
        }

        else
        {
            reader13.Close();
            Label13.Text = "ADD PROCESSOR";
        }

        conn.Close();
    }

    public void cool_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "cooler";
        string insertQuery = "select cooler from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd14 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader14 = cmd14.ExecuteReader();
        if (reader14.HasRows)
        {
            reader14.Read();
            string no = reader14.GetValue(0).ToString();
            Label14.Text = no;
            reader14.Close();
            Button27.Enabled = false;
        }

        else
        {
            reader14.Close();
            Label14.Text = "ADD CPU COOLER";
        }

        conn.Close();
    }

    public void sound_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "soundcard";
        string insertQuery = "select soundcard from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd15 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader15 = cmd15.ExecuteReader();
        if (reader15.HasRows)
        {
            reader15.Read();
            string no = reader15.GetValue(0).ToString();
            Label15.Text = no;
            reader15.Close();
            Button29.Enabled = false;
        }

        else
        {
            reader15.Close();
            Label15.Text = "ADD SOUNDCARD";
        }

        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/motherboardgrid.aspx");
    }

    

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='motherboard' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    
    protected void ram1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram12_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram13_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void ram14_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ramgrid.aspx");
    }

    protected void delram11_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label2.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram12_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label3.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label4.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label5.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label6.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram4_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label7.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void gpu19_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/gpugrid.aspx");
    }

    protected void gpu17_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/gpugrid.aspx");
    }

    protected void gpu15_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/gpugrid.aspx");
    }

    protected void delgpu20_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label10.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delgpu18_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label9.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delgpu16_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label8.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void hdd21_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/hddgrid.aspx");
    }

    protected void delhdd22_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='hdd' AND userr='" + Session["user"].ToString() + "' AND hdd='" + Label11.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void ssd23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/ssdgrid.aspx");
    }

    protected void delssd24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ssd' AND userr='" + Session["user"].ToString() + "' AND sssd='" + Label12.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void pro23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/processorgrid.aspx");
    }

    protected void delpro24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='processor' AND userr='" + Session["user"].ToString() + "' AND pro='" + Label13.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void cool23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/coolergrid.aspx");
    }

    protected void delcool24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='cooler' AND userr='" + Session["user"].ToString() + "' AND cooler='" + Label14.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void sound23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/soundcardgrid.aspx");
    }

    protected void delsound24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='soundcard' AND userr='" + Session["user"].ToString() + "' AND soundcard='" + Label15.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }
}