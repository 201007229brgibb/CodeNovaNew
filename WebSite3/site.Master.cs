using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("Logged",false);
        Session.Add("Admin", false);
        Session.Add("UserID", "");
    }

    private void InitializeComponent()
    {
        this.PreRender += new System.EventHandler(this.SiteMaster_PreRender);

    }

    private void SiteMaster_PreRender(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["Logged"]))
        {
            btnCheckOut.Enabled = true;
            btnCheckOut.Visible = true;
            btnLogOut.Enabled = true;
            btnLogOut.Visible = true;
        }
        else
        {
            btnCheckOut.Enabled = false;
            btnCheckOut.Visible = false;
            btnLogOut.Enabled = false;
            btnLogOut.Visible = false;
        }
    }



    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        ArrayList prodList = new ArrayList();
        ArrayList avaList = new ArrayList();
        DatabaseConector connect = new DatabaseConector();
        SqlCommand cmd = connect.getCommand();
        cmd.CommandText = "SELECT * FROM Cart WHERE User_UserName='" + Convert.ToString(Session["UserID"]) + "';";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
            while (reader.Read())
            {
                prodList.Add(reader["Prod_ID"]);
            }
        connect.close();

        foreach (object o in prodList)
        {
            int i = Convert.ToInt32(o);
            connect = new DatabaseConector();
            cmd = connect.getCommand();
            cmd.CommandText = "SELECT * FROM Product WHERE Prod_ID=" + i + ";";
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
                if (Convert.ToInt32(reader["Prod_State"]) == 0)
                {
                    avaList.Add(i);
                }
            connect.close();
        }

        foreach (object o in avaList)
        {
            int i = Convert.ToInt32(o);
            connect = new DatabaseConector();
            cmd = connect.getCommand();
            cmd.CommandText = "UPDATE Product SET Prod_State=1 WHERE Prod_ID=" + i + ";";
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            connect.close();
        }
        Session.Abandon();
    }
}
