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

public partial class Productdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        String query = "select * from product where pro_id=" + Request.QueryString["id"];
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.Text;
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            lblpro_id.Text = Convert.ToString(rdr["pro_id"]);
            lbl_name.Text = Convert.ToString(rdr["name"]);
            lbl_price.Text = Convert.ToString(rdr["price"]);
            lbl_dec.Text = Convert.ToString(rdr["dec"]);
            lbl_author.Text = Convert.ToString(rdr["Author"]);
            lbl_year.Text = Convert.ToString(rdr["Year"]);
            lbl_pages.Text = Convert.ToString(rdr["pages"]);
            Image1.ImageUrl = Convert.ToString(rdr["image"]);
           
            hdncat.Value = Convert.ToString(rdr["cat_id"]);
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into cart (pro_id,name,price,quantity,amount,image,cat_id,username) values(@pro_id,@name,@price,@quantity,@amount,@image,@cat_id,@username)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@pro_id", lblpro_id.Text);
        cmd.Parameters.AddWithValue("@name", lbl_name.Text);
        cmd.Parameters.AddWithValue("@price", lbl_price.Text);
        cmd.Parameters.AddWithValue("@quantity", TextBox1.Text);
        int amount = Convert.ToInt32(lbl_price.Text) * Convert.ToInt32(TextBox1.Text);
        cmd.Parameters.AddWithValue("@amount", amount);
        cmd.Parameters.AddWithValue("@image", Image1.ImageUrl);
       
        cmd.Parameters.AddWithValue("@cat_id", hdncat.Value);
        cmd.Parameters.AddWithValue("@username", Session["username"]);
        
        con.Close();
        Response.Redirect("Viewcart.aspx");
    }
}
