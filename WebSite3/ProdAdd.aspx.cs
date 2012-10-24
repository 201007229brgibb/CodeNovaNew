using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ProdAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdAdd_Click(object sender, EventArgs e)
    {
        int pID = -1;
        int dID = 0;
        string totDesc = txtDescription.Text;
        string fn = "";
        string desc = totDesc.Substring(0, totDesc.IndexOf("\r\n"));
        totDesc = totDesc.Substring(totDesc.IndexOf("\n") + 1);

        if((imFile.PostedFile != null) && (imFile.PostedFile.ContentLength > 0))
        {
             fn = System.IO.Path.GetFileName(imFile.PostedFile.FileName);
            string saveLoc = ".\\CarImages\\" + fn;
            try
            {
                imFile.PostedFile.SaveAs(saveLoc);
            }
            catch
            {
                //
            }
        }
        
        DatabaseConector connect = new DatabaseConector();
        SqlCommand cmd = connect.getCommand();
        cmd.CommandText = "SELECT COUNT(*) FROM Product AS Count;";
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();
        if(reader.HasRows)
        {
            reader.Read();
            pID = Convert.ToInt32(reader[0]);
            pID++;
        }
        connect.close();

        connect = new DatabaseConector();
        cmd = connect.getCommand();
        cmd.CommandText = "INSERT INTO Product VALUES ("
            + pID + ", '" + txtName.Text + "', '" + txtMake.Text + "', '" + txtModle.Text
            + "', '" + txtColour.Text + "', '" + desc + "', '" + fn + "', " + txtPrice.Text
            + ", 0, '" + Convert.ToString(Session["UserID"]) + "');";
        cmd.Connection.Open();
        if(pID != -1)
            cmd.ExecuteNonQuery();

        connect.close();

        int index = totDesc.IndexOf("\n");

        while (index > 0)
        {
            desc = totDesc.Substring(0, totDesc.IndexOf("\r\n"));
            totDesc = totDesc.Substring(totDesc.IndexOf("\n") + 1);

            connect = new DatabaseConector();
            cmd = connect.getCommand();
            cmd.CommandText = "SELECT COUNT(*) FROM Description;";
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                dID = Convert.ToInt32(reader[0]) + 1;
            }
            connect.close();

            connect = new DatabaseConector();
            cmd = connect.getCommand();
            cmd.CommandText = "INSERT INTO Description VALUES(" + dID + ", 'false', '" + desc + "', " + pID + ");";
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();

            connect.close();
            index = totDesc.IndexOf("\n");
        }
    }
}