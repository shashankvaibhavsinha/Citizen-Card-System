using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;

public partial class AdminPage_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //  Panel5.Visible = false;
        }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
            string CitizenId = grdrow.Cells[0].Text;
            SqlDataSource2.SelectParameters[0].DefaultValue = CitizenId;
            DataView dv = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.ToTable();
            string ConsumerId = dt.Rows[0][0].ToString();
            Panel5.Visible = true;
            TextBox2.Text = ConsumerId;
            TextBox2.Enabled = false;
            TextBox6.Text = DateTime.Now.Date.ToString("dd-MMM-yy");
        }
        catch(Exception ee)
        {
            Response.Redirect("~/AdminPage/TelephoneBill.aspx");
        }
    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }



    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Convert.ToString(Convert.ToInt32(TextBox4.Text) + Convert.ToInt32(TextBox3.Text) + Convert.ToInt32(TextBox8.Text));
        TextBox7.Text = Convert.ToString(Convert.ToInt32(TextBox5.Text) * 2);
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlDataSource3.Update();
        Response.Redirect("~/AdminPage/AdminHome.aspx");
    }
}