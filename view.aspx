<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Product Detail</title>
	<link rel="stylesheet" type="text/css" href="~/css/style.css" /><link rel="stylesheet" type="text/css" href="~/css/social.css" />
    <script>
function magnify(imgID, zoom) {
  var img, glass, w, h, bw;
  img = document.getElementById(imgID);
  /*create magnifier glass:*/
  glass = document.createElement("DIV");
  glass.setAttribute("class", "img-magnifier-glass");
  /*insert magnifier glass:*/
  img.parentElement.insertBefore(glass, img);
  /*set background properties for the magnifier glass:*/
  glass.style.backgroundImage = "url('" + img.src + "')";
  glass.style.backgroundRepeat = "no-repeat";
  glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
  bw = 3;
  w = glass.offsetWidth / 2;
  h = glass.offsetHeight / 2;
  /*execute a function when someone moves the magnifier glass over the image:*/
  glass.addEventListener("mousemove", moveMagnifier);
  img.addEventListener("mousemove", moveMagnifier);
  /*and also for touch screens:*/
  glass.addEventListener("touchmove", moveMagnifier);
  img.addEventListener("touchmove", moveMagnifier);
  function moveMagnifier(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    x = pos.x;
    y = pos.y;
    /*prevent the magnifier glass from being positioned outside the image:*/
    if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
    if (x < w / zoom) {x = w / zoom;}
    if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
    if (y < h / zoom) {y = h / zoom;}
    /*set the position of the magnifier glass:*/
    glass.style.left = (x - w) + "px";
    glass.style.top = (y - h) + "px";
    /*display what the magnifier glass "sees":*/
    glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: white;
        }
        .auto-style3 {
            color: white;
            font-size: large;
        }
        .auto-style4 {
            text-align: center;
            font-size: 32px;
            color: white;
            width: 1023px;
            height: 23px;
            margin-left: 8%;
        }
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            margin-left: 11%;
        }
        .auto-style8 {
            font-size: medium;
            color: #FF0909;
        }
        .auto-style9 {
            font-size: xx-small;
        }
        .auto-style10 {
            color: white;
            font-size: xx-small;
        }
        .auto-style11 {
            font-weight: normal;
        }
        .auto-style13 {
            font-weight: normal;
            font-size: medium;
        }
        #search {text-align: right; width: 990px;}

        * {box-sizing: border-box;}
.img-magnifier-container {
  position:relative;
            text-align: left;
        }
.img-magnifier-glass {
  position: absolute;
  border: 1px solid #000;
  border-radius: 50%;
  cursor: none;
  width: 200px;
  height: 200px;
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
</div>  

<div id="wrapper" style="background-color:black;
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    margin-left: -35px;">																															
		<div id="content_inside">
			<div id="main_block">
				<h2 style="padding-bottom: 20px; " class="auto-style4">PRODUCT DETAIL</h2>
                <p style="padding-bottom: 20px; " class="auto-style4">&nbsp;</p>
                 <div class="img-magnifier-container" style="margin-left:300px;">
                    <asp:Image id="myimage" runat="server" style="height:600px" />
                </div>
            <script>
                magnify("myimage", 2);
            </script>
                <div class="auto-style1">       
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsShopOnlineConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([prouct_id] = @prouct_id)">
                        <SelectParameters>
                            <asp:Parameter Name="prouct_id" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:DataList ID="DataList1" runat="server" BackColor="Transparent" BorderColor="Maroon" BorderStyle="Ridge" BorderWidth="0px" CellPadding="10" CellSpacing="25" CssClass="auto-style7" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" Width="1024px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False">                   
                        <ItemStyle BackColor="Transparent" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                        <ItemTemplate>
                            <div class="auto-style1">
                                <asp:HiddenField ID="category" runat="server" Value='<%# Eval("category") %>' />
                                <br />
                                <span class="auto-style2">
                                <span>
                                <span class="auto-style13">Sport :</span></span><span class="auto-style6">
                                <asp:Label ID="sportLabel" runat="server" Text='<%# Eval("store") %>' />
                                <br />
                                </span>
                                   <br class="auto-style9" />
                                     <span>
                                <span class="auto-style13">Product Type :</span></span><span class="auto-style6">
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                </span>
                                <span>
                                <br class="auto-style9" />
                                <span class="auto-style13">Product Name :</span></span><span class="auto-style6"> </span>
                                </span>
                                <span class="auto-style6">
                                <asp:Label ID="product_nameLabel" runat="server" CssClass="auto-style2" Text='<%# Eval("product_name") %>' />
                                <br />
                                </span>
                                <span>
                                <br class="auto-style9" />
                                </span><span class="auto-style11"><span class="auto-style2"><span class="auto-style5">Brand :</span><strong> </strong></span><span class="auto-style6"><strong>
                                <asp:Label ID="brandLabel" runat="server" CssClass="auto-style2" ForeColor="white" Text='<%# Eval("brand")%>' />
                                <br class="auto-style2" />
                                </strong></span></span><span>
                                <br class="auto-style10" />
                                </span>
                                <span class="auto-style2"><span class="auto-style13">Price :</span><span class="auto-style5"> ৳</span><span class="auto-style6"><asp:Label ID="priceLabel" runat="server" CssClass="auto-style2" Text='<%# Eval("price") %>' />
                                <br />
                                </span><span>
                                <br class="auto-style9" />
                                </span><span class="auto-style5"><span><span class="auto-style11">Available :</span></span><span class="auto-style6"> </span></span> </span>
                                <asp:Label ID="availableLabel" runat="server" CssClass="auto-style3"  Text='<%# Eval("available") %>' ForeColor="Green" />
                            </div>
           </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="Transparent" />
                    </asp:DataList>
                   
                            <asp:Label ID="Label3" runat="server" style="font-size: medium; color: #FFFFFF" Text="Size :"></asp:Label>
                &nbsp;<asp:DropDownList ID="DDL2" runat="server">
                </asp:DropDownList>
                <br />
                <br style="font-size: 5px" />
                   
                            <asp:Label ID="Label2" runat="server" style="font-size: medium; color: #FFFFFF" Text="Amount :"></asp:Label>
                <strong><span class="auto-style8">&nbsp;</span></strong><asp:DropDownList ID="DDL1" runat="server" Height="30px" Width="103px"></asp:DropDownList>
                                <br />
                                <br />
                                
                                     <strong>
                                
                                     <asp:Button ID="addBtn" runat="server"  CssClass="menubtn" OnClick="add_click" Text="Add to cart" Height="48px" Width="146px"></asp:Button>
                                
                    </strong>
                                
                    <br />

                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style8"></asp:Label>
                               
                                
                    <br />

            </div>
</div>
				
				<br />
				
				</div>
			</div>
<script>
magnify("imageLabel", 2);
</script>
<div id="footer">
			<ul class="footer_menu">
				<li><span style="font-size: 11px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; ©SPORTS SHOP ONLINE<span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>&nbsp;&nbsp; <a href="home.aspx">Home</a>&nbsp;|&nbsp;</li>
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

