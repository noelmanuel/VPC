using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;


public partial class Company_company : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["comp"].ToString();
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Image1.ImageUrl = "~/profileimage/" + Session["comp"].ToString() + ".jpg";
        }
        else
        {
            Image1.ImageUrl = "~/profileimage/" + Session["comp"].ToString() + ".jpg";
        }
        
        
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void img_click(object sender, EventArgs e)

    {
        Panel1.Visible = false;
        string uploadFolder = Request.PhysicalApplicationPath + "UploadFile\\";
        if (FileUpload1.HasFile)
        {
            string n = Session["comp"].ToString();
            string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs("C:\\Users\\Noel Manuel\\Documents\\Visual Studio 2015\\WebSites\\VPC\\profileimage\\" + n + extension);
            if (extension == ".jpg")
            {

                Response.Write(" <script>window.alert('upload success'); window.location='companyhome.aspx';</script>");
            }
            else
            {
                Response.Write(" <script>window.alert('upload jpg file'); window.location='companyhome.aspx';</script>");
            }

        }
        else
        {
            Response.Write(" <script>window.alert('please upload a image'); window.location='companyhome.aspx';</script>");
        }
    }

    protected void add_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Company/comaddproduct.aspx");
    }

    protected void view_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Company/viewproduct.aspx");
    }

   

    protected void delete_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Company/deleteproduct.aspx");
    }
}
