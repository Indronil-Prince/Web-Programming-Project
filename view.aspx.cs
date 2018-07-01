using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void hide()
    {   
        addBtn.Style.Add("display", "none");
        DDL1.Style.Add("display", "none");
        DDL2.Style.Add("display", "none");
        Label2.Style.Add("display", "none");
        Label3.Style.Add("display", "none");
        Label1.Text="Please log in to your cart to start shopping!";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string value = Request.QueryString["Pid"].ToString();
        SqlDataSource1.SelectParameters["prouct_id"].DefaultValue = value;

            con.ConnectionString = "Data Source=DESKTOP-4S3P0VQ;Initial Catalog=SportsShopOnline;Integrated Security=True";
            con.Open();
            string query0 = "Select count (user_id) from userTable where login=1;";
            SqlCommand cmd0 = new SqlCommand(query0, con);
            int uid = Convert.ToInt32(cmd0.ExecuteScalar());

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
                hide();
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
            hide();
            Up2.Text = "Log In";
            Up2.PostBackUrl = "login.aspx";
        }
        string query = "Select available from product where prouct_id=" + value + ";";
        SqlCommand cmd = new SqlCommand(query, con);
        Int32 count = Convert.ToInt32(cmd.ExecuteScalar());

        if (!IsPostBack)
        {
            if (count == 0)
            {
                DDL1.Items.Add("Unavailable");
                addBtn.Style.Add("display", "none");
                Label1.Text = "Product Unavailable";
            }

            else {
                for (int iValue = 1; iValue <= count; iValue++)
                {
                    DDL1.Items.Add(iValue.ToString());
                }
                DDL1.SelectedIndex = 0;
            }
            string type = "";
            foreach (DataListItem item in DataList1.Items)
            {

                HiddenField Category = (HiddenField)item.FindControl("category");
                type = Category.Value.ToString();
            }
            if (type == "Jersey")
            {
                DDL2.Items.Add("M");
                DDL2.Items.Add("L");
                DDL2.Items.Add("XL");
                DDL2.Items.Add("XXL");
                DDL2.SelectedIndex = 0;
            }
            else if (type == "Shoes" || type == "Shoe" || type == "Boot")
            {
                DDL2.Items.Add("6");
                DDL2.Items.Add("7");
                DDL2.Items.Add("8");
                DDL2.Items.Add("9");
                DDL2.Items.Add("10");
                DDL2.Items.Add("11");
                DDL2.SelectedIndex = 0;
            }
            else {
                     DDL2.Style.Add("display", "none");
                     Label3.Style.Add("display", "none");
                     DDL2.SelectedValue = "-".ToString(); 
            }
            }
        string query1 = "Select image from product where prouct_id=" + value + ";";
        SqlCommand cmd1 = new SqlCommand(query1, con);

        string img = (string)cmd1.ExecuteScalar();
        myimage.ImageUrl = img;
    }
    protected void add_click(object sender, EventArgs e)
    {
        string query1 = "Select user_id from userTable where login=1;";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        Int32 user = Convert.ToInt32(cmd1.ExecuteScalar());
        if (DDL1.SelectedValue.ToString() != "Unavailable")
        {
            int amount = Convert.ToInt32(DDL1.SelectedValue);
            string value = Request.QueryString["Pid"].ToString();
            int proid = Convert.ToInt32(value);
            string size = DDL2.SelectedValue.ToString();
            {
                string query0 = "Select count(product_id) from cart where cart_id=" + user + " and product_id=" + proid + " and size='" + size + "';";
                SqlCommand cmd0 = new SqlCommand(query0, con);
                Int32 repeat = Convert.ToInt32(cmd0.ExecuteScalar());

                if (repeat == 0)
                { 
                        string query2 = "insert into cart(cart_id, product_id, amount, size)values(" + user + "," + proid + "," + amount + ",'" + size + "');";
                        SqlCommand cmd2 = new SqlCommand(query2, con);
                        cmd2.ExecuteNonQuery();
                }
                else
                {
                    string query7 = "select amount from cart where product_id=" + proid + "and cart_id=" + user + ";";
                    SqlCommand cmd7 = new SqlCommand(query7, con);
                    Int32 avl = Convert.ToInt32(cmd7.ExecuteScalar());
                    avl = avl + amount;

                    string query8 = "update cart set amount=" + avl + " where product_id=" + proid + "and cart_id=" + user + ";";
                    SqlCommand cmd8 = new SqlCommand(query8, con);
                    cmd8.ExecuteNonQuery();

                }

                string query3 = "select available from product where prouct_id=" + proid + ";";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                Int32 av = Convert.ToInt32(cmd3.ExecuteScalar());
                av = av - amount;

                string query4 = "update product set available=" + av + "where prouct_id=" + proid + ";";
                SqlCommand cmd4 = new SqlCommand(query4, con);
                cmd4.ExecuteNonQuery();
                Response.Redirect("view.aspx?PId=" + proid);
                Label1.Text = "Product added to cart!";
           }
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
}
