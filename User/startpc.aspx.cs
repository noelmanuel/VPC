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
        network_check();
        cd_check();
        power_check();
        case_check();
        casefan_check();
        monitor_check();
        keyboard_check();
        mouse_check();
        speaker_check();
        ups_check();
        software_check();
        os_check();

        
            
            
           

        




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
            Button3.Enabled = true;
            Button5.Enabled = true;
            Button7.Enabled = true;
            Button9.Enabled = true;
            Button11.Enabled = true;
            Button13.Enabled = true;
            Button15.Enabled = true;
            Button17.Enabled = true;
            Button19.Enabled = true;
            Button21.Enabled = true;
            Button23.Enabled = true;
            Button25.Enabled = true;
            Button27.Enabled = true;
            Button29.Enabled = true;
            Button31.Enabled = true;
            Button33.Enabled = true;
            Button35.Enabled = true;
            Button37.Enabled = true;
            Button39.Enabled = true;
            Button41.Enabled = true;
            Button43.Enabled = true;
            Button45.Enabled = true;
            Button47.Enabled = true;
            Button49.Enabled = true;
            Button51.Enabled = true;
            Button53.Enabled = true;
            Button1.Text = "Motherboard Added";
            Button1.ForeColor = System.Drawing.Color.White;
            Button1.BackColor = System.Drawing.Color.Gray;
        }

        else
        {
            reader.Close();
            Button3.Enabled = false;
            Button5.Enabled = false;
            Button7.Enabled = false;
            Button9.Enabled = false;
            Button11.Enabled = false;
            Button13.Enabled = false;
            Button15.Enabled = false;
            Button17.Enabled = false;
            Button19.Enabled = false;
            Button21.Enabled = false;
            Button23.Enabled = false;
            Button25.Enabled = false;
            Button27.Enabled = false;
            Button29.Enabled = false;
            Button31.Enabled = false;
            Button33.Enabled = false;
            Button35.Enabled = false;
            Button37.Enabled = false;
            Button39.Enabled = false;
            Button41.Enabled = false;
            Button43.Enabled = false;
            Button45.Enabled = false;
            Button47.Enabled = false;
            Button49.Enabled = false;
            Button51.Enabled = false;
            Button53.Enabled = false;
            DropDownList1.Visible = false;
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
                        Button3.Text = "RAM Added";
                        Button7.Text = "RAM Added";
                        Button3.ForeColor = System.Drawing.Color.White;
                        Button3.BackColor = System.Drawing.Color.Gray;
                        Button7.ForeColor = System.Drawing.Color.White;
                        Button7.BackColor = System.Drawing.Color.Gray;

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
                        Button5.Text = "RAM Added";
                        Button9.Text = "RAM Added";
                        Button5.ForeColor = System.Drawing.Color.White;
                        Button5.BackColor = System.Drawing.Color.Gray;
                        Button9.ForeColor = System.Drawing.Color.White;
                        Button9.BackColor = System.Drawing.Color.Gray;

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
                        Button11.Text = "RAM Added";
                        Button11.ForeColor = System.Drawing.Color.White;
                        Button11.BackColor = System.Drawing.Color.Gray;

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
                        Button13.Text = "RAM Added";
                        Button13.Enabled = false;
                        Button13.Text = "RAM Added";
                        Button13.ForeColor = System.Drawing.Color.White;
                        Button13.BackColor = System.Drawing.Color.Gray;


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
                        Button17.Text = "GPU Added";
                        Button15.Text = "GPU Added";
                        Button15.ForeColor = System.Drawing.Color.White;
                        Button15.BackColor = System.Drawing.Color.Gray;
                        Button17.ForeColor = System.Drawing.Color.White;
                        Button17.BackColor = System.Drawing.Color.Gray;
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
                        Button19.Text = "GPU Added";
                        Button19.ForeColor = System.Drawing.Color.White;
                        Button19.BackColor = System.Drawing.Color.Gray;

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
            Button21.Text = "Harddisk Added";
            Button21.Enabled = false;
            Button21.ForeColor = System.Drawing.Color.White;
            Button21.BackColor = System.Drawing.Color.Gray;
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
            Button23.Text = "SSD Added";
            Button23.Enabled = false;
            Button23.ForeColor = System.Drawing.Color.White;
            Button23.BackColor = System.Drawing.Color.Gray;
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
            Button25.Text = "Processor Added";
            Button25.Enabled = false;
            Button25.ForeColor = System.Drawing.Color.White;
            Button25.BackColor = System.Drawing.Color.Gray;
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
            Button27.Text = "CPU Cooler Added";
            Button27.Enabled = false;
            Button27.ForeColor = System.Drawing.Color.White;
            Button27.BackColor = System.Drawing.Color.Gray;
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
            Button29.Text = "Soundcard Added";
            Button29.Enabled = false;
            Button29.ForeColor = System.Drawing.Color.White;
            Button29.BackColor = System.Drawing.Color.Gray;
        }

        else
        {
            reader15.Close();
            Label15.Text = "ADD SOUNDCARD";
        }

        conn.Close();
    }

    public void network_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "networkcard";
        string insertQuery = "select networkcard from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd16 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader16 = cmd16.ExecuteReader();
        if (reader16.HasRows)
        {
            reader16.Read();
            string no = reader16.GetValue(0).ToString();
            Label16.Text = no;
            reader16.Close();
            Button31.Text = "Networkcark Added";
            Button31.Enabled = false;
            Button31.ForeColor = System.Drawing.Color.White;
            Button31.BackColor = System.Drawing.Color.Gray;
        }

        else
        {
            reader16.Close();
            Label16.Text = "ADD NETWORKCARD";
        }

        conn.Close();
    }


    public void cd_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "optical drive";
        string insertQuery = "select opticaldrive from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd17 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader17 = cmd17.ExecuteReader();
        if (reader17.HasRows)
        {
            reader17.Read();
            string no = reader17.GetValue(0).ToString();
            Label17.Text = no;
            reader17.Close();
            Button33.Text = "CD Drive Added";
            Button33.Enabled = false;
            Button33.ForeColor = System.Drawing.Color.White;
            Button33.BackColor = System.Drawing.Color.Gray;
        }

        else
        {
            reader17.Close();
            Label17.Text = "ADD OPTICAL DRIVE";
        }

        conn.Close();
    }


    public void power_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "smps";
        string insertQuery = "select powerr from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd18 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader18 = cmd18.ExecuteReader();
        if (reader18.HasRows)
        {
            reader18.Read();
            string no = reader18.GetValue(0).ToString();
            Label18.Text = no;
            reader18.Close();
            Button35.Text = "SMPS Added";
            Button35.Enabled = false;
            Button35.ForeColor = System.Drawing.Color.White;
            Button35.BackColor = System.Drawing.Color.Gray;
        }

        else
        {
            reader18.Close();
            Label18.Text = "ADD SMPS";
        }

        conn.Close();
    }


    public void case_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "case";
        string insertQuery = "select casee from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd19 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader19 = cmd19.ExecuteReader();
        if (reader19.HasRows)
        {
            reader19.Read();
            string no = reader19.GetValue(0).ToString();
            Label19.Text = no;
            reader19.Close();
            Button37.Text = "Case Added";
            Button37.Enabled = false;
            Button37.ForeColor = System.Drawing.Color.White;
            Button37.BackColor = System.Drawing.Color.Gray;
        }

        else
        {
            reader19.Close();
            Label19.Text = "ADD CASE";
        }

        conn.Close();
    }

    public void casefan_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "casefan";
        string insertQuery = "select casefan from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd20 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader20 = cmd20.ExecuteReader();
        if (reader20.HasRows)
        {
            reader20.Read();
            string no = reader20.GetValue(0).ToString();
            Label20.Text = no;
            reader20.Close();
            Button39.Text = "Casefan Added";
            Button39.Enabled = false;
            Button39.ForeColor = System.Drawing.Color.White;
            Button39.BackColor = System.Drawing.Color.Gray;
        }

        else
        {
            reader20.Close();
            Label20.Text = "ADD CASE FAN";
        }

        conn.Close();
    }

    public void monitor_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "monitor";
        string insertQuery = "select monitor from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd21 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader21 = cmd21.ExecuteReader();
        if (reader21.HasRows)
        {
            reader21.Read();
            string no = reader21.GetValue(0).ToString();
            Label21.Text = no;
            reader21.Close();
            Button41.Text = "Monitor Added";
            Button41.Enabled = false;
            Button41.ForeColor = System.Drawing.Color.White;
            Button41.BackColor = System.Drawing.Color.Gray;
            Image2.ImageUrl = "~/images/deskoff.jpg";
        }

        else
        {
            reader21.Close();
            Label21.Text = "ADD MONITOR";
        }

        conn.Close();
    }

    public void keyboard_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "keyboard";
        string insertQuery = "select keyboard from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd22 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader21 = cmd22.ExecuteReader();
        if (reader21.HasRows)
        {
            reader21.Read();
            string no = reader21.GetValue(0).ToString();
            Label22.Text = no;
            reader21.Close();
            Button43.Text = "Keyboard Added";
            Button43.Enabled = false;
            Button43.ForeColor = System.Drawing.Color.White;
            Button43.BackColor = System.Drawing.Color.Gray;
            Image2.ImageUrl = "~/images/deskoff.jpg";
        }

        else
        {
            reader21.Close();
            Label22.Text = "ADD KEYBOARD";
        }

        conn.Close();
    }

    public void mouse_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "mouse";
        string insertQuery = "select mouse from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd23 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader211 = cmd23.ExecuteReader();
        if (reader211.HasRows)
        {
            reader211.Read();
            string no = reader211.GetValue(0).ToString();
            Label23.Text = no;
            reader211.Close();
            Button45.Text = "Mouse Added";
            Button45.Enabled = false;
            Button45.ForeColor = System.Drawing.Color.White;
            Button45.BackColor = System.Drawing.Color.Gray;
            Image2.ImageUrl = "~/images/deskoff.jpg";
        }

        else
        {
            reader211.Close();
            Label23.Text = "ADD MOUSE";
        }

        conn.Close();
    }

    public void speaker_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "speaker";
        string insertQuery = "select speaker from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd24 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader21 = cmd24.ExecuteReader();
        if (reader21.HasRows)
        {
            reader21.Read();
            string no = reader21.GetValue(0).ToString();
            Label24.Text = no;
            reader21.Close();
            Button47.Text = "Speaker Added";
            Button47.Enabled = false;
            Button47.ForeColor = System.Drawing.Color.White;
            Button47.BackColor = System.Drawing.Color.Gray;
            Image2.ImageUrl = "~/images/deskoff.jpg";
        }

        else
        {
            reader21.Close();
            Label24.Text = "ADD SPEAKER";
        }

        conn.Close();
    }

    public void ups_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "ups";
        string insertQuery = "select ups from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd25 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader21 = cmd25.ExecuteReader();
        if (reader21.HasRows)
        {
            reader21.Read();
            string no = reader21.GetValue(0).ToString();
            Label25.Text = no;
            reader21.Close();
            Button49.Text = "UPS Added";
            Button49.Enabled = false;
            Button49.ForeColor = System.Drawing.Color.White;
            Button49.BackColor = System.Drawing.Color.Gray;
            Image2.ImageUrl = "~/images/deskoff.jpg";
        }

        else
        {
            reader21.Close();
            Label25.Text = "ADD UPS";
        }

        conn.Close();
    }

    public void software_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "software";
        string insertQuery = "select DISTINCT software from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd26 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader21 = cmd26.ExecuteReader();
        if (reader21.HasRows)
        {
            DropDownList1.Visible = true;
            reader21.Close();
            SqlCommand cd = new SqlCommand(insertQuery, conn);
            DropDownList1.DataSource = cd.ExecuteReader();
            DropDownList1.DataBind();            
            Label26.Text = "Added";
            
            Button51.Enabled = false;
            Button57.Enabled = true;
            Button51.Text = "Software Added";
            Button51.ForeColor = System.Drawing.Color.White;
       

            Button51.BackColor = System.Drawing.Color.Gray;
            Image2.ImageUrl = "~/images/deskoff.jpg";
        }

        else
        {
            reader21.Close();
            Button57.Enabled = false;
            Button57.BackColor = System.Drawing.Color.Gray;
            Button57.ForeColor = System.Drawing.Color.White;

            Label26.Text = "ADD SOFTWARE";
        }

        conn.Close();
    }

    public void os_check()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string catt = "os";
        string insertQuery = "select os from makecart where userr='" + Session["user"].ToString() + "' AND product = '" + catt + "'";
        SqlCommand cmd27 = new SqlCommand(insertQuery, conn);
        SqlDataReader reader21 = cmd27.ExecuteReader();
        if (reader21.HasRows)
        {
            reader21.Read();
            string no = reader21.GetValue(0).ToString();
            Label27.Text = no;
            reader21.Close();
            Button53.Text = "OS Added";
            Button53.Enabled = false;
            Button53.ForeColor = System.Drawing.Color.White;
            Button53.BackColor = System.Drawing.Color.Gray;
            Image2.ImageUrl = "~/images/deskoff.jpg";
        }

        else
        {
            reader21.Close();
            Label27.Text = "ADD OS";
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
        string str2 = "delete from makecart where userr='" + Session["user"].ToString() + "'";
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
        string str2 = "delete TOP (1) from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label2.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram12_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete TOP (1) from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label3.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete TOP (1) from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label4.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete TOP (1) from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label5.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete TOP (1) from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label6.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delram4_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete TOP (1) from makecart where product='ram' AND userr='" + Session["user"].ToString() + "' AND ram='" + Label7.Text + "'";
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
        string str2 = "delete TOP (1) from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label10.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void delgpu18_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();


       
            string str2 = "delete TOP (1) from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label9.Text + "'";
            SqlCommand cmd = new SqlCommand(str2, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
            conn.Close();
        
    }

    protected void delgpu16_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete TOP (1) from makecart where product='gpu' AND userr='" + Session["user"].ToString() + "' AND gpu='" + Label8.Text + "'";
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

    protected void net23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/networkcardgrid.aspx");
    }

    protected void delnet24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='networkcard' AND userr='" + Session["user"].ToString() + "' AND networkcard='" + Label16.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void cd23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/opticaldrivegrid.aspx");
    }

    protected void delcd24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='optical drive' AND userr='" + Session["user"].ToString() + "' AND opticaldrive='" + Label17.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void power23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/smpsgrid.aspx");
    }

    protected void delpower24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='smps' AND userr='" + Session["user"].ToString() + "' AND powerr='" + Label18.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void case23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/casegrid.aspx");
    }

    protected void delcase24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='case' AND userr='" + Session["user"].ToString() + "' AND casee='" + Label19.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void casefan23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/casefangrid.aspx");
    }

    protected void delcasefan24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='casefan' AND userr='" + Session["user"].ToString() + "' AND casefan='" + Label20.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void mon23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/monitorgrid.aspx");
    }

    protected void delmon24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='monitor' AND userr='" + Session["user"].ToString() + "' AND monitor='" + Label21.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void key23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/keyboardgrid.aspx");
    }

    protected void delkey24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='keyboard' AND userr='" + Session["user"].ToString() + "' AND keyboard='" + Label22.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void mouse23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/mousegrid.aspx");
    }

    protected void delmouse24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='mouse' AND userr='" + Session["user"].ToString() + "' AND mouse='" + Label23.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void speaker23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/speakergrid.aspx");
    }

    protected void delspeaker24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='speaker' AND userr='" + Session["user"].ToString() + "' AND speaker='" + Label24.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void software23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/softwaregrid.aspx");
    }

    protected void delsoftware24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='software' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void os23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/osgrid.aspx");
    }

    protected void delos24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='os' AND userr='" + Session["user"].ToString() + "' AND os='" + Label27.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void ups23_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Product grid/upsgrid.aspx");
    }

    protected void delups24_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where product='ups' AND userr='" + Session["user"].ToString() + "' AND ups='" + Label25.Text + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }



    protected void Button56_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string str2 = "delete from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item Cleared'); window.location='startpc.aspx';</script>");
        conn.Close();
    }


    protected void Button55_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string checkr = "select userr from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdcheck = new SqlCommand(checkr, conn);
        SqlDataReader readercheck = cmdcheck.ExecuteReader();
        if (readercheck.HasRows)
        {
            Response.Write(" <script>window.alert('Unclear Items In Build Cart'); window.location='startpc.aspx';</script>");
        }
        else
        {
            readercheck.Close();




            string q = "select SUM(ramprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmdiron = new SqlCommand(q, conn);
            SqlDataReader readeriron = cmdiron.ExecuteReader();
            readeriron.Read();
            string gym = readeriron.GetValue(0).ToString();
            int gputot = int.Parse(gym);
            readeriron.Close();


            string q1 = "select SUM(gpuprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(q1, conn);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            reader1.Read();
            string gym1 = reader1.GetValue(0).ToString();
            int gputot1 = int.Parse(gym1);
            reader1.Close();


            string q2 = "select SUM(softwareprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd2 = new SqlCommand(q2, conn);
            SqlDataReader reader2 = cmd2.ExecuteReader();

            reader2.Read();
            string gym2 = reader2.GetValue(0).ToString();
            int gputot2 = int.Parse(gym2);
            reader2.Close();


            string q3 = "select mbprice from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd3 = new SqlCommand(q3, conn);
            SqlDataReader reader3 = cmd3.ExecuteReader();

            reader3.Read();
            string gym3 = reader3.GetValue(0).ToString();
            int gputot3 = int.Parse(gym3);
            reader3.Close();


            string q4 = "select SUM(hddprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd4 = new SqlCommand(q4, conn);
            SqlDataReader reader4 = cmd4.ExecuteReader();

            reader4.Read();
            string gym4 = reader4.GetValue(0).ToString();
            int gputot4 = int.Parse(gym4);
            reader4.Close();


            string q5 = "select SUM(ssdprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd5 = new SqlCommand(q5, conn);
            SqlDataReader reader5 = cmd5.ExecuteReader();

            reader5.Read();
            string gym5 = reader5.GetValue(0).ToString();
            int gputot5 = int.Parse(gym5);
            reader5.Close();


            string q6 = "select SUM(proprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd6 = new SqlCommand(q6, conn);
            SqlDataReader reader6 = cmd6.ExecuteReader();

            reader6.Read();
            string gym6 = reader6.GetValue(0).ToString();
            int gputot6 = int.Parse(gym6);
            reader6.Close();


            string q7 = "select SUM(coolerprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd7 = new SqlCommand(q7, conn);
            SqlDataReader reader7 = cmd7.ExecuteReader();

            reader7.Read();
            string gym7 = reader7.GetValue(0).ToString();
            int gputot7 = int.Parse(gym7);
            reader7.Close();



            string q8 = "select SUM(soundcardprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd8 = new SqlCommand(q8, conn);
            SqlDataReader reader8 = cmd8.ExecuteReader();

            reader8.Read();
            string gym8 = reader8.GetValue(0).ToString();
            int gputot8 = int.Parse(gym8);
            reader8.Close();


            string q9 = "select SUM(networkcardprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd9 = new SqlCommand(q9, conn);
            SqlDataReader reader9 = cmd9.ExecuteReader();

            reader9.Read();
            string gym9 = reader9.GetValue(0).ToString();
            int gputot9 = int.Parse(gym9);
            reader9.Close();


            string q10 = "select SUM(opticaldriveprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd10 = new SqlCommand(q10, conn);
            SqlDataReader reader10 = cmd10.ExecuteReader();

            reader10.Read();
            string gym10 = reader10.GetValue(0).ToString();
            int gputot10 = int.Parse(gym10);
            reader10.Close();


            string q11 = "select SUM(powerprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd11 = new SqlCommand(q11, conn);
            SqlDataReader reader11 = cmd11.ExecuteReader();

            reader11.Read();
            string gym11 = reader11.GetValue(0).ToString();
            int gputot11 = int.Parse(gym11);
            reader11.Close();


            string q12 = "select SUM(caseprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd12 = new SqlCommand(q12, conn);
            SqlDataReader reader12 = cmd12.ExecuteReader();

            reader12.Read();
            string gym12 = reader12.GetValue(0).ToString();
            int gputot12 = int.Parse(gym12);
            reader12.Close();


            string q13 = "select SUM(casefanprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd13 = new SqlCommand(q13, conn);
            SqlDataReader reader13 = cmd13.ExecuteReader();

            reader13.Read();
            string gym13 = reader13.GetValue(0).ToString();
            int gputot13 = int.Parse(gym13);
            reader13.Close();


            string q14 = "select SUM(monitorprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd14 = new SqlCommand(q14, conn);
            SqlDataReader reader14 = cmd14.ExecuteReader();

            reader14.Read();
            string gym14 = reader14.GetValue(0).ToString();
            int gputot14 = int.Parse(gym14);
            reader14.Close();


            string q15 = "select SUM(keyboardprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd15 = new SqlCommand(q15, conn);
            SqlDataReader reader15 = cmd15.ExecuteReader();

            reader15.Read();
            string gym15 = reader15.GetValue(0).ToString();
            int gputot15 = int.Parse(gym15);
            reader15.Close();


            string q16 = "select SUM(mouseprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd16 = new SqlCommand(q16, conn);
            SqlDataReader reader16 = cmd16.ExecuteReader();

            reader16.Read();
            string gym16 = reader16.GetValue(0).ToString();
            int gputot16 = int.Parse(gym16);
            reader16.Close();


            string q17 = "select SUM(speakerprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd17 = new SqlCommand(q17, conn);
            SqlDataReader reader17 = cmd17.ExecuteReader();

            reader17.Read();
            string gym17 = reader17.GetValue(0).ToString();
            int gputot17 = int.Parse(gym17);
            reader17.Close();


            string q18 = "select SUM(upsprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd18 = new SqlCommand(q18, conn);
            SqlDataReader reader18 = cmd18.ExecuteReader();

            reader18.Read();
            string gym18 = reader18.GetValue(0).ToString();
            int gputot18 = int.Parse(gym18);
            reader18.Close();




            string q20 = "select SUM(osprice) from makecart where userr ='" + Session["user"].ToString() + "'";
            SqlCommand cmd20 = new SqlCommand(q20, conn);
            SqlDataReader reader20 = cmd20.ExecuteReader();

            reader20.Read();
            string gym20 = reader20.GetValue(0).ToString();
            int gputot20 = int.Parse(gym20);
            reader20.Close();



            int grandtot = gputot + gputot1 + gputot2 + gputot3 + gputot4 + gputot5 + gputot6 + gputot7 + gputot8 + gputot9 + gputot10 + gputot11 + gputot12 + gputot13 + gputot14 + gputot15 + gputot16 + gputot17 + gputot18 + gputot20;


            string ordp = "insert into finalcart(userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp) select userr,'101',mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,'11' from makecart where userr='" + Session["user"].ToString() + "'";
            SqlCommand cmdfinal = new SqlCommand(ordp, conn);
            cmdfinal.ExecuteNonQuery();

            String pass = "123456";
            Random r = new Random();
            char[] mypass = new char[6];
            for (int i = 0; i < 6; i++)
            {
                mypass[i] = pass[(int)(4 * r.NextDouble())];

            }
            string bn = new string(mypass);
            int thor = 101;

            int tr = Convert.ToInt32(bn);

            string iQ = "select transactionn from finalcart where userr='" + Session["user"].ToString() + "'";
            SqlCommand cmdi = new SqlCommand(iQ, conn);
            SqlDataReader readerw = cmdi.ExecuteReader();

            if (readerw.HasRows)
            {
                readerw.Read();
                string noiq = readerw.GetValue(0).ToString();
                int yy = Convert.ToInt32(noiq);
                readerw.Close();
                if (yy == tr && yy == thor)
                {
                    tr = tr + 1;

                    string upt = "update finalcart set transactionn='" + tr + "', totalp='" + grandtot + "' where userr='" + Session["user"].ToString() + "'";
                    SqlCommand cmdu = new SqlCommand(upt, conn);
                    cmdu.ExecuteNonQuery();
                }
                else
                {
                    string upt = "update finalcart set transactionn='" + tr + "', totalp='" + grandtot + "' where userr='" + Session["user"].ToString() + "'";
                    SqlCommand cmdu = new SqlCommand(upt, conn);
                    cmdu.ExecuteNonQuery();
                }






            }
            else
            {
                string upt = "update finalcart set transactionn='" + tr + "', totalp='" + grandtot + "' where userr='" + Session["user"].ToString() + "'";
                SqlCommand cmdu = new SqlCommand(upt, conn);
                cmdu.ExecuteNonQuery();
            }

            conn.Close();
            Response.Write(" <script>window.alert('ADDED TO CART');</script>");
            Response.Redirect("~/User/buildcart.aspx");

        }
    }

    protected void softwarelist_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/product grid/listsoftware.aspx");
    }
}