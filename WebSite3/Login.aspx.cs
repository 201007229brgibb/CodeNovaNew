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
            string hashed = txtPassword.Text; //hash.hash(txtPassword.Text);
                                              //not hashing as the data is corrupted in the process of sending the hashed string to the database
            if (hashed.Equals(pass))
            {
                Session["Logged"] = true;
                Session["UserID"] = txtUserName.Text;
                Session["Admin"] = Convert.ToBoolean(reader["User_AdminRight"]);
                Response.Redirect("Default.aspx");
            }
        }
        connect.close();
    }
}