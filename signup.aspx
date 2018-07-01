<%@ page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <style type="text/css">
        .auto-style1 {
            width: 258px;
            font-weight: 700;
            font-size: small;
            text-align: left;
        }
        .auto-style3 {
            width: 258px;
            font-size: small;
            color: #000000;
            font-weight: bold;
        }
        .auto-style4 {
            font-weight: bold;
            text-align: center;
            height: 21px;
        }
        .auto-style18 {
            font-size: small;
            font-weight: 700;
            color: #009900;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style19 {
            font-size: small;
            text-align: center;
        }
        .auto-style20 {
            text-decoration: none;
        }
        .auto-style21 {
            width: 258px;
            font-weight: bold;
            font-size: small;
            text-align: left;
            color: #000000;
        }
        .auto-style22 {
            font-size: small;
            font-weight: 700;
            color: #000000;
        }
        .auto-style25 {
            width: 258px;
            font-weight: 700;
            font-size: small;
            text-align: left;
            height: 21px;
        }
        .auto-style26 {
            width: 258px;
            font-weight: 700;
            font-size: small;
            text-align: left;
            height: 3px;
        }
        .auto-style27 {
            font-weight: bold;
            text-align: center;
            height: 3px;
        }
    #search {text-align: right; width: 990px;}</style>
</head>

<body>  
    <div>
        <form id="form1" runat="server">
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
    background-size: cover;">																															
		<div id="content_inside">
			<div id="main_block">
				<p style="padding-bottom: 20px; font-size: 32px; width: 1162px; height: 67px; text-align: center;" class="auto-style18">
                    &nbsp;</p>
                <p style="padding-bottom: 20px; font-size: 32px; width: 1162px; height: 67px; text-align: center;" class="auto-style18">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/reg_avatar.png" Height="62px" Width="70px"/>
                </p>
				<h2 style="padding-bottom: 20px; font-size: 32px; width: 1163px; height: 38px; text-align: center;" class="auto-style22">REGISTER</h2>

                <div style="margin-left:20%;">
                             
<table runat="server" class="auto-style17">
  <tr>
    <td class="auto-style3"><strong>User Name</strong></td>
    <td class="auto-style8">
        <asp:TextBox ID="TextBox1" runat="server" Width="280px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
  </tr>
    <tr>
    <td class="auto-style26"></td>
    <td class="auto-style27">
      </td> 
    </tr>
  <tr>
    <td class="auto-style21">Email</td>
    <td class="auto-style8">
        <asp:TextBox ID="TextBox2" runat="server" Width="280px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
  </tr>
                          <tr>
    <td class="auto-style26"></td>
    <td class="auto-style27">
      </td> 
    </tr>
                          <tr>
    <td class="auto-style21">Password</td>
    <td class="auto-style8">
        <asp:TextBox ID="TextBox3" runat="server" Width="280px" TextMode="Password" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
  </tr>
    <tr>
    <td class="auto-style26"></td>
    <td class="auto-style27">
      </td> 
    </tr>
  <tr>
    <td class="auto-style21">Confirm Password</td>
    <td class="auto-style8">
        <asp:TextBox ID="TextBox4" runat="server" Width="280px" TextMode="Password" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
  </tr>
  <tr>
    <td class="auto-style25"></td>
    <td class="auto-style4">
        <asp:Label ID="Label1" runat="server" CssClass="auto-style14" style="font-size: small; color: #FF0000"></asp:Label>
      </td> 
  </tr>
  <tr>
    <td class="auto-style1"></td>
    <td class="auto-style8">
        <asp:Button ID="Button1" runat="server"  Text="REGISTER" OnClick="Submit_Click" Width="131px" CssClass="btnqq" BorderStyle="None" Height="30px" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="RESET" OnClick="Reset_Click" Width="123px" CssClass="btnqq" BorderStyle="None" Height="30px" />
      &nbsp;<br />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style18"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </td> 
  </tr>
   <tr> <td class="auto-style1">&nbsp;</td>
    <td class="auto-style19">
        <span class="color"><strong>Already registered?</strong></span> <span class="auto-style5"><a href="login.aspx" class="auto-style20"><strong>LOG IN</strong></a></span> <span class="color"><strong style="text-align: center">here.<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </strong></span></td> 
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