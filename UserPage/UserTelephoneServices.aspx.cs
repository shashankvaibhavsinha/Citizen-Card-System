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
        MultiView1.ActiveViewIndex = 0;
        try
        {
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();
            if(dt.Rows[0][0].ToString() != null)
            {
                Label4.Text = dt.Rows[0][1].ToString();
                Button6.Enabled = false;
                Button7.BackColor = System.Drawing.Color.Green;
                Button8.BackColor = System.Drawing.Color.Green;
                Button9.BackColor = System.Drawing.Color.Green;
            } 
           
        }
        catch (Exception ee)
        {
            Button6.BackColor = System.Drawing.Color.Green;
            Button7.Enabled = false;
            Button8.Enabled = false;
            Button9.Enabled = false;
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        DataView dv = (DataView)SqlDataSource9.Select(DataSourceSelectArguments.Empty);
        DataTable dt = dv.ToTable();
        Label3.Text = dt.Rows[0][1].ToString();
        if (Label3.Text == "0.00")
        {
            Button14.Enabled = false;
            Button14.BackColor = System.Drawing.Color.Red;
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        TextBox4.Text = DateTime.Now.Date.ToString("dd-MMM-yy");
        TextBox4.Enabled = false;
        RadioButtonList1.SelectedIndex = 0;
        RadioButtonList1.Enabled = false;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
        DataTable dt = dv.ToTable();
        TextBox5.Text = dt.Rows[0][0].ToString();
        TextBox7.Text = dt.Rows[0][1].ToString();
        RadioButtonList2.SelectedValue = dt.Rows[0][2].ToString();
        TextBox8.Text = dt.Rows[0][3].ToString();
        TextBox8.Enabled = false;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource2.Insert();
            DataView dv = (DataView)SqlDataSource6.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();
            Label1.Text = dt.Rows[0][0].ToString();
            SqlDataSource7.Insert();
            Response.Redirect("~/UserPage/UserElectricityServices.aspx");
            
        }
        catch(Exception ee)
        {
           // Response.Redirect("~/MainPage/Home.aspx");
        }
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        SqlDataSource4.Update();
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UserPage/UserElectricityServices.aspx");
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource5.Select(DataSourceSelectArguments.Empty);
        DataTable dt = dv.ToTable();
        Label2.Text = dt.Rows[0][0].ToString();
        SqlDataSource8.Delete();
        SqlDataSource5.Delete();

        Response.Redirect("~/UserPage/UserElectricityServices.aspx");
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        SqlDataSource10.Update();
    }
}