using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ProdRemove : System.Web.UI.Page
{
        private DatabaseConector connection;
    private string tablecontent = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string descrip = "";
        SqlConnection DisplayTable = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename='|DataDirectory|\\NovaDB.mdf';Integrated Security=True;User Instance=True");

        int selected = Convert.ToInt32(Request.QueryString["Prod_ID"]);
        connection = new DatabaseConector();
        SqlCommand cmd = connection.getCommand();
        cmd.CommandText = "SELECT * FROM Product WHERE Prod_ID = " + selected + ";";

        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            descrip = Convert.ToString (reader["Prod_Description"]);
            tablecontent += "<image src = 'CarImages/" + reader["Prod_Image"] + "' alt='" + reader["Prod_Name"] + "' height='400' width='600'/>";
            literal2.Text = tablecontent;
            tablecontent = "<table><tr><th>Name :</th><td>"
            + reader["Prod_Name"] + "</td></tr><tr><th>Make :</th><td>"
            + reader["Prod_Make"] + "</td></tr><tr><th>Model :</th><td>"
            + reader["Prod_Modle"] + "</td></tr><tr><th>Colour :</th><td>"
            + reader["Prod_Colour"] + "</td></tr><tr><th>Price :</th><td>"
            + reader["Prod_Price"] + "</td></tr></table>";
            literal3.Text = tablecontent;
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
        connection.close();

        tablecontent = "";

        connection = new DatabaseConector();
        cmd = connection.getCommand();
        cmd.CommandText = "SELECT * FROM Description where Prod_ID = " + selected + " ORDER BY Desc_Image DESC;";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            int count = 1;
            bool imFlag = true;
            tablecontent += "<tr>";
            while (reader.Read())
            {
                count++;
                if (Convert.ToBoolean(reader["Desc_Image"]))
                {
                    tablecontent += "<td><image src = 'CarImages/" + reader["Desc_Value"] + "' alt='" + reader["Desc_Value"] + "' height='200' width='270'/></td>";
                    imFlag = true;
                }
                else
                {
                    if (imFlag)
                    {
                        tablecontent += "</tr><tr>";
                        count = 1;
                        imFlag = false;
                    }
                    tablecontent += "<td>" + reader["Desc_Value"] + "</td>";
                }
                if (count % 3 == 0)
                {
                    tablecontent += "</tr><tr>";
                }
            }
            tablecontent += "</tr>";
            literal1.Text = tablecontent;
        }
        connection.close();
    }
    protected void cmdRemove_Click(object sender, EventArgs e)
    {
        DatabaseConector connect = new DatabaseConector();
        SqlCommand cmd = connect.getCommand();
        cmd.CommandText = "UPDATE Product SET Prod_State=-1 WHERE Prod_ID=" + Convert.ToInt32(Request.QueryString["Prod_ID"]) +";";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        connect.close();
    }
}