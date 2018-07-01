using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
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
    }

    void Signup(string username, string email, string password)
    {
        string qid= "select count(*) from userTable";
        SqlCommand idcmd = new SqlCommand(qid, con);
        Int32 id = Convert.ToInt32(idcmd.ExecuteScalar());
        id = id + 1;
        string query = "insert into userTable" + "(user_id, username, email, password)values("+id+",@username, @email, @password)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@password", password);
        cmd.ExecuteNonQuery();

        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        Label2.Text = "Registration Succesful!!! Log in to your account now.";

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == TextBox4.Text)
        {
            string query2 = "Select Count (*) from userTable where email='" + TextBox2.Text + "';";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            Int32 count = Convert.ToInt32(cmd2.ExecuteScalar());
            if (count == 1)
            {
                Label1.Text = "User already registered.";
            }
            else
            {
                Signup(TextBox1.Text, TextBox2.Text, TextBox3.Text);
            }
        }
        else
        {
            TextBox3.Text = String.Empty;
            TextBox4.Text = String.Empty;
            Label1.Text = "Registration failed! Confirm password correctly";
        }
    }

    protected void Reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
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