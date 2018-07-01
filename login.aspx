<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Log In</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <style type="text/css">
        .auto-style1 {
            width: 90px;
            font-size: small;
            font-weight: bold;
            color: #000000;
            text-align: center;
        }
        .auto-style4 {
            width: 483px;
            font-size: medium;
        }
        .auto-style6 {
            text-align: center;
            margin-left: 0%;
            width: 483px;
            height: 25px;
        }
        .auto-style8 {
            font-size: 14px;
            color: #FF3300;
        }
        .auto-style9 {
            width: 483px;
            text-align: center;
        }
        .auto-style10 {
            width: 62%;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 90px;
            font-size: 14px;
            font-weight: bold;
            color: #000000;
            text-align: left;
        }
        .auto-style15 {
            text-decoration: none;
        }
        .auto-style16 {
            margin-left: 13px;
            font-size: 14px;
        }
        .auto-style17 {
            color: black;
            font-size: 14px;
        }
        .auto-style18 {
            margin-left: 20%;
            color: black;
        }
        .auto-style19 {
            margin-left: 5px;
            width: 90px;
            height: 25px;
        }
        .auto-style22 {
            width: 90px;
            height: 4px;
        }
        .auto-style23 {
            width: 483px;
            font-size: medium;
            height: 4px;
        }
        .auto-style24 {
            width: 90px;
            font-size: small;
            font-weight: bold;
            color: #000000;
            text-align: center;
            height: 25px;
        }
        .auto-style25 {
            width: 483px;
            text-align: center;
            height: 25px;
        }
        .auto-style26 {
            width: 90px;
            height: 3px;
        }
        .auto-style27 {
            width: 483px;
            font-size: medium;
            height: 3px;
        }
    #search {text-align: right; width: 990px;}
        .auto-style28 {
            font-size: x-large;
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
        <asp:Button CssClass="menubtn" runat="server" Text="Contacts"></asp:Button>
  
      </ul>
    </div>
  </div>

<div id="wrapper" style="background-image:url(images/backg.jpg);
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;" >																															
		<div id="content_inside" class="auto-style11">
			<div id="main_block" style="margin-top:100px;">
                <p style="padding-bottom: 20px; font-size: 32px; width: 639px; height: 85px;" class="auto-style18">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/login_avatar.png" Height="85px" Width="85px" Style="bottom:15px;"/>
                </p>
				<div style="width: 939px"><h9 style="padding-bottom: 20px; font-size: 32px; width: 644px; height: 38px; top:10px;" class="auto-style18"><strong><span class="auto-style28">LOG IN</span></strong></h9></div>
                <div style="margin-left:20%; margin-bottom:120px">
                             
<table runat="server" class="auto-style10">
  <tr>
    <td class="auto-style12">Email</td>
    <td class="auto-style4">
        <asp:TextBox ID="emailbox" runat="server" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" Width="280px" Height="30px" BorderColor="#CCCCCC" BorderStyle="Inset"></asp:TextBox>
      </td> 
        
  </tr>
    <tr>
    <td class="auto-style26"></td>
    <td class="auto-style27"></td> 
    </tr>
  <tr>
    <td class="auto-style12">Password</td>
    <td class="auto-style4">
        <asp:TextBox ID="passbox" runat="server" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" Width="280px" Height="30px" TextMode="Password" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset"></asp:TextBox>
      </td> 
        
  </tr>
  <tr>
    <td class="auto-style22"></td>
    <td class="auto-style23"></td> 
  </tr>
  <tr>
    <td class="auto-style1">&nbsp;</td>
    <td class="auto-style9">
        <asp:Button ID="Button1" runat="server" CssClass="btnqq" Text="LOG IN" OnClick="Login_click" Width="131px"  BorderStyle="None" Height="26px" />
        <asp:Button ID="Button2" runat="server" CssClass="btnqq" Text="RESET" OnClick="Reset_Click" Width="131px"  BorderStyle="None" Height="26px" />
      </td> 
  </tr>
      <tr>
    <td class="auto-style24"></td>
    <td class="auto-style25">
        <strong>
        <asp:Label ID="msg_lbl" runat="server" CssClass="auto-style8"></asp:Label>
        </strong>
      </td>     
  </tr>
    <tr> <td class="auto-style19"></td>
    <td class="auto-style6">
        <span class="auto-style17"><strong>Not registered yet?</strong></span><span class="auto-style16"><a href="signup.aspx" class="auto-style15"><strong>SIGN UP</strong></a></span> <span class="auto-style17"><strong>here.</strong></span></td> 
    </tr>
</table>

                    <br />

            </div>
</div>
				<br />
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
                <li> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </li>
            </ul>                                                     											
	</div>
        </form> 
    </div>
</body>
</html>