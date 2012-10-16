using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void InitializeComponent()
    {
        this.PreRender += new System.EventHandler(this.SiteMaster_PreRender);

    }

    private void SiteMaster_PreRender(object sender, EventArgs e)
    {

    }



}
