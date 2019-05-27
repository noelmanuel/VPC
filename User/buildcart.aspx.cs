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

public partial class User_buildcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Text = DateTime.Now.ToString("M/d/yyyy");

        for (int i = 2019; i <= 2030; i++)
        {
            DropDownList3.Items.Add(i.ToString());
            DropDownList5.Items.Add(i.ToString());
        }
        Panel1.Visible = false;
        Panel4.Visible = false;
        Panel3.Visible = true;
        Panel5.Visible = false;
        Panel6.Visible = false;


        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

    }





    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            //Determine the RowIndex of the Row whose Button was clicked.
            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //Reference the GridView Row.
            GridViewRow row = GridView1.Rows[rowIndex];

            //Fetch value of Name.

            string pro = (row.FindControl("Label1") as Label).Text;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            string insertQuery = "select DISTINCT mb from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "'";
            SqlCommand cmdqw = new SqlCommand(insertQuery, conn);
            SqlDataReader readerqw = cmdqw.ExecuteReader();
            if (readerqw.HasRows && readerqw.Read())
            {
                string no = readerqw.GetValue(0).ToString();
                Label3.Text = no;
            }
            else
            {
                Label3.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw.Close();

            string insertQuery1 = "select ram from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND ram !=''";
            SqlCommand cmdqw1 = new SqlCommand(insertQuery1, conn);
            SqlDataReader readerqw1 = cmdqw1.ExecuteReader();
            if (readerqw1.HasRows && readerqw1.Read())
            {
                string no1 = readerqw1.GetValue(0).ToString();
                Label4.Text = no1;
            }
            else
            {
                Label4.Text = "Not Selected";
            }
            if (readerqw1.HasRows && readerqw1.Read())
            {
                string no2 = readerqw1.GetValue(0).ToString();
                Label5.Text = no2;
            }
            else
            {
                Label5.Text = "Not Selected";
            }
            if (readerqw1.HasRows && readerqw1.Read())
            {
                string no3 = readerqw1.GetValue(0).ToString();
                Label6.Text = no3;
            }
            else
            {
                Label6.Text = "Not Selected";
            }
            if (readerqw1.HasRows && readerqw1.Read())
            {
                string no4 = readerqw1.GetValue(0).ToString();
                Label7.Text = no4;
            }
            else
            {
                Label7.Text = "Not Selected";
            }
            
           
            Panel1.Visible = true;
            readerqw1.Close();



            string insertQuery2 = "select gpu from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND gpu !=''";
            SqlCommand cmdqw2 = new SqlCommand(insertQuery2, conn);
            SqlDataReader readerqw2 = cmdqw2.ExecuteReader();
            
            if (readerqw2.HasRows && readerqw2.Read())
            {
                string no3 = readerqw2.GetValue(0).ToString();
                Label8.Text = no3;
            }
            else
            {
                string no3 = "Not Selected";
                Label8.Text = no3;
            }
            if (readerqw2.HasRows &&  readerqw2.Read())
            {
                string no4 = readerqw2.GetValue(0).ToString();
                Label9.Text = no4;
            }
            else
            {
                string no4 = "Not Selected";
                Label9.Text = no4;
            }


            Panel1.Visible = true;
            readerqw2.Close();


            string insertQuery5 = "select pro from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND pro !=''";
            SqlCommand cmdqw5 = new SqlCommand(insertQuery5, conn);
            SqlDataReader readerqw5 = cmdqw5.ExecuteReader();
            if (readerqw5.HasRows && readerqw5.Read())
            {
                string no5 = readerqw5.GetValue(0).ToString();
                Label10.Text = no5;
            }
            else
            {
                Label10.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw5.Close();

            string insertQuery6 = "select hdd from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND hdd !=''";
            SqlCommand cmdqw6 = new SqlCommand(insertQuery6, conn);
            SqlDataReader readerqw6 = cmdqw6.ExecuteReader();
            if (readerqw6.HasRows && readerqw6.Read())
            {
                string no6 = readerqw6.GetValue(0).ToString();
                Label11.Text = no6;
            }
            else
            {
                Label11.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw6.Close();

            string insertQuery7 = "select sssd from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND sssd !=''";
            SqlCommand cmdqw7 = new SqlCommand(insertQuery7, conn);
            SqlDataReader readerqw7 = cmdqw7.ExecuteReader();
            if (readerqw7.HasRows && readerqw7.Read())
            {
                string no7 = readerqw7.GetValue(0).ToString();
                Label12.Text = no7;
            }
            else
            {
                Label12.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw7.Close();


            string insertQuery8 = "select cooler from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND cooler !=''";
            SqlCommand cmdqw8 = new SqlCommand(insertQuery8, conn);
            SqlDataReader readerqw8 = cmdqw8.ExecuteReader();
            if (readerqw8.HasRows && readerqw8.Read())
            {
                string no8 = readerqw8.GetValue(0).ToString();
                Label13.Text = no8;
            }
            else
            {
                Label13.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw8.Close();


            string insertQuery9 = "select soundcard from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND soundcard !=''";
            SqlCommand cmdqw9 = new SqlCommand(insertQuery9, conn);
            SqlDataReader readerqw9 = cmdqw9.ExecuteReader();
            if (readerqw9.HasRows && readerqw9.Read())
            {
                string no9 = readerqw9.GetValue(0).ToString();
                Label14.Text = no9;
            }
            else
            {
                Label14.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw9.Close();


            string insertQuery10 = "select networkcard from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND networkcard !=''";
            SqlCommand cmdqw10 = new SqlCommand(insertQuery10, conn);
            SqlDataReader readerqw10 = cmdqw10.ExecuteReader();
            if (readerqw10.HasRows && readerqw10.Read())
            {
                string no10 = readerqw10.GetValue(0).ToString();
                Label15.Text = no10;
            }
            else
            {
                Label15.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw10.Close();

            string insertQuery11 = "select opticaldrive from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND opticaldrive !=''";
            SqlCommand cmdqw11 = new SqlCommand(insertQuery11, conn);
            SqlDataReader readerqw11 = cmdqw11.ExecuteReader();
            if (readerqw11.HasRows && readerqw11.Read())
            {
                string no11 = readerqw11.GetValue(0).ToString();
                Label16.Text = no11;
            }
            else
            {
                Label16.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw11.Close();

            string insertQuery12 = "select powerr from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND powerr !=''";
            SqlCommand cmdqw12 = new SqlCommand(insertQuery12, conn);
            SqlDataReader readerqw12 = cmdqw12.ExecuteReader();
            if (readerqw12.HasRows && readerqw12.Read())
            {
                string no12 = readerqw12.GetValue(0).ToString();
                Label17.Text = no12;
            }
            else
            {
                Label17.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw12.Close();

            string insertQuery13 = "select casee from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND casee !=''";
            SqlCommand cmdqw13 = new SqlCommand(insertQuery13, conn);
            SqlDataReader readerqw13 = cmdqw13.ExecuteReader();
            if (readerqw13.HasRows && readerqw13.Read())
            {
                string no13 = readerqw13.GetValue(0).ToString();
                Label18.Text = no13;
            }
            else
            {
                Label18.Text = "Not Selected";
            }
            Panel1.Visible = true;          
            readerqw13.Close();

            string insertQuery14 = "select casefan from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND casefan !=''";
            SqlCommand cmdqw14 = new SqlCommand(insertQuery14, conn);
            SqlDataReader readerqw14 = cmdqw14.ExecuteReader();
            if (readerqw14.HasRows && readerqw14.Read())
            {
                string no14 = readerqw14.GetValue(0).ToString();
                Label19.Text = no14;
            }
            else
            {
                Label19.Text = "Not Selected";
            }
            Panel1.Visible = true;
            readerqw14.Close();

            string insertQuery15 = "select monitor from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND monitor !=''";
            SqlCommand cmdqw15 = new SqlCommand(insertQuery15, conn);
            SqlDataReader readerqw15 = cmdqw15.ExecuteReader();
            if (readerqw15.HasRows && readerqw15.Read())
            {
                string no15 = readerqw15.GetValue(0).ToString();
                Label20.Text = no15;
            }
            else
            {
                Label20.Text = "Not Selected";
            }
            readerqw15.Close();


            string insertQuery16 = "select keyboard from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND keyboard !=''";
            SqlCommand cmdqw16 = new SqlCommand(insertQuery16, conn);
            SqlDataReader readerqw16 = cmdqw16.ExecuteReader();
            if (readerqw16.HasRows && readerqw16.Read())
            {
                string no16 = readerqw16.GetValue(0).ToString();
                Label21.Text = no16;
            }
            else
            {
                Label21.Text = "Not Selected";
            }
            readerqw16.Close();


            string insertQuery17 = "select mouse from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND mouse !=''";
            SqlCommand cmdqw17 = new SqlCommand(insertQuery17, conn);
            SqlDataReader readerqw17 = cmdqw17.ExecuteReader();
            if (readerqw17.HasRows && readerqw17.Read())
            {
                string no17 = readerqw17.GetValue(0).ToString();
                Label22.Text = no17;
            }
            else
            {
                Label22.Text = "Not Selected";
            }
            readerqw17.Close();


            string insertQuery18 = "select speaker from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND speaker !=''";
            SqlCommand cmdqw18 = new SqlCommand(insertQuery18, conn);
            SqlDataReader readerqw18 = cmdqw18.ExecuteReader();
            if (readerqw18.HasRows && readerqw18.Read())
            {
                string no18 = readerqw18.GetValue(0).ToString();
                Label23.Text = no18;
            }
            else
            {
                Label23.Text = "Not Selected";
            }
            readerqw18.Close();

            string insertQuery19 = "select os from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND os !=''";
            SqlCommand cmdqw19 = new SqlCommand(insertQuery19, conn);
            SqlDataReader readerqw19 = cmdqw19.ExecuteReader();
            if (readerqw19.HasRows && readerqw19.Read())
            {
                string no19 = readerqw19.GetValue(0).ToString();
                Label24.Text = no19;
            }
            else
            {
                Label24.Text = "Not Selected";
            }
            readerqw19.Close();

            string insertQuery20 = "select ups from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND ups !=''";
            SqlCommand cmdqw20 = new SqlCommand(insertQuery20, conn);
            SqlDataReader readerqw20 = cmdqw20.ExecuteReader();
            if (readerqw20.HasRows && readerqw20.Read())
            {
                string no20 = readerqw20.GetValue(0).ToString();
                Label25.Text = no20;
            }
            else
            {
                Label25.Text = "Not Selected";
            }
            readerqw20.Close();


            string insert1 = "select software from finalcart where userr='" + Session["user"].ToString() + "' AND transactionn='" + pro + "' AND software !=''";
            SqlCommand cmd34 = new SqlCommand(insert1, conn);
            SqlDataReader dr;
            dr = cmd34.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr[0].ToString());
                    
                }
            }
            else
            {
                Label26.Text = "Not selected";
            }

        }

       

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        Label compname = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        string str2 = "delete from finalcart where transactionn='" + compname.Text + "' AND userr='" + Session["user"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str2, conn);
        cmd.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Item removed'); window.location='startpc.aspx';</script>");
        conn.Close();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
        
        Panel4.Visible = true;
        Panel3.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel5.Visible = true;
        Panel6.Visible = false;

    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = true;
    }


    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string ordp = "insert into pastorder(userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp,orderstatus) select userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp,'confirmed' from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdfinal = new SqlCommand(ordp, conn);
        cmdfinal.ExecuteNonQuery();

        string tra = "select DISTINCT transactionn from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdtra = new SqlCommand(tra, conn);
        SqlDataReader readertra = cmdtra.ExecuteReader();
        readertra.Read();
        string transa = readertra.GetValue(0).ToString();
        readertra.Close();

        string subcredit = "insert into cashmodebuild(transactionn,username,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + transa + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','debit card','" + Convert.ToInt64(TextBox7.Text) + "','" + DropDownList4.SelectedItem + "','" + DropDownList5.SelectedItem + "','" + Convert.ToInt32(TextBox8.Text) + "','" + Label9.Text + "','" + TextBox10.Text + "')";
        SqlCommand cmdd = new SqlCommand(subcredit, conn);
        cmdd.ExecuteNonQuery();

        string strdet = "delete from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmddet = new SqlCommand(strdet, conn);
        cmddet.ExecuteNonQuery();

        string strdet1 = "delete from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmddet1 = new SqlCommand(strdet1, conn);
        cmddet1.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Order Confirmed'); window.location='startpc.aspx';</script>");

        conn.Close();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string ordp = "insert into pastorder(userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp,orderstatus) select userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp,'confirmed' from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdfinal = new SqlCommand(ordp, conn);
        cmdfinal.ExecuteNonQuery();

        string tra = "select DISTINCT transactionn from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdtra = new SqlCommand(tra, conn);
        SqlDataReader readertra = cmdtra.ExecuteReader();
        readertra.Read();
        string transa = readertra.GetValue(0).ToString();
        readertra.Close();

        string subcredit = "insert into cashmodebuild(transactionn,username,addr1,addr2,addr3,phone,payment_method,cardno,exp_month,exp_year,cvv,datee,cardholder_name) values('" + transa + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','credit card','" + Convert.ToInt64(TextBox5.Text) + "','" + DropDownList2.SelectedItem + "','" + DropDownList3.SelectedItem + "','" + Convert.ToInt32(TextBox6.Text) + "','" + Label9.Text + "','" + TextBox9.Text + "')";
        SqlCommand cmdd = new SqlCommand(subcredit, conn);
        cmdd.ExecuteNonQuery();

        string strdet = "delete from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmddet = new SqlCommand(strdet, conn);
        cmddet.ExecuteNonQuery();

        string strdet1 = "delete from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmddet1 = new SqlCommand(strdet1, conn);
        cmddet1.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Order Confirmed'); window.location='startpc.aspx';</script>");


        conn.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string ordp = "insert into pastorder(userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp,orderstatus) select userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp,'confirmed' from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdfinal = new SqlCommand(ordp, conn);
        cmdfinal.ExecuteNonQuery();

        string tra = "select DISTINCT transactionn from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdtra = new SqlCommand(tra, conn);
        SqlDataReader readertra = cmdtra.ExecuteReader();
        readertra.Read();
        string transa = readertra.GetValue(0).ToString();
        readertra.Close();

        string subcredit = "insert into cashmodebuild(transactionn,username,addr1,addr2,addr3,phone,payment_method,datee) values('" + transa + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','COD','" + Label9.Text + "')";
        SqlCommand cmdd = new SqlCommand(subcredit, conn);
        cmdd.ExecuteNonQuery();

        string strdet = "delete from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmddet = new SqlCommand(strdet, conn);
        cmddet.ExecuteNonQuery();

        string strdet1 = "delete from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmddet1 = new SqlCommand(strdet1, conn);
        cmddet1.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Order Confirmed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string ordp = "insert into pastorder(userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp,orderstatus) select userr,transactionn,mb,mbprice,ram,ramprice,gpu,gpuprice,hdd,hddprice,sssd,ssdprice,pro,proprice,cooler,coolerprice,soundcard,soundcardprice,networkcard,networkcardprice,opticaldrive,opticaldriveprice,powerr,powerprice,casee,caseprice,casefan,casefanprice,monitor,monitorprice,keyboard,keyboardprice,mouse,mouseprice,speaker,speakerprice,ups,upsprice,software,softwareprice,os,osprice,totalp,'confirmed' from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdfinal = new SqlCommand(ordp, conn);
        cmdfinal.ExecuteNonQuery();

        string tra = "select DISTINCT transactionn from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmdtra = new SqlCommand(tra, conn);
        SqlDataReader readertra = cmdtra.ExecuteReader();
        readertra.Read();
        string transa = readertra.GetValue(0).ToString();
        readertra.Close();

        string subcredit = "insert into cashmodebuild(transactionn,username,addr1,addr2,addr3,phone,payment_method,datee,cardno) values('" + transa + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','cod giftcard','" + Label9.Text + "','" + TextBox11.Text + "')";
        SqlCommand cmdd = new SqlCommand(subcredit, conn);
        cmdd.ExecuteNonQuery();

        string strdet = "delete from finalcart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmddet = new SqlCommand(strdet, conn);
        cmddet.ExecuteNonQuery();

        string strdet1 = "delete from makecart where userr='" + Session["user"].ToString() + "'";
        SqlCommand cmddet1 = new SqlCommand(strdet1, conn);
        cmddet1.ExecuteNonQuery();
        Response.Write(" <script>window.alert('Order Confirmed'); window.location='startpc.aspx';</script>");
        conn.Close();
    }
}