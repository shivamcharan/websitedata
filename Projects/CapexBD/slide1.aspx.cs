using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;

public partial class slide1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        for (int i = 0; i < 127; i++)
        {
            Image1.Width = i;
           
        }

    }
}