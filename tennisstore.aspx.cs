using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class tennisstore : System.Web.UI.Page
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
        string url = HttpContext.Current.Request.Url.AbsoluteUri.ToString();

        if (url != "http://localhost:2521/tennisstore.aspx")
        {
            string value = Request.QueryString["search"].ToString();
            SqlDataSource1.SelectCommand = "SELECT * FROM [product] WHERE [store] = 'Tennis' and ([product_name] like '%" + value + "%' or [type] like '%" + value + "%' or [category] like '%" + value + "%' or [brand] like '%" + value + "%') ORDER BY [category] DESC, [brand], [product_name]";
        }
        else
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [product] WHERE [store] = 'Tennis' and category='Jersey' ORDER BY [category] DESC, [type], [brand], [product_name];";
            Category1.Text = "⚫ Jersey";
            SqlDataSource2.SelectCommand = "SELECT * FROM [product] WHERE [store] = 'Tennis' and category='Racket' ORDER BY [category] DESC, [type], [brand], [product_name] ;";
            Category2.Text = "⚫ Racket";
            SqlDataSource3.SelectCommand = "SELECT * FROM [product] WHERE [store] = 'Tennis' and category='Shoes' ORDER BY [category] DESC, [type], [brand], [product_name] ;";
            Category3.Text = "⚫ Shoe";
            SqlDataSource4.SelectCommand = "SELECT * FROM [product] WHERE [store] = 'Tennis' and category='Wristband' ORDER BY [category] DESC, [type], [brand], [product_name] ;";
            Category4.Text = "⚫ Wristband";
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
    protected void Search(object sender, EventArgs e)
    {
        string str = TextBox1.Text.ToString();
        Response.Redirect("tennisstore.aspx?search=" + str);
    }
    protected void div1_button(object sender, EventArgs e)
    {
        DataList1.Style.Add("display", "block"); Category1.Style.Add("font-size", "x-large");
        DataList2.Style.Add("display", "none"); Category2.Style.Add("font-size", "medium");
        DataList3.Style.Add("display", "none"); Category3.Style.Add("font-size", "medium");
        DataList4.Style.Add("display", "none"); Category4.Style.Add("font-size", "medium");
    }
    protected void div2_button(object sender, EventArgs e)
    {
        DataList2.Style.Add("display", "block"); Category2.Style.Add("font-size", "x-large");
        DataList1.Style.Add("display", "none"); Category1.Style.Add("font-size", "medium");
        DataList3.Style.Add("display", "none"); Category3.Style.Add("font-size", "medium");
        DataList4.Style.Add("display", "none"); Category4.Style.Add("font-size", "medium");
    }
    protected void div3_button(object sender, EventArgs e)
    {
        DataList3.Style.Add("display", "block"); Category3.Style.Add("font-size", "x-large");
        DataList1.Style.Add("display", "none"); Category1.Style.Add("font-size", "medium");
        DataList2.Style.Add("display", "none"); Category2.Style.Add("font-size", "medium");
        DataList4.Style.Add("display", "none"); Category4.Style.Add("font-size", "medium");
    }
    protected void div4_button(object sender, EventArgs e)
    {
        DataList4.Style.Add("display", "block"); Category4.Style.Add("font-size", "x-large");
        DataList1.Style.Add("display", "none"); Category1.Style.Add("font-size", "medium");
        DataList2.Style.Add("display", "none"); Category2.Style.Add("font-size", "medium");
        DataList3.Style.Add("display", "none"); Category3.Style.Add("font-size", "medium");
    }
}