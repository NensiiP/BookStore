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
    double total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            fillgrid();
        }
    }
    protected void fillgrid()
    {
        con.Open();
        String str = "select * from cart where username='" + Session["username"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int amount = Convert.ToInt16(ds.Tables[0].Rows[i][5].ToString());
            total = total + amount;
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
        lbltotal.Text = Convert.ToString(total);
        con.Close();
    }
    protected void imgdeltmp_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton ib = (ImageButton)sender;
        GridViewRow gv = (GridViewRow)ib.NamingContainer;
        int id = (Convert.ToInt16(GridView1.DataKeys[gv.RowIndex].Value));
        con.Open();
        string q = "delete from cart where cartid=" + id + "and username='" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();
        con.Close();
        fillgrid();
    }
    protected void imgedit_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn_payment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Shipping.aspx");
    }
}
