using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-4S3P0VQ;Initial Catalog=SportsShopOnline;Integrated Security=True";
        con.Open();
        string query = "Select count (user_id) from userTable where login=1;";
        SqlCommand cmd = new SqlCommand(query, con);
        Int32 uid = Convert.ToInt32(cmd.ExecuteScalar());

        if (uid == 1)
        {
            string queryAd = "Select username, email, user_id from userTable where login=1;";
            SqlCommand cmdAd = new SqlCommand(queryAd, con);
            SqlDataReader reader = cmdAd.ExecuteReader();

            reader.Read();
            if (reader[0].ToString() == "admin" && reader[1].ToString() == "admin@sportsshoponline.com")
            {
                user.Text = "Admin";
                Up2.Text = "Admin";
                Up2.PostBackUrl = "admin.aspx";
            }
            else if ((int)reader[2] != 4 )
            {
                int item, id = (int)reader[2];
                reader.Close();
                string qCart = "Select count(*) from cart where cart_id=" + id + ";";
                SqlCommand cmdCart = new SqlCommand(qCart, con);
                int cartt = Convert.ToInt32(cmdCart.ExecuteScalar());
                if (cartt == 0) item = 0;
                else
                {
                    string qCart2 = "Select sum(amount) from cart where cart_id=" + id + ";";
                    SqlCommand cmdCart2 = new SqlCommand(qCart2, con);
                    item = Convert.ToInt32(cmdCart2.ExecuteScalar());
                }

                user.Text = "My Account";
                Up2.Text = "Cart (" + item + ")";
                Up2.PostBackUrl = "cart.aspx";
                Response.Redirect("my_account.aspx");
            }
            reader.Close();
        }
        else
        {
            user.Text = "User";
            Up2.Text = "Log In";
            Up2.PostBackUrl = "login.aspx";
            Response.Redirect("login.aspx");
        } 

        string s1 = "select count(user_id) from userTable where not username='admin'";
        SqlCommand com1 = new SqlCommand(s1, con);
        Lab1.Text = com1.ExecuteScalar().ToString();

        string s2 = "select sum(available) from product";
        SqlCommand com2 = new SqlCommand(s2, con);
        Lab2.Text = com2.ExecuteScalar().ToString();

        string s3 = "select count(distinct order_id) from orderTable";
        SqlCommand com3 = new SqlCommand(s3, con);
        Lab3.Text = com3.ExecuteScalar().ToString();

        SqlDataSource1.SelectCommand = "SELECT category, sum(available) as Total FROM product WHERE store = 'Football' GROUP BY category;";
        SqlDataSource2.SelectCommand = "SELECT category, sum(available) as Total FROM product WHERE store = 'Cricket' GROUP BY category;";
        SqlDataSource3.SelectCommand = "SELECT category, sum(available) as Total FROM product WHERE store = 'Tennis' GROUP BY category;";
        SqlDataSource4.SelectCommand = "SELECT category, sum(available) as Total FROM product WHERE store = 'Basketball' GROUP BY category;";
        SqlDataSource5.SelectCommand = "SELECT category, sum(available) as Total FROM product WHERE store = 'Badminton' GROUP BY category;";
        SqlDataSource6.SelectCommand = "SELECT category, sum(available) as Total FROM product WHERE store = 'Golf' GROUP BY category;";
        SqlDataSource7.SelectCommand = "SELECT category, sum(available) as Total FROM product WHERE store = 'Athletics' GROUP BY category;";
        SqlDataSource8.SelectCommand = "SELECT status, count(distinct order_id) as Total FROM orderTable GROUP BY status;";
    }

protected void btn_click(object sender, EventArgs e)
{
    string query1 = "Select count (user_id) from userTable where login=1;";
    SqlCommand cmd1 = new SqlCommand(query1, con);
    Int32 user = Convert.ToInt32(cmd1.ExecuteScalar());

    if (user == 1)
    {
        string queryAd = "Select username, email from userTable where login=1;";
        SqlCommand cmdAd = new SqlCommand(queryAd, con);
        SqlDataReader reader = cmdAd.ExecuteReader();
        reader.Read();
        if (reader[0].ToString() == "admin" && reader[1].ToString() == "admin@sportsshoponline.com")
            Response.Redirect("admin.aspx");
        else Response.Redirect("my_account.aspx");
        reader.Close();
    }
    else Response.Redirect("login.aspx");
}
    protected void logout(object sender, EventArgs e)
    {
        string query1 = "update userTable set login=0 where login=1;";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        cmd1.ExecuteNonQuery();
        Response.Redirect("login.aspx");
    }
}