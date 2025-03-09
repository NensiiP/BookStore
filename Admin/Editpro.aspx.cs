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

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {

            if (Convert.ToString(System.Web.HttpContext.Current.Session["username"]) == "")
            {
                HttpContext.Current.Response.Redirect("Login.aspx");
            }
            try
            {
                con.Open();
                String query = "select * from product where pro_id=" + Request.QueryString["id"];
                SqlCommand com = new SqlCommand(query, con);
                com.CommandType = CommandType.Text;
                SqlDataReader rdr = com.ExecuteReader();
                if (rdr.Read())
                {
                    HiddenField1.Value = Convert.ToString(rdr["pro_id"]);
                    txtcat.Text = Convert.ToString(rdr["name"]);
                    txtdes.Text = Convert.ToString(rdr["dec"]);
                    txtprice.Text = Convert.ToString(rdr["price"]);
                    txtauthor.Text = Convert.ToString(rdr["author"]);
                    txtpages.Text = Convert.ToString(rdr["pages"]);
                    txtyear.Text = Convert.ToString(rdr["year"]);

                    
                }
                con.Close();
            }
            catch { }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        string query;
       // query = "update into product(pro_id,name,price,image,author,pages,year) values (@pro_id,@name,@price,@image,@author,@pages,@year)" + Convert.ToInt16(HiddenField1.Value);
       // query = "update product set name,dec,price,author,pages,year ='" + txtcat.Text + "' WHERE pro_id=" + Convert.ToInt16(HiddenField1.Value);
        string sql = "update product set name=@name, dec=@dec, price=@price, author=@author, pages=@pages,year=@year where pro_id=@pro_id";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@name", txtcat.Text);
        cmd.Parameters.AddWithValue("@dec", txtdes.Text);
        cmd.Parameters.AddWithValue("@price", txtprice.Text);
        cmd.Parameters.AddWithValue("@author", txtauthor.Text);
        cmd.Parameters.AddWithValue("@pages", txtpages.Text);
        cmd.Parameters.AddWithValue("@year", txtyear.Text);
        cmd.Parameters.AddWithValue("@pro_id", Request.QueryString["id"]);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("product.aspx");
    }
    String FilePath(string fileName)
    {

        string filepath = "~/images/" + "user" + Convert.ToInt32(HiddenField1.Value) + "img";
        FileUpload1.SaveAs(MapPath(filepath));
        return filepath;
    }

}

