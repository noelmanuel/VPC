<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;



public class ImageHandler : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string imageid = context.Request.QueryString["ImID"];
        conn.Open();
        SqlCommand command = new SqlCommand("select Image from compregn where compid='" + imageid + "' ", conn);
        SqlDataReader dr = command.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((Byte[])dr[0]);
        conn.Close();
        context.Response.End();
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}