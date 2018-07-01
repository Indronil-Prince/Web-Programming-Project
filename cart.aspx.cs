using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-4S3P0VQ;Initial Catalog=SportsShopOnline;Integrated Security=True";
        con.Open();
        string query0 = "Select count (user_id) from userTable where login=1;";
        SqlCommand cmd0 = new SqlCommand(query0, con);
        int uid = Convert.ToInt32(cmd0.ExecuteScalar());

        if (uid != 0)
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
                int item, id = (int) reader[2];
                reader.Close();
                string qCart = "Select count(*) from cart where cart_id="+id+";";
                SqlCommand cmdCart = new SqlCommand(qCart, con);
                int cartt= Convert.ToInt32(cmdCart.ExecuteScalar());
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

    string queryq = "Select count(*) from userTable where login=1;";
        SqlCommand cmdq = new SqlCommand(queryq, con);
        int temp = Convert.ToInt32(cmdq.ExecuteScalar());
        if (temp != 0)
        {
            string query = "Select * from userTable where login=1;";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            Label1.Text = reader.GetValue(1).ToString().ToUpper();
            int p_id = Convert.ToInt32(reader.GetValue(0).ToString());
            reader.Close();

            string queryUser = "Select user_id from userTable where login=1;";
            SqlCommand cmdUser = new SqlCommand(queryUser, con);
            Int32 cart = Convert.ToInt32(cmdUser.ExecuteScalar());
            string queryCount = "Select count (product_id) from cart where cart_id=" + cart + ";";
            SqlCommand cmdCount = new SqlCommand(queryCount, con);
            Int32 count = Convert.ToInt32(cmdCount.ExecuteScalar());

            if (!IsPostBack)
            {
                if (count == 0)
                {
                    Label6.Text = "Your cart is empty!";
                    table.Style.Add("display", "none");
                    Label5.Style.Add("display", "none");
                    Label7.Style.Add("display", "none");
                    Label9.Style.Add("display", "none");
                    Button2.Style.Add("display", "none");
                }

                else
                {
                    string queryNum = "Select sum(amount) from cart where cart_id=" + cart + ";";
                    SqlCommand cmdNum = new SqlCommand(queryNum, con);
                    Int32 Num = Convert.ToInt32(cmdNum.ExecuteScalar());
                    Label8.Text = "Total no. of products :     ";
                    Label9.Text = Num.ToString();
                    int subTotal = 0;
                    foreach (DataListItem item in DataList1.Items)
                    {
                        int UnitPrice = Convert.ToInt32(((Label)item.FindControl("priceLabel")).Text);
                        int amount = Convert.ToInt32(((Label)item.FindControl("amountLabel")).Text);
                        Label totalLabel = (Label)item.FindControl("TotalLabel");
                        int Total = (UnitPrice * amount);
                        totalLabel.Text = Total.ToString();
                        subTotal = subTotal + Total;
                    }

                    Label5.Text = subTotal.ToString();
                    Label7.Text = "Sub Total :     " + "<b>৳</b>";
                }
            }
        }
        else
        {
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
    protected void rem_pro(object sender, EventArgs e)
    {
        string queryUser = "Select user_id from userTable where login=1;";
        SqlCommand cmdUser = new SqlCommand(queryUser, con);
        Int32 user = Convert.ToInt32(cmdUser.ExecuteScalar());

        Button btn = (Button)sender;
        int pro = Convert.ToInt32(btn.CommandArgument);

        string query = "Select amount from cart where product_id=" + pro + "and cart_id=" + user + ";";
        SqlCommand cmd = new SqlCommand(query, con);
        Int32 back = Convert.ToInt32(cmd.ExecuteScalar());

        string query0 = "Select available from product where prouct_id=" + pro + ";";
        SqlCommand cmd0 = new SqlCommand(query0, con);
        Int32 av = Convert.ToInt32(cmd0.ExecuteScalar());

        int avNew = av + back;

        string query2 = "update product set available=" + avNew + "where prouct_id=" + pro + ";";
        SqlCommand cmd2 = new SqlCommand(query2, con);
        cmd2.ExecuteNonQuery();

        string query1 = "delete from cart where product_id=" + pro + "and cart_id=" + user + ";";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        cmd1.ExecuteNonQuery();
        Response.Redirect("cart.aspx");
    }
    protected void order(object sender, EventArgs e)
    {
        string queryUser = "Select user_id from userTable where login=1;";
        SqlCommand cmdUser = new SqlCommand(queryUser, con);
        Int32 user = Convert.ToInt32(cmdUser.ExecuteScalar());

        int order = 0;
        string queryOrder = "Select count(order_no) from orderTable where user_id=" + user + ";";
        SqlCommand cmdOrder = new SqlCommand(queryOrder, con);
        Int32 order1 = Convert.ToInt32(cmdOrder.ExecuteScalar());
        if(order1 != 0)
        {
            string queryOrder2 = "Select max(order_no) from orderTable where user_id=" + user + ";";
            SqlCommand cmdOrder2 = new SqlCommand(queryOrder2, con);
            Int32 order2 = Convert.ToInt32(cmdOrder2.ExecuteScalar());
            order = order2+1;
        }
        else order = order1 + 1;

        string order_id = "Order_" + user + "_" + order;

        Response.Redirect("order.aspx?Order_id=" + order_id+"&Status=Continue");
    }
}