using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Text.RegularExpressions;

public partial class order : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = "Data Source=DESKTOP-4S3P0VQ;Initial Catalog=SportsShopOnline;Integrated Security=True";
        con.Open();

        adress.Style.Add("display", "none");
        img0Block.Style.Add("display", "none");

        string o_id = Request.QueryString["Order_id"].ToString();
        string status = Request.QueryString["Status"].ToString();
        Label1.Text = o_id.ToString();

        if (status != "Confirmed")
        {
            string qq = "Select count(*) from orderTable where order_id='" + o_id + "';";
            SqlCommand cmdqq = new SqlCommand(qq, con);
            int cnt = Convert.ToInt32(cmdqq.ExecuteScalar());
            if (cnt != 0)
            {
                Response.Redirect("order.aspx?Order_id=" + o_id + "&Status=Confirmed");
            }
        }

            string query0 = "Select count (user_id) from userTable where login=1;";
            SqlCommand cmd0 = new SqlCommand(query0, con);
            Int32 uid = Convert.ToInt32(cmd0.ExecuteScalar());

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


            if (status == "Confirmed")
            {
                Button2.Style.Add("display", "none");
                SqlDataSource1.SelectCommand = "SELECT p.image, p.store, p.category, p.type, p.product_name, p.brand, p.price, o.amount, o.size FROM [orderTable] o join [product] p on o.product_name=p.product_name where order_id='" + o_id + "';";
                img0.ImageUrl = "~/images/confirmed.png";
                img0Block.Style.Add("display", "block");
                string qNum = "Select sum(amount) from orderTable where order_id='" + o_id + "';";
                SqlCommand cmdNum = new SqlCommand(qNum, con);
                Int32 Num = Convert.ToInt32(cmdNum.ExecuteScalar());
                Label8.Text = "Total no. of products :     ";
                Label9.Text = Num.ToString();
                int grandTotal = 0;
                int ship = 0;

                string q = "select name, location, district, phone, payment, OrderDate, status from orderTable where order_id='" + o_id + "';";
                SqlCommand cq = new SqlCommand(q, con);
                SqlDataReader r1 = cq.ExecuteReader();
                r1.Read();
                Label10.Text = r1[0].ToString();
                Label11.Text = r1[1].ToString() + ", " + r1[2].ToString();
                Label12.Text = "+88" + r1[3].ToString();
                Label13.Text = r1[6].ToString();
                Label14.Text = r1[5].ToString();
            Label15.Text = r1[4].ToString();
            r1.Close();

                foreach (DataListItem item in DataList1.Items)
                {
                    int UnitPrice = Convert.ToInt32(((Label)item.FindControl("priceLabel")).Text);
                    int amount = Convert.ToInt32(((Label)item.FindControl("amountLabel")).Text);
                    Label totalLabel = (Label)item.FindControl("TotalLabel");
                    int Total = (UnitPrice * amount);
                    totalLabel.Text = Total.ToString();
                    grandTotal = grandTotal + Total;
                }

                Label2.Text = "Total Price :     " + "<b>৳</b>" + "<b>" + grandTotal.ToString() + "</b>";
                if (grandTotal > 0) ship = 100;
                Label4.Text = "Delivary Charge :     " + "<b>৳</b>" + "<b>" + ship.ToString() + "</b>";
                int vat = (grandTotal * 4) / 100;
                Label3.Text = "VAT (4%) :     " + "<b>৳</b>" + "<b>" + vat.ToString() + "</b>";
                int pay = grandTotal + vat + ship;
                Label7.Text = "Grand Total :     " + "<b>৳</b>";
                Label5.Text = pay.ToString();
            }


            else {
                SqlDataSource1.SelectCommand = "SELECT p.image, p.store, p.category, p.type, p.product_name, p.brand, p.price, c.amount, c.size FROM [cart] c join [product] p on c.product_id=p.prouct_id join userTable u on c.cart_id=u.user_id WHERE u.login=1";
                img0.Style.Add("display", "none");

                string queryq = "Select count(*) from userTable where login=1;";
                SqlCommand cmdq = new SqlCommand(queryq, con);
                int temp = Convert.ToInt32(cmdq.ExecuteScalar());
                if (temp != 0)
                {
                    string query = "Select * from userTable where login=1;";
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
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
                            Label2.Style.Add("display", "none");
                            Label3.Style.Add("display", "none");
                            Label4.Style.Add("display", "none");
                            Label5.Style.Add("display", "none");
                            Label7.Style.Add("display", "none");
                            Button2.Style.Add("display", "none");
                        }

                        else
                        {
                            string qNum = "Select sum(amount) from cart where cart_id=" + cart + ";";
                            SqlCommand cmdNum = new SqlCommand(qNum, con);
                            Int32 Num = Convert.ToInt32(cmdNum.ExecuteScalar());
                            Label8.Text = "Total no. of products :     ";
                            Label9.Text = Num.ToString();
                            int grandTotal = 0;
                            int ship = 0;
                            foreach (DataListItem item in DataList1.Items)
                            {
                                int UnitPrice = Convert.ToInt32(((Label)item.FindControl("priceLabel")).Text);
                                int amount = Convert.ToInt32(((Label)item.FindControl("amountLabel")).Text);
                                Label totalLabel = (Label)item.FindControl("TotalLabel");
                                int Total = (UnitPrice * amount);
                                totalLabel.Text = Total.ToString();
                                grandTotal = grandTotal + Total;
                            }

                            Label2.Text = "Total Price :     " + "<b>৳</b>" + "<b>" + grandTotal.ToString() + "</b>";
                            if (grandTotal > 0) ship = 100;
                            Label4.Text = "Delivary Charge :     " + "<b>৳</b>" + "<b>" + ship.ToString() + "</b>";
                            int vat = (grandTotal * 4) / 100;
                            Label3.Text = "VAT (4%) :     " + "<b>৳</b>" + "<b>" + vat.ToString() + "</b>";
                            int pay = grandTotal + vat + ship;
                            Label7.Text = "Grand Total :     " + "<b>৳</b>";
                            Label5.Text = pay.ToString();
                        }
                    }
                }
                else
                {
                    Response.Redirect("login.aspx");
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
    protected void logout(object sender, EventArgs e)
    {
        string query1 = "update userTable set login=0 where login=1;";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        cmd1.ExecuteNonQuery();
        Response.Redirect("login.aspx");
    }

    protected void place_order(object sender, EventArgs e)
    {
        Button2.Style.Add("display", "none");
        adress.Style.Add("display", "block");
    }
    protected void pay(object sender, EventArgs e)
    {
        adress.Style.Add("display", "block");
        tab.Style.Add("display", "none");

        int sel = Convert.ToInt32(RadioButtonList1.SelectedValue);
        if (sel == 1) img.ImageUrl = "~/images/cod.jpg";
        else if (sel == 4) img.ImageUrl = "~/images/rocket.jpg";
        else { img.ImageUrl = "~/images/bkash.jpg"; }
        method.Text = RadioButtonList1.SelectedItem.ToString();
        img.Style.Add("display", "block");

    }


    protected void con_order(object sender, EventArgs e)
    {
        string queryUser = "Select user_id from userTable where login=1;";
        SqlCommand cmdUser = new SqlCommand(queryUser, con);
        Int32 user = Convert.ToInt32(cmdUser.ExecuteScalar());

        string queryOrder = "Select count(order_no) from orderTable where user_id=" + user + ";";
        SqlCommand cmdOrder = new SqlCommand(queryOrder, con);
        Int32 order = Convert.ToInt32(cmdOrder.ExecuteScalar());
        order = order + 1;

        string order_id = "Order_" + user + "_" + order;

        string qnum = "Select count(amount) from cart where cart_id=" + user + ";";
        SqlCommand cmdNum = new SqlCommand(qnum, con);
        Int32 Num = Convert.ToInt32(cmdNum.ExecuteScalar());

        string pay = "";
        int sel = Convert.ToInt32(RadioButtonList1.SelectedValue);
        if (sel == 1) pay = "Cash on delivey";
        else if (sel == 2) pay = "Payment through bKash";
        else if (sel == 4) pay = "Payment through Rocket";

        string pname = TextBox1.Text.ToString();
        string location = TextBox2.Text.ToString();
        string district = TextBox3.Text.ToString();
        string phone = TextBox4.Text.ToString();
        if (phone.Length == 11)
        {
            string q = "Select p.product_name, c.size, c.amount from cart c join product p on (c.product_id=p.prouct_id) where cart_id=" + user + ";";
            SqlCommand cmdq = new SqlCommand(q, con);
            SqlDataReader Treader = cmdq.ExecuteReader();
            string[] Q_array = new string[Num];
            int i = 0;
            if (Treader.HasRows)
            {

                while (Treader.Read())
                {
                    string name = Treader[0].ToString();
                    string size = Treader[1].ToString();
                    int amount = Treader.GetInt32(2);
                    DateTime today = DateTime.Today;
                    string date = (today.ToString("dd-MM-yyyy")).ToString();

                    Q_array[i] = "insert into orderTable(order_id, order_no, user_id, product_name, size, amount, confirmed, name, location, district, phone, payment, OrderDate, status)values('" + order_id + "'," + order + "," + user + ",'" + name + "','" + size + "'," + amount + ", 1, '" + pname + "','" + location + "','" + district + "','" + phone + "','" + pay + "','" + date + "', 'Order Placed');";
                    i++;
                }
            }
            Treader.Close();
            for (int j = 0; j < Q_array.Length; j++)
            {
                SqlCommand com = new SqlCommand(Q_array[j], con);
                com.ExecuteNonQuery();
            }
            string del = "delete from cart where cart_id=" + user;
            SqlCommand cmdDel = new SqlCommand(del, con);
            cmdDel.ExecuteNonQuery();

            string qmail = "select email from userTable where login=1;";
            SqlCommand cmdMail = new SqlCommand(qmail, con);
            string mailAd = (string)cmdMail.ExecuteScalar();

            string final = "update orderTable set confirmed=1 where order_id='" + order_id + "';";
            SqlCommand cmdF = new SqlCommand(final, con);
            cmdF.ExecuteNonQuery();
            Response.Redirect("order.aspx?Order_id=" + order_id + "&Status=Confirmed");
        }
        else
        {
            img.Style.Add("display", "block");
            adress.Style.Add("display", "block");
            invalid.Text = "Phone number must be of 11 digits";
            TextBox4.Text = String.Empty;

        }
    }
}