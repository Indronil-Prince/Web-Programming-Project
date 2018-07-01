<%@ Page Language="C#" AutoEventWireup="true" CodeFile="my_account.aspx.cs" Inherits="my_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Account</title>
    <link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <link rel="stylesheet" type="text/css" href="~/css/admin_style.css" />
    <style type="text/css">
        .auto-style7 {
            height: 8px;
            width: 108px;
        }
        .auto-style9 {
            left: 11px;
            top: -4px;
            height: 620px;
        }
        .auto-style31 {
            height: 10px;
            width: 184px;
            font-weight: normal;
            color: black;
            font-size: 24px;
            padding-bottom: 20px;
        }
        #search {text-align: right; width: 990px;}
        .auto-style35 {           
             height: 33px;
        }
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
        .auto-style36 {
            font-size: xx-small;
        }
        .auto-style37 {
            margin-top: 57px;
            height: 305px;
        }
        .auto-style38 {
            font-weight: bold;
            padding-left:10px;
            padding-right:10px;
            cursor:pointer;
        }
        .auto-style39 {
            text-decoration: underline;
            font-size: 18pt;
        }
        .auto-style40 {
            text-decoration: underline;
            font-size: 16pt;
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
 
   <div id="wrapper" style="background-image:url(../images/user_back.jpg);
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    margin-left:-20px;">																															
		<div id="content_inside" class="auto-style9">
			<div id="main_block" class="auto-style35">
                	<div><h2 class="auto-style31"><strong>&nbsp;MY ACCOUNT</strong></h2></div>
      <ul id="menu0" style="top:40px">
       <asp:Button CssClass="userbtn" runat="server" Text="Home" PostBackUrl="~/my_account.aspx" ID="Button1"></asp:Button>
       <asp:Button CssClass="userbtn" runat="server" Text="Cart" PostBackUrl="~/cart.aspx" ID="Button2"></asp:Button>
       <asp:Button CssClass="userbtn" runat="server" Text="Order History" PostBackUrl="~/order_history.aspx" ID="Button3"></asp:Button>
       <asp:Button CssClass="userbtn" runat="server" Text="Preferences" PostBackUrl="~/preferences.aspx" ID="Button4"></asp:Button>     
        <asp:Button CssClass="userbtn" runat="server" Text="Log Out" ID="Button12" OnClick="logout"></asp:Button>
     </ul>
            </div>
            <div style="margin-top:120px;">

                <strong><span class="auto-style40">USER INFORMATION</span><span class="auto-style39"><br />
                </span></strong>
                <br />

                User ID : <strong>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </strong>
                <br />
                <span class="auto-style36">&nbsp;</span><br />
                User Name : <strong>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </strong>
                <br />
                <span class="auto-style36">&nbsp;</span><br />
                Email : <strong>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </strong>
                <br />

            <div class="auto-style37">

                <span class="auto-style40"><strong>PASSWORD</strong></span><br />

                <asp:Label ID="Label4" runat="server" Style="margin-top:20px;" Text="Do you want to change your password?"></asp:Label>
                <br />
                <strong>
                <asp:Button ID="Button13" runat="server" BackColor="Black" BorderStyle="None" BorderWidth="0px" Style="margin-top:8px; margin-left:50px;" CssClass="auto-style38" ForeColor="White" Height="30px" Text="Change Password" OnClick="present_pass" />
                </strong><br />

                <asp:Label ID="Label5" runat="server" Text="Confirm your present password : "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" Width="280px" Height="30px" TextMode="Password" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset"></asp:TextBox>
                <strong>
                <asp:Button ID="Button14" runat="server"  BackColor="Black" BorderStyle="None" BorderWidth="0px" style="margin-left:4px;" CssClass="auto-style38" ForeColor="White" Height="30px" Text="Confirm" OnClick="change" />
                <br />

                <asp:Label ID="Label6" runat="server" Text="Changed Password :"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox2" runat="server" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" Width="280px" Height="30px" TextMode="Password" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset"></asp:TextBox>
&nbsp;&nbsp;<br />
                <span class="auto-style36">&nbsp; </span>
                <br />

                <asp:Label ID="Label7" runat="server" Text="Retype Password :" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" Width="280px" Height="30px" TextMode="Password" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <br />
                <br />

                <asp:Label ID="Label8" runat="server" Text="Your password will be changed. Do you want to confirm?" ForeColor="Red"></asp:Label>
                <br />
                <asp:Button ID="Button16" runat="server" BackColor="Black" Style="margin-top:8px;" BorderStyle="None" BorderWidth="0px" CssClass="auto-style38" ForeColor="White" Height="30px" Text="Confirm Password Change" OnClick="done" />
                <br />
                </strong>
                <br />

            </div>

            </div>
       </div><br /><br /></div>
              
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

