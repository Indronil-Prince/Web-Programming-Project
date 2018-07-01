using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class order_history : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-4S3P0VQ;Initial Catalog=SportsShopOnline;Integrated Security=True";
        con.Open();
        string query = "Select count (user_id) from userTable where login=1;";
        SqlCommand cmd = new SqlCommand(query, con);
        Int32 uid = Convert.ToInt32(cmd.ExecuteScalar());
        div2.Style.Add("display", "none");
        menu0.Style.Add("display", "block");
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
            else
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
            }
            reader.Close();
        }
        else
        {
            user.Text = "User";
            Up2.Text = "Log In";
            Up2.PostBackUrl = "login.aspx";
        }

        string s0 = "SELECT DISTINCT count([order_id]) FROM [orderTable] where user_id in(select user_id from userTable where login=1)";
        SqlCommand c0 = new SqlCommand(s0, con);
        Int32 first = Convert.ToInt32(c0.ExecuteScalar());

        if (first != 0)
        {
            SqlDataSource1.SelectCommand = "SELECT DISTINCT [order_id], [name], [location], [district], [phone], [OrderDate], [status] FROM [orderTable] where user_id in(select user_id from userTable where login=1) ORDER BY [OrderDate] desc";
        }
        else
        {
            t1.Style.Add("display", "none");
            div2.Style.Add("display", "block");
            none.Text = "You have not placed any order yet!";
        }

        foreach (DataListItem item in DataList1.Items)
        {
            Label sl = (Label)item.FindControl("statusLabel");
            string stat = sl.Text;
            if (stat == "Order Placed")
            {
                sl.Text = "▷ " + stat;
                sl.ForeColor = Color.FromName("Orange");
            }
            else if (stat == "On Process")
            {
                sl.Text = "◎ " + stat;
                sl.ForeColor = Color.FromName("Blue");
            }
            else if (stat == "Delivered")
            {
                sl.Text = "🗹 "+stat;
                sl.ForeColor = Color.FromName("Green");
            }
            else { };
            
        }
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