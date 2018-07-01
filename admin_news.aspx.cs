using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_news : System.Web.UI.Page
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

    void Add(int id, string img, string title, string descrip)
    {
        string query = "insert into news" + "(id, img, title, descrip)values(@id, @img, @title, @descrip)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@img", img);
        cmd.Parameters.AddWithValue("@title", title);
        cmd.Parameters.AddWithValue("@descrip", descrip);
        cmd.ExecuteNonQuery();

         TextBox2.Text = String.Empty;
         TextBox3.Text = String.Empty;
         TextBox4.Text = String.Empty;
        Label1.Text = "News Updated";

    }
    protected void Add_Click(object sender, EventArgs e)
    {
        string query2 = "Select max(id) from news;";
        SqlCommand cmd2 = new SqlCommand(query2, con);
        Int32 id = Convert.ToInt32(cmd2.ExecuteScalar());
        string imageUrl = "~/images/" + TextBox2.Text.ToString();

        Add(id + 1, imageUrl, TextBox3.Text, TextBox4.Text);
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        string name = TextBox5.Text;
        string query6 = "Delete from product where id= "+ name + ";";
        SqlCommand cmd6 = new SqlCommand(query6, con);
        cmd6.ExecuteNonQuery();
        TextBox5.Text = String.Empty;
        Label1.Text = String.Empty;
        Label2.Text = "Product Deleted";
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