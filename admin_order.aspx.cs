using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_order : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-4S3P0VQ;Initial Catalog=SportsShopOnline;Integrated Security=True";
        con.Open();
        string query = "Select count (user_id) from userTable where login=1;";
        SqlCommand cmd = new SqlCommand(query, con);
        Int32 uid = Convert.ToInt32(cmd.ExecuteScalar());

        foreach (DataListItem item in DataList1.Items)
        {

            string stat = ((Label)item.FindControl("statusLabel")).Text;
            Button btn = (Button)item.FindControl("btn");
            if (stat == "Order Placed") btn.Text = "Process Order";
            else if (stat == "On Process")
            {
                btn.Text = "Deliver Order";
                btn.CssClass = "btn2";
                
            }
            else if (stat == "Delivered")
            {
                btn.Text = "🗹 Done";
                btn.Style.Add("background-color", "white");
                btn.Style.Add("color", "green");
                btn.Style.Add("cursor", "none");
            }
            else { };
        }
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
            else if ((int)reader[2] != 4)
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
    protected void change_status(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string id = btn.CommandArgument.ToString();

        string query1 = "select status from orderTable where order_id='" + id + "';";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        string stat = (string)cmd1.ExecuteScalar();

        if (stat == "Order Placed")
        {
            string query2 = "update orderTable set status='On Process' where order_id='" + id + "';";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();
            Response.Redirect("admin_order.aspx");
        }
        else if (stat == "On Process")
        {
            string query2 = "update orderTable set status='Delivered' where order_id='" + id + "';";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();
            Response.Redirect("admin_order.aspx");
        }

    }
}