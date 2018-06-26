<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
    using System.Configuration;
    using System.Data.SqlClient;
    using System.Data;
public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //context.Response.ContentType = "text/plain";
       // context.Response.Write("Hello World");
        string imageid = context.Request.QueryString["Img_id"];
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        connection.Open();
        SqlCommand command = new SqlCommand("select CitizenImage from tbl_CitizenDetail where CitizenId="+imageid,connection);
        SqlDataReader dr = command.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((Byte[])dr[0]);
        connection.Close();
        context.Response.End(); 
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}