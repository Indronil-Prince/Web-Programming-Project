<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Order</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <style type="text/css">
        .auto-style6 {
            text-align: justify;
            margin-left: 0%;
            font-size: 32px;
            color: white;
        }
        .auto-style7 {
            left: 10px;
            top: 9px;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style12 {
            font-size: small;
        }
        .auto-style13 {
            font-size: small;
            color: #000000;
        }
        .auto-style14 {
            text-align: right;
            width: 1019px;
        }
        .auto-style16 {
            font-size: medium;
            color: #000000;
        }
    #search {text-align: right; width: 990px;}
        .auto-style17 {
            text-align: center;
            margin-left: 0%;
            font-size: 32px;
            color: white;
        }
        .auto-style18 {
            font-size: large;
            width: 324px;
        }
        .auto-style20 {
            font-size: medium;
            color: #000000;
            width: 102px;
            text-align: left;
        }
        .auto-style21 {
            color: #000099;
            text-align: left;
            width: 648px;
        }
        .auto-style24 {
            width: 102px;
            height: 43px;
        }
        .auto-style25 {
            color: #000099;
            text-align: left;
            height: 43px;
        }
        .auto-style28 {
            width: 648px;
            height: 38px;
            text-align: left;
        }
        .auto-style32 {
            width: 324px;
            height: 5px;
        }
        .auto-style33 {
            color: black;
            text-align: left;
            height: 5px;
            width: 648px;
        }
        .auto-style34 {
            width: 102px;
            height: 3px;
        }
        .auto-style35 {
            color: black;
            text-align: left;
            height: 3px;
        }
        .auto-style36 {
            text-align: center;
            width: 1019px;
        }
        .auto-style37 {
            font-size: medium;
        }
        .auto-style38 {
            background-color: #F1F1F1;
        }
        .auto-style39 {
            text-align: right;
        }
        .auto-style40 {
            text-align: left;
            width: 1017px;
        }
        .auto-style41 {
            left: 11px;
            top: -4px;
            width: 99%;
        }
        .auto-style42 {
            text-decoration: underline;
        }
        .auto-style43 {
            font-size: 4px;
        }
        .auto-style44 {
            color: #000099;
            text-align: left;
            width: 648px;
            font-size: x-large;
        }
        .auto-style45 {
            font-size: medium;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style46 {
            background-color: #F1F1F1;
            color: red;
            font-size: medium;
        }
        .auto-style47 {
            color: #FF0000;
        }
        .auto-style48 {
            width: 500px;
            height: 112px;
            display:inline-block;
        }
        .auto-style49 {
            width: 500px;
            height: 112px;
            display:inline-block;
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
	 
        <div>
      <ul id="menu" style="top:120px;">
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
              
<div id="wrapper" style="background-image:url(images/user_back.jpg);
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">																															
		<div id="content_inside" class="auto-style41">
			<div id="main_block">
				<h2 style="padding-bottom: 20px; width: 1047px;" class="auto-style17"><span class="color">
                    Order ID : <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></span>
                </h2>
                <h2 style="padding-bottom: 20px; " class="auto-style6">
                    <asp:Label ID="Label6" runat="server" style="font-weight: 700; font-size: medium; color: #FF0000; text-align: center"></asp:Label>
                </h2>                
                <div>
                                <asp:Table id="table" runat="server" Width="1007px">
                                    <asp:TableRow>
                                <asp:TableCell Width="100px" Text=" Image" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="100px" Text="Sport" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="80px" Text="Category" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="180px" Text="Product Type" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="225px" Text="Product Name" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="100px" Text="Brand Name" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="40px" Text="Size" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="70px" Text="Unit Price" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="60px" Text="Amount" ForeColor="Black"></asp:TableCell>
                                <asp:TableCell Width="100px" Text="Total Price" ForeColor="Black"></asp:TableCell>
                                </asp:TableRow></asp:Table>
                </div>
            <div>
   
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
                                <asp:TableCell Width="100px"><asp:Image ID="ImageLabel" runat="server" Height="75px" ImageUrl='<%# Eval("image")%>' Width="75px" /></asp:TableCell>
                                <asp:TableCell Width="100px"><span><asp:Label ID="sportsLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("store") %>' /></asp:TableCell><asp:TableCell Width="80px"><span><asp:Label ID="categoryLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("category") %>' /></asp:TableCell><asp:TableCell Width="180px"><asp:Label ID="typeLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("type") %>' /></asp:TableCell><asp:TableCell Width="225px"><asp:Label ID="product_nameLabel" runat="server" ForeColor="#C1156E" Text='<%# Eval("product_name") %>' /></asp:TableCell><asp:TableCell Width="100px"><asp:Label ID="brandLabel" runat="server" ForeColor="#1A0DAB" Text='<%# Eval("brand") %>' /></asp:TableCell><asp:TableCell Width="40px"><asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>' /></asp:TableCell><asp:TableCell Width="70px"><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></asp:TableCell><asp:TableCell Width="40px"><asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' ForeColor="Green" style="color: #000000" /></asp:TableCell><asp:TableCell Width="100px"><asp:Label ID="TotalLabel" runat="server" CssClass="auto-style12"></asp:Label></asp:TableCell></asp:TableRow></asp:Table><br /></div></ItemTemplate><SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList>
                <div class="auto-style14">

                    <br /><asp:Label ID="Label8" runat="server"  CssClass="auto-style16"></asp:Label><asp:Label ID="Label9" runat="server" CssClass="auto-style16" style="margin-right:50px; font-weight: 700;">0</asp:Label><span class="color"><asp:Label ID="Label2" runat="server" CssClass="auto-style16">0</asp:Label></span><strong><span class="auto-style13"><br />
                    </span>
                    </strong>

                    <span class="color"><asp:Label ID="Label3" runat="server" CssClass="auto-style16">0</asp:Label></span><strong><span class="auto-style13"><br />
                    </span>
                    </strong>

                    <span class="color"><asp:Label ID="Label4" runat="server" CssClass="auto-style16">0</asp:Label></span><strong><br class="color" />
                    </strong><asp:Label ID="Label7" runat="server" Text="Label"  CssClass="auto-style16"></asp:Label><span class="color"><span><strong><asp:Label ID="Label5" runat="server" CssClass="auto-style16">0</asp:Label><br /></strong><br /><br /></span></span>
                    <asp:Button ID="Button2" runat="server" Text="Place Order" Width="150px" Height="35px" CssClass="btnqq" BorderWidth="0px" OnClick="place_order"/><br />
                    <strong><span class="auto-style12"><br /></span></strong><span class="auto-style12"></div>
                <div id="img0Block" runat="server" class="auto-style40" style="color:black"><span class="color">
                    <div class="auto-style48"><strong><span class="auto-style37"><span class="auto-style42">Order will be delivered to</span>: <br /></span></strong></span><strong><span class="auto-style43">  </span><span class="auto-style12"><span class="auto-style37"><br /><span class="color"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label><br /></span></span></span></strong><span class="auto-style12"><span class="auto-style37"><span class="color">Adress :<strong> <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label><br />

                      </strong>Phone No. :<strong> <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label><br /></strong></span></span></div>
                    <div class="auto-style49"><strong><span class="auto-style37"><span class="auto-style42">Order details</span>: <br /></span></strong></span><strong><span class="auto-style43">  </span><span class="auto-style45"></strong><br /><span class="auto-style37">Order status : <strong><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></strong><br /></span></span><span class="auto-style12"><span class="auto-style37"><span class="color">Ordered on :<strong> <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label><br />

                      </strong>Payment method :<strong> <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label><br /></strong></span></span></div>
                <asp:Image id="img0" runat="server" CssClass="auto-style39" Width="400px" style="margin-right:2px; margin-left:320px;"/></span></span>
                    <span class="auto-style12"></div>

            </div>
                <div id="adress" class="auto-style36" runat="server"><br />
                    <div style="margin-left:60px;" class="auto-style37"><table runat="server" class="auto-style17" align="left">
                        <tr>
    <td class="auto-style24"></td>
    <td class="auto-style25">      <strong>Address</strong></td></tr><tr>
    <td class="auto-style20"><strong>Name</strong><span class="auto-style47"><strong>*</strong></span></td><td class="auto-style8">
        <asp:TextBox ID="TextBox1" runat="server" Width="280px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" CssClass="auto-style38"></asp:TextBox></td></tr><tr>
    <td class="auto-style34"></td>
    <td class="auto-style35"></td> 
    </tr>
  <tr>
    <td class="auto-style20"><strong>Location<span class="auto-style47">*</span></strong></td><td class="auto-style8">
        <asp:TextBox ID="TextBox2" runat="server" Width="280px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" CssClass="auto-style38" ></asp:TextBox></td></tr><tr>
    <td class="auto-style34"></td>
    <td class="auto-style35"></td> 
    </tr>
                          <tr>
    <td class="auto-style20"><strong>District<span class="auto-style47">*</span></strong></td><td class="auto-style8">
        <asp:TextBox ID="TextBox3" runat="server" Width="280px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;" CssClass="auto-style38"></asp:TextBox></td></tr><tr>
    <td class="auto-style34"></td>
    <td class="auto-style35"></td> 
    </tr>
  <tr>
    <td class="auto-style20"><strong>Phone No<span class="auto-style47">*</span></strong></td><td class="auto-style8">
        <span class="auto-style45" 
         style="font-size:12.5px; padding-top:7.2px; padding-bottom:6px; padding-left:6px; border-style:inset; border-width:2px; border-bottom-left-radius:25px; border-top-left-radius:25px; border-top-color:#787878; border-left-color:#787878; border-bottom-color: #CCCCCC; border-right-style:none;">
              +88 </span><asp:TextBox ID="TextBox4" runat="server" Width="244px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Inset" Height="31px" style="padding-left:0px; border-bottom-left-radius:0px; border-top-left-radius:0px; border-top-right-radius:50px; border-bottom-right-radius:50px; border-left-style:none;" CssClass="auto-style38"></asp:TextBox></td></tr><tr>
    <td class="auto-style20"></td><td>
        <span class="auto-style16"></span><strong><asp:Label ID="invalid" runat="server" BackColor="Transparent" BorderColor="Red" style="padding-left:2px;" CssClass="auto-style46"></asp:Label><span class="auto-style12"><br /><asp:Label ID="invalid0" runat="server" BackColor="Transparent" BorderColor="Red" style="padding-left:2px;" CssClass="auto-style46"></asp:Label></strong></td></tr></table>&nbsp; <table id="tab" runat="server" class="auto-style17" align="center" style="margin-left:92px;"><tr>
    <td class="auto-style18"></td>
    <td class="auto-style21">          <strong>Payment Method</strong></td></tr><tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
                            </tr>
                    <tr>
    <td class="auto-style18"></td>
    <td class="auto-style28">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" onClick="pay" onSelectedIndexChanged="pay" style="color: #000000; font-size: medium"><asp:ListItem Value="1" Selected="True">  Cash on delivery</asp:ListItem><asp:ListItem Value="2">  Payment through bKash</asp:ListItem><asp:ListItem Value="4">  Payment through Rocket</asp:ListItem></asp:RadioButtonList></td></tr><tr>
    <td class="auto-style18"></td>
    <td class="auto-style28"><asp:Button ID="Button3" runat="server" Text="How to Pay" Width="133px" Height="25px" CssClass="btnqq" BorderWidth="0px" OnClick="pay"/></td> 
    </tr>
                          </table>
                        </div>
                    <strong><asp:Label ID="method" runat="server" CssClass="auto-style44"></asp:Label></strong><asp:Image id="img" runat="server" width="560" style="margin-left:480px;"/>
				<span class="color">
                    <br /></span><asp:Button ID="Button1" runat="server" Text="Confirm Order" Width="150px" Height="35px" CssClass="btnqq" BorderWidth="0px" OnClick="con_order"/>

                    <br /><br /><br /><br />

                </div>
</div>
				
				<br />
				
				</div>
			</div>	


<div id="footer">
			<ul class="footer_menu"> 
				<li><span style="font-size: 11px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; ©SPORTS SHOP ONLINELINE<span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>&nbsp;&nbsp; <a href="home.aspx">Home</a>&nbsp;|&nbsp;</li><li><a href="aboutus.aspx">About Us</a>&nbsp;|&nbsp;</li><li><a href="news.aspx">News</a>&nbsp;|&nbsp;</li><li><a href="login.aspx">My Account</a>&nbsp;|&nbsp;</li><li><a href="news.aspx">Contacts</a><li id="top_icon2">
                    <p style="color: white; font-size: 14px; font-weight: 700; width: 131px; height: 19px; text-align: center;">
                        Follow Us</p>&nbsp;<asp:Button runat="server" CssClass="iconbtn1" PostBackUrl="https://www.facebook.com"></asp:Button>
                    <asp:Button runat="server" CssClass="iconbtn2" PostBackUrl="https://www.twitter.com"></asp:Button>
                    <asp:Button runat="server" CssClass="iconbtn3" PostBackUrl="https://www.instagram.com"></asp:Button>
                    <asp:Button runat="server" CssClass="iconbtn4" PostBackUrl="https://www.linkedin.com"></asp:Button>
                    </li>
                </li>
                <li> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li></ul></div></form></div></body></html>