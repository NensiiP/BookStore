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
public partial class Shipping : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True;User Instance=True");
    int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_billnow_Click(object sender, EventArgs e)
    {
        //SqlDataAdapter sada = new SqlDataAdapter("select pname,price,qty from cart_master where user_id=" + Session["user_id"].ToString(), scon);
        //DataSet ds = new DataSet();
        //sada.Fill(ds);
        ////int s=(Convert.ToInt16(ds.Tables[0].Rows[0][0]));
        //string s1 = ds.Tables[0].Rows[0][0].ToString();
        //int s3 = Convert.ToInt16(ds.Tables[0].Rows[0][1].ToString());
        //int s4 = Convert.ToInt16(ds.Tables[0].Rows[0][2].ToString());



        //string s5 = "insert into bill_master values(" + a + "," + user_id + "," + pid + ",'" + s1 + "'," + s3 + "," + s4 + "," + s3 * s4 + ")";

        //scon.Open();
        //SqlCommand scom = new SqlCommand(s5, scon);

        //scom.ExecuteNonQuery();
        //scon.Close();

        //SqlDataAdapter sada1 = new SqlDataAdapter("select * from bill_master where user_id=" + Session["user_id"].ToString(), scon);
        //sada1.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
        //int t1 = 0;
        //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        //{
        //    t1 = t1 + (s3 * s4);
        //}
        //TextBox1.Text = t1.ToString();

        con.Open();
        string query = "select * from cart where username='" + Session["username"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int pro_id = Convert.ToInt16(ds.Tables[0].Rows[i][1].ToString());
            string name = Convert.ToString(ds.Tables[0].Rows[i][2].ToString());
            int price = Convert.ToInt16(ds.Tables[0].Rows[i][3].ToString());
            int quantity = Convert.ToInt16(ds.Tables[0].Rows[i][4].ToString());
            int amount = Convert.ToInt16(ds.Tables[0].Rows[i][5].ToString());

            string query1 = "insert into bill1(username,pro_id,name,price,quantity,total,date) values (@username,@pro_id,@name,@price,@quantity,@total,@date)";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@username", Session["username"]);
            cmd.Parameters.AddWithValue("@pro_id", pro_id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@total", amount);
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
        }
        con.Close();

        con.Open();
        string q = "delete from cart where username='" + Session["username"] + "'";
        SqlCommand cmd1 = new SqlCommand(q, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Redirect("done.aspx");
    }
}
