<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Cart</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <style type="text/css">
        .auto-style7 {
            left: 10px;
            top: 9px;
        }
        .auto-style9 {
            left: 0px;
            top: 0px;
            height: 406px;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style12 {
            font-size: small;
        }
        .auto-style14 {
            text-align: right;
            width: 1019px;
        }
        .auto-style16 {
            font-size: medium;
            color: #000000;
        }
    #search {text-align: right; width: 990px;}
    .userbtn {
  border: none;
  outline: none;
  width:16.33%;
  text-align:center;
  padding:16px 0 16px 0px;
  display:inline;
  background-color:#A2DD89;
  font-size: 15px;
  cursor: pointer;
  border-radius:10px; 
}
.userbtn:hover {
  border: none;
  outline: none;
  background-color: red;
  color:white;
  font-size: 16px;
  font-weight: 700;
}
        .auto-style17 {
            font-size: xx-small;
        }
        .auto-style18 {
            text-align: justify;
            margin-left: 0%;
            font-size: 32px;
            color: white;
            height: 5px;
        }
        .auto-style19 {
            text-align: center;
            margin-left: 0%;
            font-size: 32px;
            color: white;
            width: 1034px;
        }
        .auto-style20 {
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style21 {
            color: black;
            font-size: x-large;
        }
    </style>
</head>

<body>
    <div>
          <form runat="server">
    <div id="header" style="height:480px;">
		<div id="header_top" style="align-content: center; height:120px; width: 100%">
			<div id="top_image"><asp:Image runat="server" ImageAlign="Middle" ImageUrl="~/images/logo.png" Height="114px" Width="185px" /></div>
			<div id="top_name"><asp:Image runat="server" ImageAlign="Middle" ImageUrl="~/images/name.jpg" Height="87px" Width="510px" /></div>
      			<div id="top_icon" text-align: center;">
				<p style="color: white; font-size: 14px; font-weight: 700;">&nbsp;&nbsp;STAY CONNECTED</p>
                <asp:Button runat="server" Style="width:70px; padding:5px; margin-top:5px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" CssClass="btnup" Text="Register" PostBackUrl="signup.aspx" BorderStyle="Solid"></asp:Button>
                <asp:Button ID="Up2" runat="server" Style="width:70px; padding:5px; margin-top:5px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" CssClass="btnup" BorderStyle="Solid"></asp:Button>
			</div>
		</div> 
	 
    <div id="header_img" class="auto-style9"> 
			<div class="slideshow-container">

<div class="mySlides fade" style="height:450px">
  <img src="../images/cart_banner.jpg" style="width:100%" />
</div>
        </div>
<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var changes = document.getElementsByClassName("change");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < changes.length; i++) {
            changes[i].className = changes[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        changes[slideIndex - 1].className += " active";
        setTimeout(showSlides, 3000);
    }
</script>
</div>
        <div>
      <ul id="menu" style="top:480px;">
       <asp:Button CssClass="menubtn" runat="server" Text="Home" PostBackUrl="~/home.aspx"></asp:Button>
       <asp:Button CssClass="menubtn" runat="server" Text="About Us" PostBackUrl="~/aboutus.aspx"></asp:Button>
       <asp:Button CssClass="menubtn" runat="server" Text="News" PostBackUrl="~/news.aspx"></asp:Button>
       <asp:Button id="user" CssClass="menubtn" runat="server" onclick="btn_click"></asp:Button>    
        <div class="dropdown">
            <asp:Button CssClass="dropbtn" runat="server" Text="Shop Here"></asp:Button>
             <div class="dropdown-content">
                <asp:Button CssClass="menubtn" runat="server" Text="Football Store" PostBackUrl="~/footballstore.aspx"></asp:Button>
                <asp:Button CssClass="menubtn" runat="server" Text="Cricket Store" PostBackUrl="~/cricketstore.aspx"></asp:Button>
                <asp:Button CssClass="menubtn" runat="server" Text="Tennis Store" PostBackUrl="~/tennisstore.aspx"></asp:Button>
                <asp:Button CssClass="menubtn" runat="server" Text="Basketball Store" PostBackUrl="~/basketballstore.aspx"></asp:Button>
                <asp:Button CssClass="menubtn" runat="server" Text="Badminton Store" PostBackUrl="~/badmintonstore.aspx"></asp:Button>
                <asp:Button CssClass="menubtn" runat="server" Text="Golf Store" PostBackUrl="~/golfstore.aspx"></asp:Button>
                <asp:Button CssClass="menubtn" runat="server" Text="Athletics Store" PostBackUrl="~/athleticsstore.aspx"></asp:Button>
              </div>
        </div>   
        <asp:Button CssClass="menubtn" runat="server" Text="Contacts" PostBackUrl="~/contacts.aspx"></asp:Button>
  
      </ul>
    </div>
 
  </div>

<div id="wrapper" style="background-image:url(../images/user_back.jpg);
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">																															
		<div id="content_inside" class="auto-style7">
			<div id="main_block">
				&nbsp;<span class="auto-style21"><strong>MY ACCOUNT</strong></span><ul id="menu0" style="top:40px" runat="server">
       <asp:Button Class="userbtn" runat="server" Text="Home" PostBackUrl="~/my_account.aspx" ID="Button3"></asp:Button>
       <asp:Button Class="userbtn" runat="server" Text="Cart" PostBackUrl="~/cart.aspx" ID="Button4"></asp:Button>
       <asp:Button Class="userbtn" runat="server" Text="Order History" PostBackUrl="~/order_history.aspx" ID="Button5"></asp:Button>
       <asp:Button Class="userbtn" runat="server" Text="Preferences" PostBackUrl="~/preferences.aspx" ID="Button6"></asp:Button>     
        <asp:Button Class="userbtn" runat="server" Text="Log Out" ID="Button12" OnClick="logout"></asp:Button>
     </ul>
                <h2 style="padding-bottom: 20px; " class="auto-style18">
                    <span class="auto-style17">&nbsp;</span></h2>
                <h2 style="padding-bottom: 20px; " class="auto-style19">
                    <span class="color">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style20"></asp:Label>
                    <span class="auto-style20">&#39;s CART</span></span></h2>
                <h2 style="padding-bottom: 20px; " class="auto-style19">
                    <asp:Label ID="Label6" runat="server" style="font-weight: 700; font-size: medium; color: #FF0000; text-align: center"></asp:Label>
                </h2>                
                <div>
                                <asp:Table id="table" runat="server" Width="1007px">
                                    <asp:TableRow>
                                <asp:TableCell Width="100px" Text=" Image" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="100px" Text="Sport" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="180px" Text="Product Type" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="225px" Text="Product Name" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="100px" Text="Brand Name" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="40px" Text="Size" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="70px" Text="Unit Price" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="60px" Text="Amount" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="100px" Text="Total Price" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="80px"></asp:TableCell>
                                </asp:TableRow></asp:Table>
                </div>
            <div>
   
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" SelectCommand="SELECT c.product_id, p.image, p.store, p.type, p.product_name, p.brand, p.price, c.amount, c.size FROM [cart] c join [product] p on c.product_id=p.prouct_id join userTable u on c.cart_id=u.user_id WHERE u.login=1">
                    </asp:SqlDataSource>

                    <asp:DataList ID="DataList1" runat="server" BackColor="Transparent" BorderColor="Black" BorderStyle="Ridge" BorderWidth="0px" CellPadding="15" CellSpacing="30" DataSourceID="SqlDataSource1" RepeatColumns="1" TableCellirection="Horizontal" Width="1020px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" GridLines="Both">                   
                        <ItemStyle BackColor="White" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style10">
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br /> 
                                <asp:Table runat="server" Width="1007px">
                                    <asp:TableRow>
                                <asp:TableCell Width="100px"><asp:Image ID="ImageLabel" runat="server" Height="75px" ImageUrl='<%# Eval("image")%>' Width="75px" /></asp:TableCell>
                                <asp:TableCell Width="100px"><span><asp:Label ID="sportsLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("store") %>' /></asp:TableCell><asp:TableCell Width="180px"><asp:Label ID="typeLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("type") %>' /></asp:TableCell><asp:TableCell Width="225px"><asp:Label ID="product_nameLabel" runat="server" ForeColor="#C1156E" Text='<%# Eval("product_name") %>' /></asp:TableCell><asp:TableCell Width="100px"><asp:Label ID="brandLabel" runat="server" ForeColor="#1A0DAB" Text='<%# Eval("brand") %>' /></asp:TableCell><asp:TableCell Width="40px"><asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>' /></asp:TableCell><asp:TableCell Width="70px"><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></asp:TableCell><asp:TableCell Width="40px"><asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' ForeColor="Green" style="color: #000000" /></asp:TableCell><asp:TableCell Width="100px"><asp:Label ID="TotalLabel" runat="server" CssClass="auto-style12"></asp:Label></asp:TableCell><asp:TableCell Width="60px"><asp:Button ID="remove" runat="server" BorderWidth="0px" Height="30px" CssClass="btnqq" Text="Remove" CommandArgument='<%#Eval("product_id")%>'  Width="83px" OnClick="rem_pro"/></asp:TableCell>
                                </asp:TableRow></asp:Table>
                                <br />
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList>
                <div class="auto-style14">

                    <br /><br /><asp:Label ID="Label8" runat="server"  CssClass="auto-style16"></asp:Label><span class="color"><span><strong><asp:Label ID="Label9" runat="server" CssClass="auto-style16" style="margin-right:50px;">0</asp:Label></strong></span></span><asp:Label ID="Label7" runat="server"  CssClass="auto-style16"></asp:Label><span class="color"><span><strong><asp:Label ID="Label5" runat="server" CssClass="auto-style16">0</asp:Label><br /></strong></span>
                    <br />
                    <br /></span>
                    <asp:Button ID="Button2" runat="server" Text="Continue to order" Width="150px" Height="35px" CssClass="btnqq" BorderWidth="0px" OnClick="order"/>

                    <br />
                    <br /><br /><br /><br />
                    <br />

                </div>

            </div>
</div>
				
				<br />
				
				</div>
			</div>	

<div id="footer">
			<ul class="footer_menu">
				<li><span style="font-size: 11px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; ©SPORTS SHOP ONLINE<span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>&nbsp;&nbsp; <a href="home.aspx">Home</a>&nbsp;|&nbsp;</li>
				<li><a href="aboutus.aspx">About Us</a>&nbsp;|&nbsp;</li>
				<li><a href="news.aspx">News</a>&nbsp;|&nbsp;</li>
				<li><a href="login.aspx">My Account</a>&nbsp;|&nbsp;</li>
				<li><a href="news.aspx">Contacts</a><li id="top_icon2">
                    <p style="color: white; font-size: 14px; font-weight: 700; width: 131px; height: 19px; text-align: center;">
                        Follow Us</p>
				&nbsp;<asp:Button runat="server" CssClass="iconbtn1" PostBackUrl="https://www.facebook.com"></asp:Button>
                    <asp:Button runat="server" CssClass="iconbtn2" PostBackUrl="https://www.twitter.com"></asp:Button>
                    <asp:Button runat="server" CssClass="iconbtn3" PostBackUrl="https://www.instagram.com"></asp:Button>
                    <asp:Button runat="server" CssClass="iconbtn4" PostBackUrl="https://www.linkedin.com"></asp:Button>
                    </li>
                </li>
                <li> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </li>
            </ul>                                                     											
	</div>
   </form> 
    </div>
</body>
</html>

