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

public partial class Admin_deleteproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel15.Visible = false;
        Panel16.Visible = false;
        Panel17.Visible = false;
        Panel18.Visible = false;
        Panel19.Visible = false;
        Panel20.Visible = false;
    }
    protected void com_Click(object sender, EventArgs e)
    {
        
    }
    protected void user_Click(object sender, EventArgs e)
    {
        
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
        Panel5.Visible = true;
    }

    protected void smps_Click(object sender, EventArgs e)
    {
        Panel6.Visible = true;
    }

    protected void hd_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
    }

    protected void sd_Click(object sender, EventArgs e)
    {
        Panel8.Visible = true;
    }

    protected void ssd_Click(object sender, EventArgs e)
    {
        Panel9.Visible = true;
    }

    protected void coolent_Click(object sender, EventArgs e)
    {
        Panel10.Visible = true;
    }

    protected void case_Click(object sender, EventArgs e)
    {
        Panel11.Visible = true;
    }

    protected void net_Click(object sender, EventArgs e)
    {
        Panel12.Visible = true;
    }

    protected void kb_Click(object sender, EventArgs e)
    {
        Panel13.Visible = true;
    }

    protected void mice_Click(object sender, EventArgs e)
    {
        Panel14.Visible = true;
    }

    protected void mon_Click(object sender, EventArgs e)
    {
        Panel15.Visible = true;
    }

    protected void speaker_Click(object sender, EventArgs e)
    {
        Panel16.Visible = true;
    }

    protected void ups_Click(object sender, EventArgs e)
    {
        Panel17.Visible = true;
    }

    protected void os_Click(object sender, EventArgs e)
    {
        Panel18.Visible = true;
    }

    protected void so_Click(object sender, EventArgs e)
    {
        Panel19.Visible = true;
    }

    protected void soo_Click(object sender, EventArgs e)
    {
        Panel20.Visible = true;
    }

    protected void del_mb(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from motherboard where man='" + TextBox1.Text + "'";
        SqlCommand cmdc = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from motherboard where man='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery(); 
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_ram(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from ram where man='" + TextBox2.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from ram where man='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_fan(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from casefan where man='" + TextBox20.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from casefan where man='" + TextBox20.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_sof(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from software where man='" + TextBox19.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from software where man='" + TextBox19.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_os(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from os where man='" + TextBox18.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from os where man='" + TextBox18.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_ups(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from ups where man='" + TextBox17.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from ups where man='" + TextBox17.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_spk(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from speaker where man='" + TextBox16.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from speaker where man='" + TextBox16.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_mon(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from monitor where man='" + TextBox15.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from monitor where man='" + TextBox15.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_mouse(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from mouse where man='" + TextBox14.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from mouse where man='" + TextBox14.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_key(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from keyboard where man='" + TextBox13.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from keyboard where man='" + TextBox13.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_net(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from net where man='" + TextBox12.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from net where man='" + TextBox12.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_case(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from casee where man='" + TextBox11.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from casee where man='" + TextBox11.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_cool(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from cooler where man='" + TextBox10.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from cooler where man='" + TextBox10.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_ssd(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from ssd where man='" + TextBox9.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from ssd where man='" + TextBox9.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_sd(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from soundcard where man='" + TextBox8.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from soundcard where man='" + TextBox8.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_hdd(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from hdd where man='" + TextBox7.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from hdd where man='" + TextBox7.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_smps(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from smps where man='" + TextBox6.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from smps where man='" + TextBox6.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_cd(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from cddrive where man='" + TextBox5.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from cddrive where man='" + TextBox5.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_gpu(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from gpu where man='" + TextBox4.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from gpu where man='" + TextBox4.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }

    protected void del_pro(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();

        string chk = "select man from processor where man='" + TextBox3.Text + "'";
        SqlCommand cmdc1 = new SqlCommand(chk, conn);
        SqlDataReader reader = cmdc1.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Close();
            string str = "delete from processor where man='" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            Response.Write(" <script>window.alert('Item removed'); window.location='deleteproduct.aspx';</script>");
            conn.Close();
        }
        else
        {
            reader.Close();
            Response.Write(" <script>window.alert('Invaild Item'); window.location='deleteproduct.aspx';</script>");
        }
    }
}