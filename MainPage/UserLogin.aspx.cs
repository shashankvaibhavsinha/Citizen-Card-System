using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;

public partial class MainPage_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectParameters[0].DefaultValue = TextBox1.Text;
        SqlDataSource1.SelectParameters[1].DefaultValue = TextBox2.Text;
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        DataTable dt = dv.ToTable();
        try
        {
            Session["Cid"] = dt.Rows[0][0].ToString();
            Response.Redirect("~/UserPage/UserHome.aspx");
        }
        catch (Exception ee)
        {
            try
            {
                if (dt.Rows[0][1].ToString() == TextBox1.Text & dt.Rows[0][2].ToString() == TextBox2.Text)
                    MessageBox.Show("Welcome");
            }
            catch (Exception eee)
            {
                MessageBox.Show("Invalid Username or PAssword");
            }
        }
       
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MainPage/Home.aspx");
    }
}
