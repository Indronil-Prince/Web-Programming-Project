using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class my_account : System.Web.UI.Page

{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-4S3P0VQ;Initial Catalog=SportsShopOnline;Integrated Security=True";
        con.Open();
        Label4.Style.Add("display", "inline-block");
        Button13.Style.Add("display", "inline-block");
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
                Label1.Text = reader[0].ToString();
                Label2.Text = reader[1].ToString();
                Label3.Text = reader[2].ToString();
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

        Label5.Style.Add("display", "none");
        Label6.Style.Add("display", "none");
        Label7.Style.Add("display", "none");
        Label8.Style.Add("display", "none");
        TextBox1.Style.Add("display", "none");
        TextBox2.Style.Add("display", "none");
        TextBox3.Style.Add("display", "none");
        Button14.Style.Add("display", "none");
        Button16.Style.Add("display", "none");
    }

    protected void btn_click(object sender, EventArgs e)
    {
        string query1 = "Select count (user_id) from userTable where login=1;";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        Int32 user = Convert.ToInt32(cmd1.ExecuteScalar());

        if (user == 1)
        {
            string queryAd = "Select username, email, user_id from userTable where login=1;";
            SqlCommand cmdAd = new SqlCommand(queryAd, con);
            SqlDataReader reader = cmdAd.ExecuteReader();
            reader.Read();
            if (reader[0].ToString() == "admin" && reader[1].ToString() == "admin@sportsshoponline.com")
                Response.Redirect("admin.aspx");
            else
            {
                Response.Redirect("my_account.aspx");
            }
            reader.Close();
        }
        else Response.Redirect("login.aspx");
    }
    protected void logout(object sender, EventArgs e)
    {
        string query1 = "update userTable set login=0 where login=1;";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        cmd1.ExecuteNonQuery();
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("login.aspx");
    }
    protected void present_pass(object sender, EventArgs e)
    {
        Label4.Style.Add("display", "none");
        Button13.Style.Add("display", "none");
        Label5.Style.Add("display", "inline-block");
        TextBox1.Style.Add("display", "inline-block");
        Button14.Style.Add("display", "inline-block");
    }
    protected void change(object sender, EventArgs e)
    {
        string queryAd = "Select password from userTable where login=1;";
        SqlCommand cmdAd = new SqlCommand(queryAd, con);
        string pass = cmdAd.ExecuteScalar().ToString();

        if (pass == TextBox1.Text)
        {
            Label4.Style.Add("display", "none");
            Button13.Style.Add("display", "none");
            Label5.Style.Add("display", "none");
            TextBox1.Style.Add("display", "none");
            Button14.Style.Add("display", "none");
            Label6.Style.Add("display", "inline-block");
            Label7.Style.Add("display", "inline-block");
            Label8.Style.Add("display", "inline-block");
            TextBox2.Style.Add("display", "inline-block");
            TextBox3.Style.Add("display", "inline-block");
            Button16.Style.Add("display", "block");
            Label8.Text = "Your password will be changed. Do you want to confirm?";
        }
        else
        {
            Label5.Style.Add("display", "inline-block");
            TextBox1.Style.Add("display", "inline-block");
            Button14.Style.Add("display", "inline-block");
            Label8.Style.Add("display", "inline-block");
            Label8.Text = "Password Incorrect";
        }
    }
    protected void done(object sender, EventArgs e)
    {
        string pass = TextBox2.Text;
        string conpass = TextBox3.Text;
        if (pass == conpass)
        {
            string queryAd = "update userTable set password='" + pass + "'where login=1;";
            SqlCommand cmdAd = new SqlCommand(queryAd, con);
            cmdAd.ExecuteNonQuery();
            Label8.Style.Add("display", "inline-block");
            Label8.Text = "Password Changed Successfully";
        }
    }
}