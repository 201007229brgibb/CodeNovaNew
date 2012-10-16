using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    private DatabaseConector connect;
    private Hasher hash = new Hasher();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdLogin_Click(object sender, EventArgs e)
    {
        connect = new DatabaseConector();
        SqlCommand cmd = connect.getCommand();

        cmd.CommandText = "SELECT User_Password FROM Users WHERE User_UserName = '" + txtUserName.Text + "';";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            string pass = (string)reader["User_Password"];
            string hashed = hash.hash(txtPassword.Text);
            if (hashed.Equals(pass))
            {
                Session.Add("LoggedIn", true);
                Response.Redirect("Default.aspx");
            }
        }
    }
}