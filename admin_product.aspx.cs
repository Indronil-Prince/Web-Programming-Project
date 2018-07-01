using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_product: System.Web.UI.Page
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

    void Add(int prouct_id, string store, string category, string type, string product_name, string brand, int price, string image, int available)
    {
        string query = "insert into product" + "(prouct_id, store, category, type, product_name, brand, price, image, available)values(@prouct_id, @store, @category, @type, @product_name, @brand, @price, @image, @available)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@prouct_id", prouct_id);
        cmd.Parameters.AddWithValue("@store", store);
        cmd.Parameters.AddWithValue("@category", category);
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@product_name", product_name);
        cmd.Parameters.AddWithValue("@brand", brand);
        cmd.Parameters.AddWithValue("@price", price);
        cmd.Parameters.AddWithValue("@image", image);
        cmd.Parameters.AddWithValue("@available", available);
        cmd.ExecuteNonQuery();


        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        TextBox5.Text = String.Empty;
        TextBox6.Text = String.Empty;
        TextBox7.Text = String.Empty;
        TextBox8.Text = String.Empty;
        Label2.Text = String.Empty;
        Label3.Text = String.Empty;
        Label4.Text = String.Empty;
        Label1.Text = "New Product Added";

    }
    protected void Add_Click(object sender, EventArgs e)
    {
            string query2 = "Select max(prouct_id) from product;";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            Int32 id = Convert.ToInt32(cmd2.ExecuteScalar());
            Int32 Dprice = Convert.ToInt32(TextBox6.Text);
            Int32 avl = Convert.ToInt32(TextBox7.Text);
            string imageUrl = "~/images/" + TextBox8.Text.ToString();

        Add(id + 1, TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, Dprice, imageUrl, avl);
    }

    protected void Update_Qty(object sender, EventArgs e)
    {
        string name = TextBoxU3.Text;
        Int32 qty= Convert.ToInt32(TextBoxU4.Text);

        string query3 = "Select available from product where product_name='"+name+"';";
        SqlCommand cmd3 = new SqlCommand(query3, con);
        Int32 r_qty = Convert.ToInt32(cmd3.ExecuteScalar());
        int t_qty = r_qty + qty;

        string query4 = "update product set available="+t_qty+ "where product_name='" + name + "';";
        SqlCommand cmd4 = new SqlCommand(query4, con);
        cmd4.ExecuteNonQuery();

        TextBoxU3.Text = String.Empty;
        TextBoxU4.Text = String.Empty;
        Label1.Text = String.Empty;
        Label3.Text = String.Empty;
        Label4.Text = String.Empty;
        Label2.Text = "Quantity Updated";
    }

    protected void Update_Price(object sender, EventArgs e)
    {
        string name = TextBoxU1.Text;
        Int32 price = Convert.ToInt32(TextBoxU2.Text);

        string query5 = "update product set price=" + price + "where product_name='" + name + "';";
        SqlCommand cmd5 = new SqlCommand(query5, con);
        cmd5.ExecuteNonQuery();

        TextBoxU1.Text = String.Empty;
        TextBoxU2.Text = String.Empty;
        Label1.Text = String.Empty;
        Label2.Text = String.Empty;
        Label3.Text = String.Empty;
        Label4.Text = "Price Updated";
    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        string name = TextBoxD1.Text;
        string query6 = "Delete from product where product_name='"+ name +"';";
        SqlCommand cmd6 = new SqlCommand(query6, con);
        cmd6.ExecuteNonQuery();
        TextBoxD1.Text = String.Empty;
        Label1.Text = String.Empty;
        Label2.Text = String.Empty;
        Label4.Text = String.Empty;
        Label3.Text = "Product Deleted";
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