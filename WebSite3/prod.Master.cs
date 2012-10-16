using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void InitializeComponent()
    {
        this.PreRender += new System.EventHandler(this.MasterPage_PreRender);

    }

    private void MasterPage_PreRender(object sender, EventArgs e)
    {

    }
}
