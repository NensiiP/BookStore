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
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string q = "select * from category";
        SqlDataAdapter da= new SqlDataAdapter (q,con);
        
       
        DataSet ds = new DataSet();
        da.Fill (ds);
        Repeater1.DataSource=ds;
        Repeater1.DataBind();

    }
}
