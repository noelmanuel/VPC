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
using System.Timers;

public partial class User_Product_Page_motherboarddes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void dig()
    {
        foreach (DataListItem dli in DataList1.Items)
        {
            Label Label2 = (Label)dli.FindControl("Label2");
            Label Label5 = (Label)dli.FindControl("Label5");
            Label Label22 = (Label)dli.FindControl("Label22");
            Label Label21 = (Label)dli.FindControl("Label21");
            string motherb = "motherboard";
            TextBox st = (TextBox)dli.FindControl("st");
            string es = st.Text;
            string ess = Label21.Text;
            int quan = int.Parse(es);
            int tot = int.Parse(ess);
            int grand = quan * tot;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into addcart(username,category,product_name,product_model,quantity,item_price,total_price) values('" + Session["user"].ToString() + "','" + motherb + "','" + Label5.Text + "','" + Label2.Text + "','" + st.Text + "','" + tot + "','" + grand + "')";
            SqlCommand cmdd = new SqlCommand(insertQuery, conn);
            cmdd.ExecuteNonQuery();
            conn.Close();
            Response.Write(" <script>window.alert('ADDED TO CART');window.location='motherboardlist.aspx';</script>");

        }
    }
    private void execu()
    {
        foreach (DataListItem dli in DataList1.Items)
        {
            Label Label2 = (Label)dli.FindControl("Label2");
            Label Label5 = (Label)dli.FindControl("Label5");
            Label Label22 = (Label)dli.FindControl("Label22");
            Label Label21 = (Label)dli.FindControl("Label21");
            Label motherb = (Label)dli.FindControl("motherb");
            TextBox st = (TextBox)dli.FindControl("st");
            string es = st.Text;
            string ess = Label21.Text;
            int quan = int.Parse(es);
            int tot = int.Parse(ess);
            int grand = quan * tot;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();


            string inn = "select product_model from addcart where product_model='" + Label2.Text + "'";
            SqlCommand cmd = new SqlCommand(inn, conn);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                string noo = reader.GetValue(0).ToString();
                if (noo == Label2.Text)
                {
                    Response.Write(" <script>window.alert('Item already in cart'); window.location='addcart.aspx';</script>");
                }
                else
                {
                    reader.Close();


                }
            }
            else
            {
                dig();
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        foreach (DataListItem dli in DataList1.Items)
        {
            Label Label2 = (Label)dli.FindControl("Label2");
            Label Label22 = (Label)dli.FindControl("Label22");
            TextBox st = (TextBox)dli.FindControl("st");
            string es = st.Text;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string insertQuery = "select stock from motherboard where mod = '" + Label2.Text + "'";


            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                string no = reader.GetValue(0).ToString();
                int a = int.Parse(no);
                int b = int.Parse(es);

                if (a < b)
                {
                    Label22.Text = "no stock";
                }
                else
                {

                    execu();
                }
            }


            else
            {
                Response.Redirect("/User/userhome.aspx");
            }
            conn.Close();
        }

    }


}