<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>About Us</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <style type="text/css">
        .auto-style8 {
            text-align: justify;
            width: 1029px;
            color: #FFFFFF;
        }
        .auto-style10 {
            text-align: justify;
            width: 1029px;
            font-size: x-large;
            color: #FF0000;
            text-decoration: underline;
        }
        .auto-style13 {
            text-align: justify;
            width: 1029px;
            color: #000000;
        }
        .auto-style14 {
            font-size: small;
            color: #000000;
        }
    #search {text-align: right; width: 990px;}
        .auto-style16 {
            font-size: x-large;
            color: #FF0000;
            text-decoration: underline;
        }
        .auto-style17 {
            font-size: medium;
            color: #000000;
        }
        .auto-style18 {
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style19 {
            font-size: medium;
        }
    </style>
</head>

<body>
    <div>
          <form runat="server">
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

<div id="wrapper" style="background-image:url(images/backg.jpg);
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">																															
		<div id="content_inside">
			<div id="main_block" class="auto-style8">
				<h2 class="auto-style16">Welcome!</h2>
                <span class="auto-style7">
                <div class="auto-style8">
<br class="color" /> <span class="auto-style17">Welcome! Sports 
                    </span> <span class="auto-style18"> <span class="color">Shop Online </span> 
                    </span> <span class="auto-style17">is one of the Internet's oldest and most popular sites for finding sports and recreation products and services. We continue to gather awards for providing an excellent, user friendly method to bring suppliers of Sports products together with buyers. Every day thousands of people use Sports Shop Online to find sports product information, to get directions to Sport Companies on and off the Web, to locate jobs within the Sports and Recreation Industries, and to buy products directly online in a secure environment, safe in the knowledge that they are dealing with a high quality, established web site. <br />
                    </span> <span class="auto-style14">
                    <br />
                    <br />
                    </span><br class="auto-style14" />
                </div>
<h2 class="auto-style10">Why we are special!</h2>
<br class="auto-style14" /> </span> <span class="auto-style19"><span class="color">Sports Shop Online is unique in the way it lets you choose how to look at products. You can view products and information the way that you want <br /> to see them, and not the way we want you to see them.
</span> 
                    </span> <span class="auto-style7"> <span class="auto-style18">
<p class="auto-style8"><span class="color">Products are grouped into 
                    Departments if you like to browse through a general category. If you know the name of the manufacturer, or publisher, of the item you are looking for, find them in the Supplier Directory. If you prefer to browse through all products related to a specific sport, enter through the Sports Directory. Or, if you know the item you want, go through the Item Directory. If you do not like Browsing and want to go directly to an item, use the search</span></span><span class="auto-style17"> tool conveniently located on the top of the menu bar on the left side of every page. If you can't find what you are looking for, please be certain to drop us an email or call us. We have access to tens of thousands of more products than we currently have displayed online, so chances are we have or can special order the items you want.</p>
                </span> <span class="auto-style18">
<p class="auto-style13">Save time and get what you want fast, or have fun and browse at your leisure. Serendipity can match you with the one of a kind gift for a friend, a newly released innovative product that will help you in your sport, or a one of a kind collectible that you will keep in your family for generations.</p>
<p class="auto-style8"><span class="color">Please let us know what you think by sending us an email</span></span><span class="auto-style7"><span class="auto-style17">. </span></span></p>
                <p class="auto-style13">&nbsp;</p>
                <p class="auto-style13">&nbsp;</p>
                <p class="auto-style13">&nbsp;</p>

<h2 class="auto-style16">Why our customers think we're special!</h2>
                <span class="color">
                <p style="height: 8px">&nbsp;</p>
                <ul class="auto-style19">
<li>⚫ Fast service and high expertise by your personal account manager</li>
<li>⚫ Free quotes, tailored to your wishes and needs</li>
<li>⚫ One contact person for business customers</li>
<li>⚫ Competitive prices</li>
</ul>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                </span>
                <p>
                    &nbsp;</p>
            </div>
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
