<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin : Home</title>
    <link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <link rel="stylesheet" type="text/css" href="~/css/admin_style.css" />
    <style type="text/css">
        .admbtn {
  border: none;
  outline: none;
  width:12.33%;
  text-align:center;
  padding:16px 0 16px 0px;
  display:inline;
  background-color:orange;
  font-size: 15px;
  cursor: pointer;
  border-radius:10px; 
}
        .auto-style7 {
            height: 8px;
            width: 108px;
        }
        .auto-style9 {
            left: 31px;
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
        .auto-style35 {            height: 33px;
        }
        .auto-style37 {
            text-decoration: underline;
        }
        .auto-style38 {
            margin-left: 60px;
            margin-top: 10px;
        }
        .auto-style39 {
            width: 325px;
            display:inline-block;
            background-color:#C2D3EF;
            margin-bottom:5px;
            padding-top:10px;
        }
        .auto-style40 {
            color: #FF0000;
        }
        .auto-style41 {
            font-size: large;
        }
        .auto-style42 {
            color: black;
            font-size: large;
        }
        .auto-style43 {
            width: 325px;
            height: 180px;
            display: inline-block;
        }
        .auto-style44 {
            width: 325px;
            display: inline-block;
            background-color: #C2D3EF;
            margin-bottom: 5px;
            padding-top: 10px;
            height: 120px;
        }
        .auto-style45 {
            font-size: xx-small;
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
 
   <div id="wrapper" style="background-image:url(images/admin_back.jpg);
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    margin-left:-20px;">																															
		<div id="content_inside" class="auto-style9">
			<div id="main_block" class="auto-style35">
                	<h2 class="auto-style31"><strong>&nbsp;ADMIN</strong></h2>
                </div>
            <div>
      <ul id="menu0" style="top:40px">
       <asp:Button Class="admbtn" runat="server" Text="Home" PostBackUrl="~/admin.aspx" ID="Button1"></asp:Button>
       <asp:Button Class="admbtn" runat="server" Text="Users" PostBackUrl="~/admin_user.aspx" ID="Button2"></asp:Button>
       <asp:Button Class="admbtn" runat="server" Text="Products" PostBackUrl="~/admin_product.aspx" ID="Button3"></asp:Button>
       <asp:Button Class="admbtn" runat="server" Text="Orders" PostBackUrl="~/admin_order.aspx" ID="Button4"></asp:Button>
       <asp:Button Class="admbtn" runat="server" Text="News" PostBackUrl="~/admin_news.aspx" ID="Button5"></asp:Button>     
       <asp:Button Class="admbtn" runat="server" Text="Log Out" ID="Button12" OnClick="logout"></asp:Button>
     </ul>
            </div>
       <div style="margin-top:120px;">
           <span class="auto-style42"><strong>⚫
           Number of users :</strong></span><span class="auto-style40"> </span> <strong> <asp:Label ID="Lab1" runat="server" CssClass="auto-style40"></asp:Label>
           </strong>
       </div>
      <div style="margin-top:60px;">
           <strong><span class="auto-style41">⚫
           Number of products :</span> <asp:Label ID="Lab2" runat="server" CssClass="auto-style40"></asp:Label> </strong>
           <br />
           <br />
           <div class="auto-style39">
               <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <span class="auto-style37">FOOTBALL STORE</span></strong><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" ></asp:SqlDataSource>
           <asp:DataList ID="DataList1" runat="server" CellPadding="0" DataSourceID="SqlDataSource1" RepeatColumns="1" Width="250px" CssClass="auto-style38" BackColor="#C2D3EF">
               <ItemTemplate>
                   <asp:Table runat="server" BackColor="#C2D3EF"><asp:TableRow><asp:TableCell style="width:150px;">
                   <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /></asp:TableCell><asp:TableCell>
                   <asp:Label ID="availableLabel" runat="server" Text='<%# Eval("Total") %>' /></asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList><br />
           </div>
                     <div class="auto-style39"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style37">CRICKET STORE</span></strong><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" ></asp:SqlDataSource>
           <asp:DataList ID="DataList2" runat="server" CellPadding="0" DataSourceID="SqlDataSource2" RepeatColumns="1" Width="250px" CssClass="auto-style38">
               <ItemTemplate>
                   <asp:Table runat="server" BackColor="#C2D3EF"><asp:TableRow><asp:TableCell style="width:150px;">
                   <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /></asp:TableCell><asp:TableCell>
                   <asp:Label ID="availableLabel" runat="server" Text='<%# Eval("Total") %>' /></asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList><br />
           </div>
                     <div class="auto-style39">
               <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style37">TENNIS STORE</span></strong><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" ></asp:SqlDataSource>
           <asp:DataList ID="DataList3" runat="server" CellPadding="0" DataSourceID="SqlDataSource3" RepeatColumns="1" Width="250px" CssClass="auto-style38">
               <ItemTemplate>
                   <asp:Table runat="server" BackColor="#C2D3EF"><asp:TableRow><asp:TableCell style="width:150px;">
                   <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /></asp:TableCell><asp:TableCell>
                   <asp:Label ID="availableLabel" runat="server" Text='<%# Eval("Total") %>' /></asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList><br />
           </div>
                     <div class="auto-style39">
               <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style37">BASKETBALL STORE</span></strong><asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" ></asp:SqlDataSource>
           <asp:DataList ID="DataList4" runat="server" CellPadding="0" DataSourceID="SqlDataSource4" RepeatColumns="1" Width="250px" CssClass="auto-style38">
               <ItemTemplate>
                   <asp:Table runat="server"><asp:TableRow><asp:TableCell style="width:150px;">
                   <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /></asp:TableCell><asp:TableCell>
                   <asp:Label ID="availableLabel" runat="server" Text='<%# Eval("Total") %>' /></asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList><br />
           </div>
                     <div class="auto-style39">
               <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style37">BADMINTON STORE</span></strong><asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" ></asp:SqlDataSource>
           <asp:DataList ID="DataList5" runat="server" CellPadding="0" DataSourceID="SqlDataSource5" RepeatColumns="1" Width="250px" CssClass="auto-style38">
               <ItemTemplate>
                   <asp:Table runat="server"><asp:TableRow><asp:TableCell style="width:150px;">
                   <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /></asp:TableCell><asp:TableCell>
                   <asp:Label ID="availableLabel" runat="server" Text='<%# Eval("Total") %>' /></asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList><br />
           </div>
                     <div class="auto-style39">
               <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style37">GOLF STORE</span></strong><asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" ></asp:SqlDataSource>
           <asp:DataList ID="DataList6" runat="server" CellPadding="0" DataSourceID="SqlDataSource6" RepeatColumns="1" Width="250px" CssClass="auto-style38">
               <ItemTemplate>
                   <asp:Table runat="server"><asp:TableRow><asp:TableCell style="width:150px;">
                   <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /></asp:TableCell><asp:TableCell>
                   <asp:Label ID="availableLabel" runat="server" Text='<%# Eval("Total") %>' /></asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList><br />
           </div>
                     <div class="auto-style39">
               <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style37">ATHLETICS STORE</span></strong><asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" ></asp:SqlDataSource>
           <asp:DataList ID="DataList7" runat="server" CellPadding="0" DataSourceID="SqlDataSource7" RepeatColumns="1" Width="250px" CssClass="auto-style38">
               <ItemTemplate>
                   <asp:Table runat="server"><asp:TableRow><asp:TableCell style="width:150px;">
                   <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /></asp:TableCell><asp:TableCell>
                   <asp:Label ID="availableLabel" runat="server" Text='<%# Eval("Total") %>' /></asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList><br />
           </div>
           </div>
            <div style="margin-top:60px;" >
           <strong><span class="auto-style41">⚫ Number of orders :</span></strong> <strong><asp:Label ID="Lab3" runat="server" CssClass="auto-style40"></asp:Label><br /><span class="auto-style45"> </span><br /></strong>
                <div class="auto-style44"><asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" ></asp:SqlDataSource><div class="auto-style43"><asp:DataList ID="DataList8" runat="server" CellPadding="0" DataSourceID="SqlDataSource8" RepeatColumns="1" Width="250px" CssClass="auto-style38"><ItemTemplate>
                   <asp:Table runat="server"><asp:TableRow><asp:TableCell style="width:150px;">
                   <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("status") %>' /></asp:TableCell><asp:TableCell>
                   <asp:Label ID="availableLabel" runat="server" Text='<%# Eval("Total") %>' /></asp:TableCell></asp:TableRow></asp:Table></ItemTemplate></asp:DataList>     </div></div></div></div><br /><br /></div>
              
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

