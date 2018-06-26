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
       MultiView1.ActiveViewIndex = 0;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        MultiView2.ActiveViewIndex = 0;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        MultiView3.ActiveViewIndex = 0;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        MultiView4.ActiveViewIndex = 0;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        MultiView2.ActiveViewIndex = 1;
        
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        MultiView3.ActiveViewIndex = 1;

    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        MultiView4.ActiveViewIndex = 1;
    }
}