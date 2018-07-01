<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_history.aspx.cs" Inherits="order_history" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order History</title>
    <link rel="stylesheet" type="text/css" href="~/css/style.css" />
    <link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <link rel="stylesheet" type="text/css" href="~/css/admin_style.css" />
    <style type="text/css">
        .auto-style7 {
            height: 8px;
            width: 108px;
        }
        .auto-style9 {
            height: 409px;
            left: 11px;
            top: -4px;
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
        .auto-style34 {
            left: -111px;
            top: -1px;
            width: 108%;
        }
        .auto-style35 {
            height: 39px;
        }
        .auto-style36 {
            font-size: small;
        }
        .btn2
        {
            font-weight: 700; 
            color: #FFFFFF; 
            background-color: midnightblue;
            cursor: pointer;
        }
        .btn2:hover
        {
            font-weight: 700; 
            color: #FFFFFF; 
            background-color: red;
        }
        .auto-style37 {
            height: 347px;
            margin-left: 5px;
            text-align: center;
            width: 1062px;
        }
        .auto-style38 {
            font-size: large;
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
                	<h2 class="auto-style31"><strong>&nbsp;MY ACCOUNT</strong></h2>
      <ul id="menu0" style="top:40px" runat="server">
       <asp:Button Class="userbtn" runat="server" Text="Home" PostBackUrl="~/my_account.aspx" ID="Button1"></asp:Button>
       <asp:Button Class="userbtn" runat="server" Text="Cart" PostBackUrl="~/cart.aspx" ID="Button2"></asp:Button>
       <asp:Button Class="userbtn" runat="server" Text="Order History" PostBackUrl="~/order_history.aspx" ID="Button3"></asp:Button>
       <asp:Button Class="userbtn" runat="server" Text="Preferences" PostBackUrl="~/preferences.aspx" ID="Button4"></asp:Button>     
        <asp:Button Class="userbtn" runat="server" Text="Log Out" ID="Button12" OnClick="logout"></asp:Button>
     </ul>
            </div>
             <div id="div1" runat="server" style="margin-top:120px;">
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>"></asp:SqlDataSource>
                 <strong>
                 <asp:Table ID="t1" runat="server" Width="1020px" CssClass="auto-style36" BackColor="Black" ForeColor="White">
                                    <asp:TableRow>
                                <asp:TableCell Width="100px" style="padding-left:4px; padding-bottom:4px; padding-top:4px;">ORDER ID
                                </asp:TableCell><asp:TableCell Width="130px">DATE OF ORDER
                                </asp:TableCell><asp:TableCell Width="120px">STATUS</asp:TableCell>
                                </asp:TableRow></asp:Table>        
                 </strong>        
                 <asp:DataList ID="DataList1" runat="server" BackColor="Transparent" BorderColor="Black" BorderStyle="Ridge" BorderWidth="0px" CellPadding="15" CellSpacing="30" DataSourceID="SqlDataSource1" RepeatColumns="1" TableCellirection="Horizontal" Width="1020px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" GridLines="Both">                   
                        <ItemStyle BackColor="White" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style10">
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br /> 
                                <asp:Table runat="server" Width="1021px" GridLines="None">
                                    <asp:TableRow>
                                <asp:TableCell Width="100px" style="padding-left:3px;"><a href="javascript:Openpopup('order.aspx?Order_id=<%# Eval("order_id") %>&Status=Cofirmed')" style="text-decoration:none;"><asp:Label ID="idLabel" runat="server" Text='<%# Eval("order_id")%>' ForeColor="Red" /></>
                                </asp:TableCell><asp:TableCell Width="130px"><asp:Label ID="dateLabel" runat="server" Text='<%# Eval("OrderDate") %>' />
                                </asp:TableCell><asp:TableCell Width="120px"><asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' /></asp:TableCell></asp:TableRow></asp:Table><br /></div></ItemTemplate><SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList>

            <br /><br /><br /></div>
       </div>
                 <div class="auto-style37" id="div2" runat="server"><strong><asp:Label ID="none" runat="server" ForeColor="Red" CssClass="auto-style38"></asp:Label></strong></div><script type="text/javascript">function Openpopup(popurl) {

             winpops = window.open(popurl, "_self");
            }
       </script></div><div id="footer" class="auto-style34">
			<ul class="footer_menu">
				<li><span style="font-size: 11px; text-align: left;">&nbsp; ©SPORTS SHOP ONLINE<span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>&nbsp;&nbsp; <a href="home.aspx">Home</a>&nbsp;|&nbsp;</li>
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
