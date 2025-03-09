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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    protected void page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True;User Instance=True ");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into contact(name,address,mobno,officeno,email) values(@name,@address,@mobno,@officeno,@email)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@name", name.Text);
        cmd.Parameters.AddWithValue("@address", address.Text);
        cmd.Parameters.AddWithValue("@mobno", mobno.Text);
        cmd.Parameters.AddWithValue("@officeno", officeno.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);

        cmd.ExecuteNonQuery();
        con.Close();
        
    }
}