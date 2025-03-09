using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Data.SqlClient;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(System.Web.HttpContext.Current.Session["username"]) == "")
        {
            HttpContext.Current.Response.Redirect("Login.aspx");
        }
        con.Open();
        String query = "select pro_id from product where pro_id=(select max(pro_id) from product)";
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.Text;
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            int count;
            count = Convert.ToInt16(rdr["pro_id"]);
            count = count + 1;
            HiddenField1.Value = Convert.ToString(count);
        }
        else
        {
            HiddenField1.Value = "1";
        }
        con.Close(); 
    }
    
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into category (cat_name,cat_img) values(@cat_name,@cat_img)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@cat_name", txtcat.Text);
        if (CheckFileType(FileUpload1.FileName))
            cmd.Parameters.AddWithValue("@cat_img", FilePath(FileUpload1.FileName));
        else
            cmd.Parameters.AddWithValue("@cat_img", "Image Not Available");
        
        
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Category.aspx");

    }


    String FilePath(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        string filepath = "~/images/user" + Convert.ToInt32(HiddenField1.Value) + "img" + ext;
        FileUpload1.SaveAs(MapPath(filepath));
        return filepath;
    }
    bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif":
                return true;
            case ".png":
                return true;
            case ".jpg":
                return true;
            case ".jpeg":
                return true;
            default:
                return false;
        }
        }
}
