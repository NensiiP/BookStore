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
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)/MSSQLLocalDB;AttachDbFilename=G:\bostorek/App_Data/Database2.mdf;Integrated Security=True");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into registration (fname,lname,username,password,email,phoneno) values(@fname,@lname,@username,@password,@email,@phoneno)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@fname", fname.Text);
        cmd.Parameters.AddWithValue("@lname", lname.Text);
        cmd.Parameters.AddWithValue("@username", username.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@phoneno", phoneno.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("login.aspx");
    }
}
