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
using System.IO;

public partial class expertsystem_createexpert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "select pric from motherboard where man='" + DropDownList1.SelectedItem + "'";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();
            string no = reader.GetValue(0).ToString();
            Label1.Text = no;
            reader.Close();
        }
        else
        {
            Label1.Text = "0";
        }
        conn.Close();


        
        conn.Open();
        string insertQueryram = "select pric from ram where man='" + DropDownList2.SelectedItem + "'";
        SqlCommand cmdram = new SqlCommand(insertQueryram, conn);
        SqlDataReader readerram = cmdram.ExecuteReader();

        if (readerram.HasRows)
        {
            readerram.Read();
            string noram = readerram.GetValue(0).ToString();
            Label2.Text = noram;
            readerram.Close();
        }
        else
        {
            Label2.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert1 = "select pric from processor where man='" + DropDownList3.SelectedItem + "'";
        SqlCommand cmd1 = new SqlCommand(insert1, conn);
        SqlDataReader reader1 = cmd1.ExecuteReader();

        if (reader1.HasRows)
        {
            reader1.Read();
            string no1 = reader1.GetValue(0).ToString();
            Label3.Text = no1;
            reader1.Close();
        }
        else
        {
            Label3.Text = "0";
        }
        conn.Close();


        conn.Open();
        string insert2 = "select pric from gpu where man='" + DropDownList4.SelectedItem + "'";
        SqlCommand cmd2 = new SqlCommand(insert2, conn);
        SqlDataReader reader2 = cmd2.ExecuteReader();

        if (reader2.HasRows)
        {
            reader2.Read();
            string no2 = reader2.GetValue(0).ToString();
            Label4.Text = no2;
            reader2.Close();
        }
        else
        {
            Label4.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert3 = "select pric from cddrive where man='" + DropDownList5.SelectedItem + "'";
        SqlCommand cmd3 = new SqlCommand(insert3, conn);
        SqlDataReader reader3 = cmd3.ExecuteReader();

        if (reader3.HasRows)
        {
            reader3.Read();
            string no3 = reader3.GetValue(0).ToString();
            Label5.Text = no3;
            reader3.Close();
        }
        else
        {
            Label5.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert4 = "select pric from smps where man='" + DropDownList6.SelectedItem + "'";
        SqlCommand cmd4 = new SqlCommand(insert4, conn);
        SqlDataReader reader4 = cmd4.ExecuteReader();

        if (reader4.HasRows)
        {
            reader4.Read();
            string no4 = reader4.GetValue(0).ToString();
            Label6.Text = no4;
            reader4.Close();
        }
        else
        {
            Label6.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert5 = "select pric from hdd where man='" + DropDownList7.SelectedItem + "'";
        SqlCommand cmd5 = new SqlCommand(insert5, conn);
        SqlDataReader reader5 = cmd5.ExecuteReader();

        if (reader5.HasRows)
        {
            reader5.Read();
            string no5 = reader5.GetValue(0).ToString();
            Label7.Text = no5;
            reader5.Close();
        }
        else
        {
            Label7.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert6 = "select pric from soundcard where man='" + DropDownList8.SelectedItem + "'";
        SqlCommand cmd6 = new SqlCommand(insert6, conn);
        SqlDataReader reader6 = cmd6.ExecuteReader();

        if (reader6.HasRows)
        {
            reader6.Read();
            string no6 = reader6.GetValue(0).ToString();
            Label8.Text = no6;
            reader6.Close();
        }
        else
        {
            Label8.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert7 = "select pric from ssd where man='" + DropDownList9.SelectedItem + "'";
        SqlCommand cmd7 = new SqlCommand(insert7, conn);
        SqlDataReader reader7 = cmd7.ExecuteReader();

        if (reader7.HasRows)
        {
            reader7.Read();
            string no7 = reader7.GetValue(0).ToString();
            Label9.Text = no7;
            reader7.Close();
        }
        else
        {
            Label9.Text = "0";
        }
        conn.Close();


        conn.Open();
        string insert8 = "select pric from cooler where man='" + DropDownList10.SelectedItem + "'";
        SqlCommand cmd8 = new SqlCommand(insert8, conn);
        SqlDataReader reader8 = cmd8.ExecuteReader();

        if (reader8.HasRows)
        {
            reader8.Read();
            string no8 = reader8.GetValue(0).ToString();
            Label10.Text = no8;
            reader8.Close();
        }
        else
        {
            Label10.Text = "0";
        }
        conn.Close();


        conn.Open();
        string insert12 = "select pric from casee where man='" + DropDownList11.SelectedItem + "'";
        SqlCommand cmd12 = new SqlCommand(insert12, conn);
        SqlDataReader reader12 = cmd12.ExecuteReader();

        if (reader12.HasRows)
        {
            reader12.Read();
            string no12 = reader12.GetValue(0).ToString();
            Label12.Text = no12;
            reader12.Close();
        }
        else
        {
            Label12.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert13 = "select pric from net where man='" + DropDownList12.SelectedItem + "'";
        SqlCommand cmd13 = new SqlCommand(insert13, conn);
        SqlDataReader reader13 = cmd13.ExecuteReader();

        if (reader13.HasRows)
        {
            reader13.Read();
            string no13 = reader13.GetValue(0).ToString();
            Label13.Text = no13;
            reader13.Close();
        }
        else
        {
            Label13.Text = "0";
        }
        conn.Close();


        conn.Open();
        string insert14 = "select pric from keyboard where man='" + DropDownList13.SelectedItem + "'";
        SqlCommand cmd14 = new SqlCommand(insert14, conn);
        SqlDataReader reader14 = cmd14.ExecuteReader();

        if (reader14.HasRows)
        {
            reader14.Read();
            string no14 = reader14.GetValue(0).ToString();
            Label14.Text = no14;
            reader14.Close();
        }
        else
        {
            Label14.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert15 = "select pric from mouse where man='" + DropDownList14.SelectedItem + "'";
        SqlCommand cmd15 = new SqlCommand(insert15, conn);
        SqlDataReader reader15 = cmd15.ExecuteReader();

        if (reader15.HasRows)
        {
            reader15.Read();
            string no15 = reader15.GetValue(0).ToString();
            Label15.Text = no15;
            reader15.Close();
        }
        else
        {
            Label15.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert16 = "select pric from monitor where man='" + DropDownList15.SelectedItem + "'";
        SqlCommand cmd16 = new SqlCommand(insert16, conn);
        SqlDataReader reader16 = cmd16.ExecuteReader();

        if (reader16.HasRows)
        {
            reader16.Read();
            string no16 = reader16.GetValue(0).ToString();
            Label16.Text = no16;
            reader16.Close();
        }
        else
        {
            Label16.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert17 = "select pric from speaker where man='" + DropDownList16.SelectedItem + "'";
        SqlCommand cmd17 = new SqlCommand(insert17, conn);
        SqlDataReader reader17 = cmd17.ExecuteReader();

        if (reader17.HasRows)
        {
            reader17.Read();
            string no17 = reader17.GetValue(0).ToString();
            Label17.Text = no17;
            reader17.Close();
        }
        else
        {
            Label17.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert18 = "select pric from ups where man='" + DropDownList17.SelectedItem + "'";
        SqlCommand cmd18 = new SqlCommand(insert18, conn);
        SqlDataReader reader18 = cmd18.ExecuteReader();

        if (reader18.HasRows)
        {
            reader18.Read();
            string no18 = reader18.GetValue(0).ToString();
            Label22.Text = no18;
            reader18.Close();
        }
        else
        {
            Label22.Text = "0";
        }
        conn.Close();

        conn.Open();
        string insert19 = "select pric from casefan where man='" + DropDownList18.SelectedItem + "'";
        SqlCommand cmd19 = new SqlCommand(insert19, conn);
        SqlDataReader reader19 = cmd19.ExecuteReader();

        if (reader19.HasRows)
        {
            reader19.Read();
            string no19 = reader19.GetValue(0).ToString();
            Label23.Text = no19;
            reader19.Close();
        }
        else
        {
            Label23.Text = "0";
        }
        conn.Close();


        conn.Open();
        string insert20 = "select pric from ram where man='" + DropDownList25.SelectedItem + "'";
        SqlCommand cmd20 = new SqlCommand(insert20, conn);
        SqlDataReader reader20 = cmd20.ExecuteReader();

        if (reader20.HasRows)
        {
            reader20.Read();
            string no20 = reader20.GetValue(0).ToString();
            Label18.Text = no20;
            reader20.Close();
        }
        else
        {
            Label18.Text = "0";
        }
        conn.Close();


        conn.Open();
        string insert21 = "select pric from ram where man='" + DropDownList26.SelectedItem + "'";
        SqlCommand cmd21 = new SqlCommand(insert21, conn);
        SqlDataReader reader21 = cmd21.ExecuteReader();

        if (reader21.HasRows)
        {
            reader21.Read();
            string no21 = reader21.GetValue(0).ToString();
            Label19.Text = no21;
            reader21.Close();
        }
        else
        {
            Label19.Text = "0";
        }
        conn.Close();


        conn.Open();
        string insert22 = "select pric from ram where man='" + DropDownList27.SelectedItem + "'";
        SqlCommand cmd22 = new SqlCommand(insert22, conn);
        SqlDataReader reader22 = cmd22.ExecuteReader();

        if (reader22.HasRows)
        {
            reader22.Read();
            string no22 = reader22.GetValue(0).ToString();
            Label20.Text = no22;
            reader22.Close();
        }
        else
        {
            Label20.Text = "0";
        }
        conn.Close();


        conn.Open();
        string insert23 = "select pric from gpu where man='" + DropDownList28.SelectedItem + "'";
        SqlCommand cmd23 = new SqlCommand(insert23, conn);
        SqlDataReader reader23 = cmd23.ExecuteReader();

        if (reader23.HasRows)
        {
            reader23.Read();
            string no23 = reader23.GetValue(0).ToString();
            Label21.Text = no23;
            reader23.Close();
        }
        else
        {
            Label21.Text = "0";
        }
        conn.Close();

        int qua = int.Parse(Label1.Text) + int.Parse(Label2.Text) + int.Parse(Label3.Text) + int.Parse(Label4.Text) + int.Parse(Label5.Text) + int.Parse(Label6.Text) + int.Parse(Label7.Text) + int.Parse(Label8.Text) + int.Parse(Label9.Text) + int.Parse(Label10.Text) + int.Parse(Label12.Text) + int.Parse(Label13.Text) + int.Parse(Label14.Text) + int.Parse(Label15.Text) + int.Parse(Label16.Text) + int.Parse(Label17.Text) + int.Parse(Label18.Text) + int.Parse(Label19.Text) + int.Parse(Label20.Text) + int.Parse(Label21.Text) + int.Parse(Label22.Text) + int.Parse(Label23.Text);
        Label11.Text = qua.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int quan = int.Parse(Label11.Text);
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        mbimg1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(mbimg1.FileName));
        String link = "/images/" + Path.GetFileName(mbimg1.FileName);
        mbimg2.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(mbimg2.FileName));
        String link2 = "/images/" + Path.GetFileName(mbimg2.FileName);
        mbimg3.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(mbimg3.FileName));
        String link3 = "/images/" + Path.GetFileName(mbimg3.FileName);
        conn.Open();
        string insertQuery = "insert into expert(budget,type,images1,images2,images3,pri1,pri2,pri3,pri4,motherboard,ram,ram1,ram2,ram3,processor,gpu,gpu1,cddrive,smps,hdd,soundcard,ssd,cool,casee,net,keyboard,mouse,monitor,speaker,ups,casefan,totalprice) values('" + DropDownList19.SelectedItem + "','" + DropDownList20.SelectedItem + "','" + link + "','" + link2 + "','" + link3 + "','" + DropDownList21.SelectedItem + "','" + DropDownList22.SelectedItem + "','" + DropDownList23.SelectedItem + "','" + DropDownList24.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + DropDownList25.SelectedItem + "','" + DropDownList26.SelectedItem + "','" + DropDownList27.SelectedItem + "','" + DropDownList3.SelectedItem + "','" + DropDownList4.SelectedItem + "','" + DropDownList28.SelectedItem + "','" + DropDownList5.SelectedItem + "','" + DropDownList6.SelectedItem + "','" + DropDownList7.SelectedItem + "','" + DropDownList8.SelectedItem + "','" + DropDownList9.SelectedItem + "','" + DropDownList10.SelectedItem + "','" + DropDownList11.SelectedItem + "','" + DropDownList12.SelectedItem + "','" + DropDownList13.SelectedItem + "','" + DropDownList14.SelectedItem + "','" + DropDownList15.SelectedItem + "','" + DropDownList16.SelectedItem + "','" + DropDownList17.SelectedItem + "','" + DropDownList18.SelectedItem + "','" + quan + "')";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(" <script>window.alert('System added'); window.location='createexpert.aspx';</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/createexpert.aspx");
    }

    protected void DropDownList16_DataBound(object sender, EventArgs e)
    {
        DropDownList16.Items.Insert(0, new ListItem("omitted", "0"));
    }

    protected void DropDownList17_DataBound(object sender, EventArgs e)
    {
        DropDownList17.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList13_DataBound(object sender, EventArgs e)
    {
        DropDownList13.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList14_DataBound(object sender, EventArgs e)
    {
        DropDownList14.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList25_DataBound(object sender, EventArgs e)
    {
        DropDownList25.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList26_DataBound(object sender, EventArgs e)
    {
        DropDownList26.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList27_DataBound(object sender, EventArgs e)
    {
        DropDownList27.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList28_DataBound(object sender, EventArgs e)
    {
        DropDownList28.Items.Insert(0, new ListItem("omitted", "0"));
    }

    protected void DropDownList4_DataBound(object sender, EventArgs e)
    {
        DropDownList4.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList8_DataBound(object sender, EventArgs e)
    {
        DropDownList8.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList9_DataBound(object sender, EventArgs e)
    {
        DropDownList9.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList12_DataBound(object sender, EventArgs e)
    {
        DropDownList12.Items.Insert(0, new ListItem("omitted", "0"));
    }
    protected void DropDownList15_DataBound(object sender, EventArgs e)
    {
        DropDownList15.Items.Insert(0, new ListItem("omitted", "0"));
    }
}