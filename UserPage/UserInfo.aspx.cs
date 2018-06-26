using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserPage_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        DataTable dt = dv.ToTable();
        Label1.Text = dt.Rows[0][0].ToString() +" "+ dt.Rows[0][1].ToString();
        Label2.Text = dt.Rows[0][2].ToString();
        Label3.Text = dt.Rows[0][3].ToString();
        Label4.Text = dt.Rows[0][4].ToString();
        Label5.Text = dt.Rows[0][5].ToString();
        Label6.Text = dt.Rows[0][6].ToString();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        try
        {
            DataView dv = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();
            Label7.Text = dt.Rows[0][0].ToString();
            Label8.Text = dt.Rows[0][1].ToString();
            Label9.Text = dt.Rows[0][2].ToString();
            Label10.Text = dt.Rows[0][3].ToString();
            Label11.Text = dt.Rows[0][4].ToString();
            Label12.Text = dt.Rows[0][5].ToString();
            Label13.Text = dt.Rows[0][6].ToString();
        }
        catch(Exception ee)
        {
            Response.Redirect("~/UserPage/UserInfo.aspx");
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        try
        {
            DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();
            Label14.Text = dt.Rows[0][0].ToString();
            Label15.Text = dt.Rows[0][1].ToString();
            Label16.Text = dt.Rows[0][3].ToString();
            Label17.Text = dt.Rows[0][4].ToString();
            Label18.Text = dt.Rows[0][5].ToString();
            Label19.Text = dt.Rows[0][6].ToString();
        }
        catch (Exception ee)
        {
            Response.Redirect("~/UserPage/UserInfo.aspx");
        }
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        try
        {
            DataView dv = (DataView)SqlDataSource4.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();
            Label20.Text = dt.Rows[0][1].ToString();
            Label21.Text = dt.Rows[0][2].ToString();
            Label22.Text = dt.Rows[0][3].ToString();
            Label23.Text = dt.Rows[0][4].ToString();
            Label24.Text = dt.Rows[0][5].ToString();
            Label25.Text = dt.Rows[0][6].ToString();
            Label26.Text = dt.Rows[0][7].ToString();
        }
        catch (Exception ee)
        {
            Response.Redirect("~/UserPage/UserInfo.aspx");
        }
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}