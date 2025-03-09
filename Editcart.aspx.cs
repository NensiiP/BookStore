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
        if (IsPostBack != true)
        {
            con.Open();
            String query = "select * from cart where cartid=" + Request.QueryString["id"];
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.Text;
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                lblpro_id.Text = Convert.ToString(rdr["pro_id"]);
                lblname.Text = Convert.ToString(rdr["name"]);
                lblprice.Text = Convert.ToString(rdr["price"]);
                lblamount.Text = Convert.ToString(rdr["amount"]);
                txtquantity.Text = Convert.ToString(rdr["quantity"]);
                Image1.ImageUrl = Convert.ToString(rdr["image"]);
                HiddenField1.Value = Convert.ToString(rdr["cartid"]);
            }
            con.Close();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(lblprice.Text) * Convert.ToInt32(txtquantity.Text);
        string qrystr;
        qrystr = "update cart set quantity ='" + txtquantity.Text + "',amount='" + amount + "'  WHERE cartid=" + HiddenField1.Value;
        con.Open();
        SqlCommand cmd = new SqlCommand(qrystr, con);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Viewcart.aspx");
    }
}
