<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Sports Shop Online</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: justify;
        }
        .auto-style2 {
            width: 327px;
            background-color: #000000;
        }
        .news a{text-decoration:none}
        .news a:hover{text-decoration:none; color:red; font-weight: 700;}
    </style>
</head>
<body>
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
		<div id="header_img"> <div class="slideshow-container">

<div class="mySlides fade">
  <img src="images/homepage.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <img src="images/homepage_2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <img src="images/homepage_3.jpg" style="width:100%">
</div>

</div>

<div style="text-align:center">
  <span class="change"></span> 
  <span class="change"></span> 
  <span class="change"></span> 
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
      <ul id="menu">
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

	<div id="wrapper" style="background-image: url(images/back.jpg);
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">																		
		<div id="content_inside">
            <div>
                <marquee width="90%" direction="left" height="30%" style="color:white; background-color:black; border-style:solid; border-width:1px; border-color:white; padding:5px; margin-bottom:15px;">
    <strong>Welcome to Sports Shop Online!!!          Shop high quality sports products with reasonable prices!</strong></marquee>
            </div>
			<div id="main_block">
				<div class="about">
					<h5>Shop Online With Us</h5>
					<p style="font-size: 12px" class="auto-style1">Welcome! Sports Shop Online is one of the Internet's oldest and most popular sites for finding sports and recreation products and services. We continue to gather awards for providing an excellent, user friendly method to bring suppliers of Sports products together with buyers. Every day thousands of people use Sports Shop Online to find sports product information, to get directions to Sport Companies on and off the Web, to locate jobs within the Sports and Recreation Industries, and to buy products directly online in a secure environment, safe in the knowledge that they are dealing with a high quality, established web site. </p>
					<a href="aboutus.aspx" style="font-size: 13px;">More info...</a>
				</div>
				<div class="news">
					<h5>News</h5>
					<p style="font-size: 12px; text-align: justify;">1. ManU Home kits of 2018/19. <br/> 2. World Cup 2018 kits of 2018/19. <br/> 3. Evonne Goolagang Rackets. <br/> 4. Duora Z Strike Rackets. <br/>  5. Kookaburra cricket bats of 8 brands. <br/> <a href="news.aspx" style="font-size: 13px;">More info...</a> </p>
				    <br />
				</div>
				<div id="Div1">
      <div id="Div2">
        <h2 style="padding: 10px; font-size: 32px; color: white; margin-left: 3%; border-style:solid; border-color:white; border-width:2px;" class="auto-style2">VISIT OUR STORES</h2>

<div class="row">
   <div class="columnhome 1">
    <div class="contenthome" style="border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;">
      <a href="footballstore.aspx"><img src="images/football.png" alt="1" style="width:280px; height: 200px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"/></a>
    </div>
         <a href="footballstore.aspx"  style="text-decoration:none;"><div id="namestore">VISIT FOOTBALL STORE</div></a>
  </div>
  <div class="columnhome 1">
    <div class="contenthome" style="border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;">
      <a href="cricketstore.aspx"><img src="images/cricket.png" alt="1" style="width:280px; height: 200px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"/></a>
    </div>
        <a href="cricketstore.aspx"  style="text-decoration:none;"><div id="namestore">VISIT CRICKET STORE</div></a>
  </div>
  <div class="columnhome 1">
    <div class="contenthome" style="border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;">
      <a href="tennisstore.aspx"><img src="images/tennis.png" alt="1" style="width:280px; height: 200px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"/></a>
    </div>
        <a href="tennisstore.aspx"  style="text-decoration:none;"><div id="namestore">VISIT TENNIS STORE</div></a>
  </div>
  <div class="columnhome 1">
    <div class="contenthome" style="border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;">
      <a href="basketballstore.aspx"><img src="images/basketball.png" alt="1" style="width:280px; height: 200px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"/></a>
    </div>
        <a href="basketballstore.aspx"  style="text-decoration:none;"><div id="namestore">VISIT BASKETBALL STORE</div></a>
  </div>
  <div class="columnhome 1">
    <div class="contenthome" style="border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;">
      <a href="badmintonstore.aspx"><img src="images/badminton.png" alt="1" style="width:280px; height: 200px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"/></a>
    </div>
        <a href="badmintonstore.aspx"  style="text-decoration:none;"><div id="namestore">VISIT BADMINTON STORE</div></a>
  </div>
  <div class="columnhome 1">
    <div class="contenthome" style="border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;">
      <a href="golfstore.aspx"><img src="images/golf.png" alt="1" style="width:280px; height: 200px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"/></a>
    </div>
        <a href="golfstore.aspx"  style="text-decoration:none;"><div id="namestore">VISIT GOLF STORE</div></a>
  </div>
  <div class="columnhome 1">
    <div class="contenthome" style="border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;">
      <a href="athleticsstore.aspx"><img src="images/athletics.png" alt="1" style="width:280px; height: 200px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"/></a>
    </div>
       <a href="athleticsstore.aspx"  style="text-decoration:none;"><div id="namestore">VISIT ATHLETICS STORE</div></a>
  </div>

			</div>
		</div>
	</div>
</div>
</div>
</div>
		<script type="text/javascript">
		    filterSelection("1")
		    function filterSelection(c) {
		        var x, i;
		        x = document.getElementsByClassName("columnhome");
		        for (i = 0; i < x.length; i++) {
		            w3RemoveClass(x[i], "show");
		            if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
		        }
		    }

		    
		    function w3AddClass(element, name) {
		        var i, arr1, arr2;
		        arr1 = element.className.split(" ");
		        arr2 = name.split(" ");
		        for (i = 0; i < arr2.length; i++) {
		            if (arr1.indexOf(arr2[i]) == -1) {
		                element.className += " " + arr2[i];
		            }
		        }
		    }

		    function w3RemoveClass(element, name) {
		        var i, arr1, arr2;
		        arr1 = element.className.split(" ");
		        arr2 = name.split(" ");
		        for (i = 0; i < arr2.length; i++) {
		            while (arr1.indexOf(arr2[i]) > -1) {
		                arr1.splice(arr1.indexOf(arr2[i]), 1);
		            }
		        }
		        element.className = arr1.join(" ");
		    }

		</script>
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
                <li> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </li>
            </ul>                                                     											
	</div></form>
</body>
</html>