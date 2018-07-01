<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News</title>
    	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
<style type="text/css">
        .auto-style9 {
            font-size: x-large;
            color: #000000;
        }
        .auto-style12 {
            font-size: 16px;
            color: #ff0000;
        }
        #search {text-align: right; width: 990px;}
    .auto-style15 {
        left: 0px;
        top: -1px;
    }
    .auto-style16 {
        height: auto;
    }
    .auto-style17 {
        color: black;
        text-align: center;
        font-size: xx-large;
        text-decoration: underline;
        width: 1034px;
        height: 59px;
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
    background-size: cover;
    margin-left:-20px;">																															
		<div id="content_inside" class="auto-style9">
			<div id="main_block" class="auto-style16">
                <h2 class="auto-style17">NEWS</h2>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>">
                    </asp:SqlDataSource>

                    <asp:DataList ID="DataList1" runat="server" BackColor="Transparent" BorderColor="Black" BorderStyle="Ridge" BorderWidth="0px" CellPadding="15" CellSpacing="30" DataSourceID="SqlDataSource1" RepeatColumns="1" Repeaasp:TableCellirection="Horizontal" Width="1020px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" GridLines="Both">                   
                        <ItemStyle BackColor="White" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style10">
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br /> 
                                <asp:Table runat="server" Width="1007px">
                                    <asp:TableRow>
                                <asp:TableCell Width="315px"><asp:Image ID="ImageLabel" runat="server" ImageUrl='<%# Eval("img")%>' Width="300px" /></asp:TableCell>
                                <asp:TableCell Width="690px"><span><asp:Label ID="sportsLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("title") %>' /></asp:TableCell></asp:TableRow></asp:Table><br /></div>
                            <div id="desc">
                                <asp:Table runat="server" Width="1007px">
                                    <asp:TableRow>
                                        <asp:TableCell Width="1007px"><asp:Label ID="labDes" runat="server" Text='<%# Eval("descrip") %>' /></asp:TableCell></asp:TableRow>
                             </asp:Table>
                            </div>
                        </ItemTemplate><SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                                
                    </asp:DataList>
                <br /><br /><br /><br /></div>
            </div>
                </div>
    
        <div id="footer" class="auto-style15">
			<ul class="footer_menu">
				<li><span style="font-size: 11px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; ©SPORTS SHOP ONLINE<span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>&nbsp;&nbsp; <a href="home.aspx">Home</a>&nbsp;|&nbsp;</li>
				<li><a href="aboutus.aspx">About Us</a>&nbsp;|&nbsp;</li>
				<li><a href="news.aspx">News</a>&nbsp;|&nbsp;</li>
				<li><a href="login.aspx">My Account</a>&nbsp;|&nbsp;</li>
				<li><a href="contacts.aspx">Contacts</a><li id="top_icon2">
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
