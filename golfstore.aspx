<%@ Page Language="C#" AutoEventWireup="true" CodeFile="golfstore.aspx.cs" Inherits="golfstore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Golf Store</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" />
    <link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style5 {
            font-size: 9pt;
        }
        .auto-style6 {
            text-align: left;
            margin-left: 3%;
        }
    #search {text-align: right; width: 990px;}
        .auto-style7 {
            font-size: medium;
        }
        .auto-style9 {
            margin-top: 0px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .category{
            background-color:black;
            border:none;
            color: white;
            font-size: x-large;
            cursor:pointer;
            margin-left:30px;
        }
        .category:hover{
            border:none;
            color: red;
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
    <div id="header_img"> 
			<div class="slideshow-container">

<div class="mySlides fade">
  <img src="images/golf_banner.jpg" style="width:100%" />
</div>

<div class="mySlides fade">
  <img src="images/golf_banner(1).jpg" style="width:100%" />
</div>

<div class="mySlides fade">
  <img src="images/golf_banner(2).jpg" style="width:100%" />
</div>

</div>

<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 3000);
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

<div id="wrapper" style="background-image: url(images/back_basketball.jpg);
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">																															
		<div id="content_inside">
			<div id="main_block">
				<h2 style="padding-bottom: 20px; font-size: 32px; color: white" class="auto-style6">GOLF STORE</h2>
            <div>
                <div id="search">
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="172px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>&nbsp; <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Search" BorderStyle="Solid" style="color: #FFFFFF; font-weight: 700; padding: 3px;" CssClass="btnqq" BorderWidth="2px"/>

                </div>
            </div>
                <div id="div1" runat="server">    
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>"></asp:SqlDataSource>
                <strong>
                        <asp:Button ID="Category1" runat="server" CssClass="category" OnClick="div1_button"/>
                    </strong>
                            <asp:DataList ID="DataList1" runat="server" BackColor="Transparent" BorderWidth="0px" CellPadding="15" CellSpacing="30" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal" Width="1020px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" CssClass="auto-style10">                   
                        <ItemStyle BackColor="#A2DD89" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style1">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;"><asp:Image ID="ImageLabel" runat="server" Height="150px" ImageUrl='<%# Eval("image")%>' Width="150px" style="border-radius:20px; -webkit-border-radius: 20px; -moz-border-radius: 20px;"/>
                                </a>
                                <br />
                                <span><span class="auto-style5">
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                <asp:Label ID="product_nameLabel" runat="server" ForeColor="#C1156E" Text='<%# Eval("product_name") %>' />
                                <br />
                                <asp:Label ID="brandLabel" runat="server" ForeColor="#1A0DAB" Text='<%# Eval("brand") %>' />
                                <br />
                                ৳<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Available:
                                <asp:Label ID="availableLabel" runat="server" ForeColor="Green" Text='<%# Eval("available") %>' />
                                </span></span>
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p id="view" style="border-style: none; padding:5px; border-color: inherit; border-width: 0px; cursor:pointer; width: 108px; margin-top:10px; align-self:center; margin-left:28px;" class="btnqq"> View Product</p>
                                </a>
                                <br />
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList></div>
                <div id="div2" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>"></asp:SqlDataSource>
                        <strong>
                        <asp:Button ID="Category2" runat="server" CssClass="category" OnClick="div2_button"/>
                    </strong>
                    <asp:DataList ID="DataList2" runat="server" BackColor="Transparent" BorderColor="Maroon" BorderStyle="Ridge" BorderWidth="0px" CellPadding="15" CellSpacing="30" DataSourceID="SqlDataSource2" RepeatColumns="5" RepeatDirection="Horizontal" Width="1020px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">                   
                        <ItemStyle BackColor="#A2DD89" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style1">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;"><asp:Image ID="ImageLabel" runat="server" Height="150px" ImageUrl='<%# Eval("image")%>' Width="150px" style="border-radius:20px; -webkit-border-radius: 20px; -moz-border-radius: 20px;"/>
                                </a>
                                <br />
                                <span><span class="auto-style5">
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                <asp:Label ID="product_nameLabel" runat="server" ForeColor="#C1156E" Text='<%# Eval("product_name") %>' />
                                <br />
                                <asp:Label ID="brandLabel" runat="server" ForeColor="#1A0DAB" Text='<%# Eval("brand") %>' />
                                <br />
                                ৳<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Available:
                                <asp:Label ID="availableLabel" runat="server" ForeColor="Green" Text='<%# Eval("available") %>' />
                                </span></span>
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p id="view" style="border-style: none; padding:5px; border-color: inherit; border-width: 0px; cursor:pointer; width: 108px; margin-top:10px; align-self:center; margin-left:28px;" class="btnqq"> View Product</p>
                                </a>
                                <br />
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList>
                </div>
                <div id="div3" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>"></asp:SqlDataSource>
                        <strong>
                        <asp:Button ID="Category3" runat="server" CssClass="category" OnClick="div3_button"/>
                    </strong>
                    <asp:DataList ID="DataList3" runat="server" BackColor="Transparent" BorderColor="Maroon" BorderStyle="Ridge" BorderWidth="0px" CellPadding="10" CellSpacing="30" DataSourceID="SqlDataSource3" RepeatColumns="5" RepeatDirection="Horizontal" Width="1020px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" CssClass="auto-style9">                       
                        <ItemStyle BackColor="#A2DD89" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style1">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;"><asp:Image ID="ImageLabel" runat="server" Height="150px" ImageUrl='<%# Eval("image")%>' Width="150px" style="border-radius:20px; -webkit-border-radius: 20px; -moz-border-radius: 20px;"/>
                                </a>
                                <br />
                                <span><span class="auto-style5">
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                <asp:Label ID="product_nameLabel" runat="server" ForeColor="#C1156E" Text='<%# Eval("product_name") %>' />
                                <br />
                                <asp:Label ID="brandLabel" runat="server" ForeColor="#1A0DAB" Text='<%# Eval("brand") %>' />
                                <br />
                                ৳<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Available:
                                <asp:Label ID="availableLabel" runat="server" ForeColor="Green" Text='<%# Eval("available") %>' />
                                </span></span>
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p id="view" style="border-style: none; padding:5px; border-color: inherit; border-width: 0px; cursor:pointer; width: 108px; margin-top:10px; align-self:center; margin-left:28px;" class="btnqq"> View Product</p>
                                </a>
                                <br />
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList>
                </div>
                <div id="div4" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>"></asp:SqlDataSource>
                        <strong>
                        <asp:Button ID="Category4" runat="server" CssClass="category" OnClick="div4_button"/>
                    </strong>
                    <asp:DataList ID="DataList4" runat="server" BackColor="Transparent" BorderColor="Maroon" BorderStyle="Ridge" BorderWidth="0px" CellPadding="15" CellSpacing="30" DataSourceID="SqlDataSource4" RepeatColumns="5" RepeatDirection="Horizontal" Width="1020px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">                   
                        <ItemStyle BackColor="#A2DD89" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style1">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;"><asp:Image ID="ImageLabel" runat="server" Height="150px" ImageUrl='<%# Eval("image")%>' Width="150px" style="border-radius:20px; -webkit-border-radius: 20px; -moz-border-radius: 20px;"/>
                                </a>
                                <br />
                                <span><span class="auto-style5">
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                <asp:Label ID="product_nameLabel" runat="server" ForeColor="#C1156E" Text='<%# Eval("product_name") %>' />
                                <br />
                                <asp:Label ID="brandLabel" runat="server" ForeColor="#1A0DAB" Text='<%# Eval("brand") %>' />
                                <br />
                                ৳<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Available:
                                <asp:Label ID="availableLabel" runat="server" ForeColor="Green" Text='<%# Eval("available") %>' />
                                </span></span>
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p id="view" style="border-style: none; padding:5px; border-color: inherit; border-width: 0px; cursor:pointer; width: 108px; margin-top:10px; align-self:center; margin-left:28px;" class="btnqq"> View Product</p>
                                </a>
                                <br />
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList>
                </div>
                                <div id="div5" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>"></asp:SqlDataSource>
                        <strong>
                        <asp:Button ID="Category5" runat="server" CssClass="category" OnClick="div5_button"/>
                    </strong>
                    <asp:DataList ID="DataList5" runat="server" BackColor="Transparent" BorderColor="Maroon" BorderStyle="Ridge" BorderWidth="0px" CellPadding="15" CellSpacing="30" DataSourceID="SqlDataSource4" RepeatColumns="5" RepeatDirection="Horizontal" Width="1020px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">                   
                        <ItemStyle BackColor="#A2DD89" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style1">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;"><asp:Image ID="ImageLabel" runat="server" Height="150px" ImageUrl='<%# Eval("image")%>' Width="150px" style="border-radius:20px; -webkit-border-radius: 20px; -moz-border-radius: 20px;"/>
                                </a>
                                <br />
                                <span><span class="auto-style5">
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                <asp:Label ID="product_nameLabel" runat="server" ForeColor="#C1156E" Text='<%# Eval("product_name") %>' />
                                <br />
                                <asp:Label ID="brandLabel" runat="server" ForeColor="#1A0DAB" Text='<%# Eval("brand") %>' />
                                <br />
                                ৳<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Available:
                                <asp:Label ID="availableLabel" runat="server" ForeColor="Green" Text='<%# Eval("available") %>' />
                                </span></span>
                                &nbsp;<a href="javascript:Openpopup('view.aspx?PId=<%# Eval("prouct_id") %>')" style="text-decoration:none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p id="view" style="border-style: none; padding:5px; border-color: inherit; border-width: 0px; cursor:pointer; width: 108px; margin-top:10px; align-self:center; margin-left:28px;" class="btnqq"> View Product</p>
                                </a>
                                <br />
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList>
                </div>
</div>
				
				<br />
				
				</div>
			</div>
<script type="text/javascript">function Openpopup(popurl) {

    winpops = window.open(popurl, "");
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
                <li> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </li>
            </ul>                                                     											
	</div>
   </form> 
    </div>
</body>
</html>