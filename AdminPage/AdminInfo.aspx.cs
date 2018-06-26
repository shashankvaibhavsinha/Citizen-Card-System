using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class AdminPage_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();
            Label1.Text = dt.Rows[0][1].ToString();
            Label2.Text = dt.Rows[0][2].ToString();
            Label3.Text = dt.Rows[0][3].ToString();
            Label4.Text = dt.Rows[0][4].ToString();
        }
        catch(Exception ee)
        {
            Response.Redirect("~/MainPage/Home.aspx");
        }
    }
}