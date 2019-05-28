using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class expertsystem_expertpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = false;
        Panel6.Visible = false;
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
        Panel21.Visible = false;

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;


    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["type"] = "Whole system";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["type"] = "Only CPU";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
    }

    protected void ult_Click(object sender, EventArgs e)
    {
        Session["budget"] = "Expensive";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    protected void high_Click(object sender, EventArgs e)
    {
        Session["budget"] = "High";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    protected void med_Click(object sender, EventArgs e)
    {
        Session["budget"] = "Medium";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    protected void low_Click(object sender, EventArgs e)
    {
        Session["budget"] = "Low";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        

        Session["pri1"] = DropDownList1.SelectedItem;
        Session["pri2"] = DropDownList2.SelectedItem;
        Session["pri3"] = DropDownList3.SelectedItem;
        Session["pri4"] = DropDownList4.SelectedItem;

        if(DropDownList1.SelectedItem.Text == "gaming and live streaming" && Session["budget"].ToString() == "Expensive")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = true;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;




        }
        else if (DropDownList1.SelectedItem.Text == "gaming and live streaming" && Session["budget"].ToString() == "High")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel7.Visible = true;
            Panel6.Visible = false;
            Panel8.Visible = false;
        }
        else if(DropDownList1.SelectedItem.Text == "gaming and live streaming" && Session["budget"].ToString() == "Medium")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel7.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "gaming and live streaming" && Session["budget"].ToString() == "Low")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel7.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = true;
        }

        else if (DropDownList1.SelectedItem.Text == "animation and graphics work" && Session["budget"].ToString() == "Expensive")
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
            Panel10.Visible = true;
            Panel11.Visible = false;




        }
        else if (DropDownList1.SelectedItem.Text == "animation and graphics work" && Session["budget"].ToString() == "High")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel7.Visible = true;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "animation and graphics work" && Session["budget"].ToString() == "Medium")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel7.Visible = false;
            Panel6.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = false;
            Panel12.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "animation and graphics work" && Session["budget"].ToString() == "Low")
        {
            Panel13.Visible = true;
        }

        else if (DropDownList1.SelectedItem.Text == "office work" && Session["budget"].ToString() == "Expensive")
        {
           
            Panel14.Visible = false;

        }
        else if (DropDownList1.SelectedItem.Text == "office work" && Session["budget"].ToString() == "High")
        {
            
            Panel15.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "office work" && Session["budget"].ToString() == "Medium")
        {
            
            Panel16.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "office work" && Session["budget"].ToString() == "Low")
        {
            Panel13.Visible = true;
        }


        else if (DropDownList1.SelectedItem.Text == "programming" && Session["budget"].ToString() == "Expensive")
        {

            Panel18.Visible = false;

        }
        else if (DropDownList1.SelectedItem.Text == "programming" && Session["budget"].ToString() == "High")
        {

            Panel19.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "programming" && Session["budget"].ToString() == "Medium")
        {

            Panel20.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "programming" && Session["budget"].ToString() == "Low")
        {
            Panel21.Visible = true;
        }


        else
        {
            Panel1.Visible = true;
        }

       // Response.Redirect("userexpertlist.aspx");

    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button17_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button18_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button19_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button20_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button21_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button22_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button23_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button24_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button25_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button26_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }

    protected void Button27_Click(object sender, EventArgs e)
    {
        Response.Redirect("userexpertlist.aspx");
    }
}