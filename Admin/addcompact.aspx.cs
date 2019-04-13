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

public partial class Admin_addcompact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox cbox = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
            int rollno = Convert.ToInt32(row.Cells[2].Text);
            string pro = row.Cells[1].Text;
            if (cbox.Checked)
            {
                
                foreach (GridViewRow row1 in GridView2.Rows)
                {
                    CheckBox cboxram = (row1.Cells[0].FindControl("CheckBox2") as CheckBox);
                    int rollnoram = Convert.ToInt32(row1.Cells[2].Text);
                    string proram = row1.Cells[1].Text;
                    if (cboxram.Checked)
                    {
                        
                        foreach (GridViewRow row2 in GridView3.Rows)
                        {
                            CheckBox cboxgpu = (row2.Cells[0].FindControl("CheckBox3") as CheckBox);
                            int rollnogpu = Convert.ToInt32(row2.Cells[2].Text);
                            string progpu = row2.Cells[1].Text;
                            if (cboxgpu.Checked)
                            {
                               
                                foreach (GridViewRow row3 in GridView4.Rows)
                                {
                                    CheckBox cboxcool = (row3.Cells[0].FindControl("CheckBox4") as CheckBox);
                                    int rollnocool = Convert.ToInt32(row3.Cells[2].Text);
                                    string procool = row3.Cells[1].Text;
                                    if (cboxcool.Checked)
                                    {
                                        
                                        foreach (GridViewRow row4 in GridView5.Rows)
                                        {
                                            CheckBox cboxhdd = (row4.Cells[0].FindControl("CheckBox5") as CheckBox);
                                            int rollnohdd = Convert.ToInt32(row4.Cells[2].Text);
                                            string prohdd = row4.Cells[1].Text;
                                            if (cboxhdd.Checked)
                                            {
                                                foreach (GridViewRow row5 in GridView6.Rows)
                                                {
                                                    CheckBox cboxssd = (row5.Cells[0].FindControl("CheckBox6") as CheckBox);
                                                    int rollnossd = Convert.ToInt32(row5.Cells[2].Text);
                                                    string prossd = row5.Cells[1].Text;
                                                    if (cboxssd.Checked)
                                                    {
                                                        foreach (GridViewRow row6 in GridView7.Rows)
                                                        {
                                                            CheckBox cboxcd = (row6.Cells[0].FindControl("CheckBox7") as CheckBox);
                                                            int rollnocd = Convert.ToInt32(row6.Cells[2].Text);
                                                            string procd = row6.Cells[1].Text;
                                                            if (cboxcd.Checked)
                                                            {
                                                                foreach (GridViewRow row7 in GridView8.Rows)
                                                                {
                                                                    CheckBox cboxpro = (row7.Cells[0].FindControl("CheckBox8") as CheckBox);
                                                                    int rollnopro = Convert.ToInt32(row7.Cells[2].Text);
                                                                    string propro = row7.Cells[1].Text;
                                                                    if (cboxpro.Checked)
                                                                    {
                                                                        foreach (GridViewRow row8 in GridView9.Rows)
                                                                        {
                                                                            CheckBox cboxsd = (row8.Cells[0].FindControl("CheckBox9") as CheckBox);
                                                                            int rollnosd = Convert.ToInt32(row8.Cells[2].Text);
                                                                            string prosd = row8.Cells[1].Text;
                                                                            if (cboxsd.Checked)
                                                                            {
                                                                                foreach (GridViewRow row9 in GridView10.Rows)
                                                                                {
                                                                                    CheckBox cboxnet = (row9.Cells[0].FindControl("CheckBox10") as CheckBox);
                                                                                    int rollnonet = Convert.ToInt32(row9.Cells[2].Text);
                                                                                    string pronet = row9.Cells[1].Text;
                                                                                    if (cboxnet.Checked)
                                                                                    {
                                                                                        foreach (GridViewRow row10 in GridView11.Rows)
                                                                                        {
                                                                                            CheckBox cboxcase = (row10.Cells[0].FindControl("CheckBox11") as CheckBox);
                                                                                            int rollnocase = Convert.ToInt32(row10.Cells[2].Text);
                                                                                            string procase = row10.Cells[1].Text;
                                                                                            if (cboxcase.Checked)
                                                                                            {
                                                                                                foreach (GridViewRow row11 in GridView12.Rows)
                                                                                                {
                                                                                                    CheckBox cboxcasefan = (row11.Cells[0].FindControl("CheckBox12") as CheckBox);
                                                                                                    int rollnocasefan = Convert.ToInt32(row11.Cells[2].Text);
                                                                                                    string procasefan = row11.Cells[1].Text;
                                                                                                    if (cboxcasefan.Checked)
                                                                                                    {
                                                                                                        foreach (GridViewRow row12 in GridView13.Rows)
                                                                                                        {
                                                                                                            CheckBox cboxsmps = (row12.Cells[0].FindControl("CheckBox13") as CheckBox);
                                                                                                            int rollnosmps = Convert.ToInt32(row12.Cells[2].Text);
                                                                                                            string prosmps = row12.Cells[1].Text;
                                                                                                            if (cboxsmps.Checked)
                                                                                                            {
                                                                                                                deleterow(pro, rollno, proram, rollnoram, progpu, rollnogpu, procool, rollnocool, prohdd, rollnohdd, prossd, rollnossd, procd, rollnocd, propro, rollnopro, prosd, rollnosd, pronet, rollnonet, procase, rollnocase, procasefan, rollnocasefan, prosmps, rollnosmps);
                                                                                                            }
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        
                                                                                    }
                                                                                }
                                                                               
                                                                            }
                                                                        }
                                                                        
                                                                    }
                                                                }
                                                                
                                                            }
                                                        }
                                                       
                                                    }
                                                }
                                                
                                            }
                                        }
                                        
                                    }
                                }
                                
                            }
                        }
                        
                    }
                }
               
            }
        }
        

        

    }

    public void deleterow(string pro, int rollno, string proram, int rollnoram, string progpu, int rollnogpu, string procool, int rollnocool, string prohdd, int rollnohdd, string prossd, int rollnossd, string procd, int rollnocd, string propro, int rollnopro, string prosd, int rollnosd, string pronet, int rollnonet, string procase, int rollnocase, string procasefan, int rollnocasefan, string prosmps, int rollnosmps)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string ordp = "insert into cpubuild(motherboard,mbp,ram,ramp,gpu,gpup,cool,coolp,hd,hddp,ssd,ssdp,cd,cdp,processor,prop,sound,sdp,network,netp,casee,casep,casefan,casefanp,powerr,powerp,ramno,gpuno) values('" + pro + "','" + rollno + "','" + proram + "','" + rollnoram + "','" + progpu + "','" + rollnogpu + "','" + procool + "','" + rollnocool + "','" + prohdd + "','" + rollnohdd + "','" + prossd + "','" + rollnossd + "','" + procd + "','" + rollnocd + "','" + propro + "','" + rollnopro + "','" + prosd + "','" + rollnosd + "','" + pronet + "','" + rollnonet + "','" + procase + "','" + rollnocase + "','" + procasefan + "','" + rollnocasefan + "','" + prosmps + "','" + rollnosmps + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "')";
        SqlCommand cmddd = new SqlCommand(ordp, conn);
        cmddd.ExecuteNonQuery();
        conn.Close();


    }
}