using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Catalog : System.Web.UI.Page
{
    private DatabaseConector connect;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strTable = "";
        int selected = Convert.ToInt32(Request.QueryString["Prod_ID"]);
        ArrayList cartList = new ArrayList();
        ArrayList myList = new ArrayList();

        connect = new DatabaseConector();
        SqlCommand cmd = connect.getCommand();
        cmd.CommandText = "SELECT * FROM Product WHERE Prod_ID=" + selected + ";";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows && Convert.ToBoolean(Session["Logged"]))
        {
            reader.Read();
            double pPrice = Convert.ToDouble(reader["Prod_Price"]);
            if (Convert.ToInt32(reader["Prod_state"]) == 0)
            {
                connect.close();

                connect = new DatabaseConector();
                cmd = connect.getCommand();
                cmd.CommandText = "SELECT COUNT(*) FROM Cart AS Count;";
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    int cID = Convert.ToInt32(reader[0]);
                    connect.close();

                    connect = new DatabaseConector();
                    cmd = connect.getCommand();
                    cmd.CommandText = "INSERT INTO Cart VALUES (" + cID + ", " + pPrice + ", '" + Session["UserID"] + "', " + selected + ");";
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
        connect.close();

        connect = new DatabaseConector();
        cmd = connect.getCommand();
        cmd.CommandText = "SELECT * FROM Cart WHERE User_Username='" + Session["UserID"] + "';";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        reader = cmd.ExecuteReader();
        if(reader.HasRows)
        {
            while(reader.Read())
                cartList.Add(reader["Prod_ID"]);
        }
        connect.close();

        connect = new DatabaseConector();
        cmd = connect.getCommand();
        cmd.CommandText = "SELECT * FROM Product WHERE User_Username='" + Session["UserID"] + "';";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
                myList.Add(reader["Prod_ID"]);
        }
        connect.close();

        connect = new DatabaseConector();
        cmd = connect.getCommand();
        cmd.CommandText = "SELECT * FROM Product";

        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        reader = cmd.ExecuteReader();
        if (!reader.HasRows)
        {
            connect.close();
        }
        else
        {

            while (reader.Read())
            {
                if (Convert.ToInt32(reader["Prod_State"]) == 0)
                {
                    strTable += "<tr><td><a href='Description.aspx?Prod_ID=" + reader["Prod_ID"] + "'>" + reader["Prod_Name"] + "</a></td>"
                    + "<td><a href='Description.aspx?Prod_ID=" + reader["Prod_ID"] + "'><image src = 'CarImages/" + reader["Prod_Image"] + "' alt=" + reader["Prod_Name"] + "' height=60 width=80/></a></td>"
                    + "<td>" + reader["Prod_Make"] + "</td>"
                    + "<td>" + reader["Prod_Modle"] + "</td>"
                    + "<td>" + reader["Prod_Colour"] + "</td>"
                    + "<td>" + reader["Prod_Description"] + "</td>"
                    + "<td>" + reader["Prod_Price"] + "</td>";
                    if (Convert.ToBoolean(Session["Logged"]) && !cartList.Contains(reader["Prod_ID"]))
                        strTable += "<td><a href='Catalog.aspx?Prod_ID=" + reader["Prod_ID"] + "'><input type=button value='Interest!'></a></td>";
                    if (Convert.ToBoolean(Session["Logged"]) && (myList.Contains(reader["Prod_ID"]) || Convert.ToBoolean(Session["Admin"])))
                        strTable += "<td><a href='ProdEdit.aspx?Prod_ID=" + reader["Prod_ID"] + "'><input type=button value='Edit'></a></td>"
                            + "<td><a href='ProdRemove.aspx?Prod_ID=" + reader["Prod_ID"] + "'><input type=button value='Remove'></a></td>";
                    strTable += "</tr>";
                }
            }
            lit.Text =  strTable;
            connect.close();
        }
               
                
    }

     
    
}