<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="contacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Contacts</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <style type="text/css">
        .auto-style2 {
            margin-left: 0%;
        }
        #search {text-align: right; width: 990px;}
        .auto-style5 {
            width: auto;
            display: inline-block;
            margin-top: 0px;
            height:304px;
        }

        .auto-style8 {
            width: 347px;
            height: 442px;
            margin-top: 0px;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            font-size: 24pt;
            color: #000000;
        }
        .auto-style12 {
            font-size: large;
            color: #000000;
        }
        .auto-style15 {
            text-decoration: none;
        }
        .auto-style16 {
            left: 31px;
            top: -4px;
        }
        .auto-style17 {
            font-size: large;
            color: #007ACC;
        }
        .auto-style18 {
            color: #007ACC;
        }
        .auto-style19 {
            font-size: x-large;
            color: #000000;
        }
        .auto-style20 {
            height: 820px;
        }
    </style>
</head>

<body>
    <div>
        <form id="Form1" runat="server">
            <div id="header">
		<div id="header_top" style="align-content: center; height:120px; width: 100%">
			<div id="top_image"><asp:Image runat="server" ImageAlign="Middle" ImageUrl="~/images/logo.png" Height="114px" Width="185px" /></div>
			<div id="top_name"><asp:Image runat="server" ImageAlign="Middle" ImageUrl="~/images/name.jpg" Height="87px" Width="510px" /></div>
      			<div id="top_icon" text-align: center;">
				<p style="color: white; font-size: 14px; font-weight: 700;">&nbsp;&nbsp;STAY CONNECTED</p>
                <asp:Button runat="server" Style="width:70px; padding:5px; margin-top:5px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" CssClass="btnup" Text="Register" PostBackUrl="signup.aspx" BorderStyle="Solid"></asp:Button>
                <asp:Button ID="Up2" runat="server" Style="width:70px; padding:5px; margin-top:5px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" CssClass="btnup" BorderStyle="Solid"></asp:Button>
			</div>
		</div> 
</div>  	
        <div>
      <ul id="menu" style="top:120px">
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

        <div id="wrapper" style="background-image: url(images/backg.jpg);
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">																															
		<div id="content_inside" class="auto-style16">
			<div id="main_block" class="auto-style20">
				<h2 style="padding-bottom: 20px; font-size: 32px; color: black" class="auto-style2">FIND US</h2>
            <div class="auto-style5" style="border-style:solid; border-width:2px; border-color:black;">
              <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3675.34845836965!2d89.50016731496552!3d22.900514785015012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff9bda1d0ff6e5%3A0x123a926908efcd0c!2sKhulna+University+Of+Engineering+%26+Technology!5e0!3m2!1sen!2sbd!4v1512245244040&1534-D83A_1933715A=862c7ef2fb108efa232bd30affc1eb1d7db205e5" height="300" width="800" frameborder="1" style="border-style: none; border-color: inherit; border-width: 0; float: none; text-align: center;" allowfullscreen="true"></iframe>
</div>
                
            
                
            <div class="auto-style8" style="padding-top:30px;">

                <h2 class="auto-style11">SOCIAL SITES</h2>
                <br />
                <br />

                <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/images/facebook.png" style="border-radius:25px;" CssClass="auto-style10"/>
                <span class="color"><span class="auto-style10">&nbsp;<a href="https://www.facebook.com/SportsShopOnline" style="text-decoration:none; color:#007ACC">facebook.com/SportsShopOnline</a><br />
                <br />
                <asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/images/twitter.png" style="border-radius:25px;"/>
                &nbsp;<a href="https://www.twitter.com/SportsShopOnline" style="text-decoration:none; color:#007ACC">twitter.com/SportsShopOnline</a><br />
                <br />
                <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" ImageUrl="~/images/instagram.png" style="border-radius:25px;"/>
                </span>&nbsp;<span class="auto-style10"><a href="https://www.instagram.com/SportsShopOnline" style="text-decoration:none; color:#007ACC">instagram.com/SportsShopOnline</a><br />
                <br />
                <asp:Image ID="Image4" runat="server" Height="30px" Width="30px" ImageUrl="~/images/linkedin.png" style="border-radius:25px;"/>
                    </span>&nbsp;<span class="auto-style10"><a href="https://www.linkedin.com/sports-shop-online" style="text-decoration:none; color:#007ACC">linkedin.com/sports-shop-online</a></span></span><br />
                <br />
                <br />
                <br />
                <strong><span class="auto-style19">Email :</span><span class="auto-style12"><br />
                </span></strong><span class="auto-style10"><a class="auto-style15"><span class="auto-style18">admin@sportshoponline.com</span></a></span><br />
                <br />
                <strong><span class="auto-style19">Phone No:</span><span class="auto-style12"><br />
                </span></strong><a class="auto-style15"><span class="auto-style17">+8801234567890</span></a><br />
                </div>
            </div>

     </div>            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
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
