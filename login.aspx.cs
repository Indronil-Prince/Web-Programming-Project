using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-4S3P0VQ;Initial Catalog=SportsShopOnline;Integrated Security=True";
        con.Open();
        Session.RemoveAll();
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
                Response.Redirect("admin.aspx");
            }
            else if((int)reader[2] != 4)
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
        }
    }

    void login(string email, string password)
    {
        string query_ = "Select Count (*) from userTable where login=1;";
        SqlCommand cmd_ = new SqlCommand(query_, con);
        Int32 count_ = Convert.ToInt32(cmd_.ExecuteScalar());

        if (count_ == 0)
        {
            string query = "Select Count (*) from userTable where email='" + email + "'AND password='" + password + "';";
            SqlCommand cmd = new SqlCommand(query, con);
            Int32 count = Convert.ToInt32(cmd.ExecuteScalar());

            if (count == 1)
            {
                string query2 = "update userTable set login=1 where email='" + email + "'AND password='" + password + "';";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteNonQuery();

                Session["x"] = emailbox.Text;
                Session.Timeout = 1;
                HttpCookie c = new HttpCookie("userdetails");
                c["user_name"] = emailbox.Text;
                c["Password"] = passbox.Text;
                c.Expires = DateTime.Now.AddMinutes(1);
                Response.Cookies.Add(c);

                emailbox.Text = String.Empty;
                passbox.Text = String.Empty;

                if(email== "admin@sportsshoponline.com") Response.Redirect("admin.aspx");
                else Response.Redirect("my_account.aspx");
            }
            else
            {
                emailbox.Text = String.Empty;
                passbox.Text = String.Empty;
                msg_lbl.Text = "Failed to log in! Submit your email and password correctly.";
            }
        }
        else
        {
            msg_lbl.Text = "Failed to log in! An user already logged in";
        }
    }
    protected void Login_click(object sender, EventArgs e)
    {
           login(emailbox.Text, passbox.Text);
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
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
}