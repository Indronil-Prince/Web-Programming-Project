<%@ page Language="C#" AutoEventWireup="true" CodeFile="admin_product.aspx.cs" Inherits="admin_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin : Products</title>
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
        .auto-style4 {
            margin-bottom: 0px;
        }
        .auto-style5 {
            color: black;
            text-align: left;
            height: 32px;
            font-size: 32px;
            width: 929px;
            margin-left: 120px;
            margin-bottom: 0px;
        }
        .auto-style6 {
            height: 21px;
            width: 108px;
        }
        .auto-style7 {
            height: 8px;
            width: 108px;
        }
        .auto-style9 {
            height: 859px;
            left: 11px;
            top: -4px;
        }
        .auto-style10 {
            width: 296px;
        }
        .auto-style16 {
            text-align: center;
            width: 306px;
        }
        .auto-style18 {
            height: 8px;
            width: 106px;
        }
        .auto-style19 {
            height: 21px;
            width: 306px;
        }
        .auto-style20 {
            height: 8px;
            width: 306px;
        }
        .auto-style21 {
            height: 21px;
            width: 943px;
            margin-left: 68px;
        }
        .auto-style22 {
            height: 21px;
            width: 448px;
        }
        .auto-style23 {
            font-size: x-large;
        }
        .auto-style24 {
            height: 21px;
            width: 448px;
            margin-top: 0px;
        }
        .auto-style25 {
            text-align: center;
            width: 306px;
            height: 8px;
        }
        .auto-style26 {
            width: 442px;
            text-align: center;
            font-size: x-large;
            height: 24px;
            margin-top: 36px;
            margin-bottom: 0px;
        }
        .auto-style28 {
            width: 306px;
        }
        .auto-style30 {
            height: 8px;
            width: 106px;
            color: #FF0000;
        }
        .auto-style31 {
            height: 10px;
            width: 184px;
            }
        .auto-style32 {
            width: 442px;
            text-align: center;
            font-size: x-large;
            height: 3px;
            margin-top: 36px;
            margin-bottom: 0px;
        }
        .auto-style33 {
            height: 3px;
            width: 108px;
        }
    #search {text-align: right; width: 990px;}
        .auto-style34 {
            height: 21px;
            width: 321px;
        }
        .auto-style35 {
            width: 321px;
        }
        .auto-style36 {
            height: 8px;
            width: 321px;
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
			<div id="main_block">
                	<h2 style="padding-bottom: 20px; " class="auto-style31"><span class="color">
                        <span class="auto-style23">&nbsp;ADMIN&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;</h2>
				<div>
                                        <ul id="menu0" style="top:40px">
       <asp:Button Class="admbtn" runat="server" Text="Home" PostBackUrl="~/admin.aspx" ID="Button5"></asp:Button>
       <asp:Button Class="admbtn" runat="server" Text="Users" PostBackUrl="~/admin_user.aspx" ID="Button6"></asp:Button>
       <asp:Button Class="admbtn" runat="server" Text="Products" PostBackUrl="~/admin_product.aspx" ID="Button7"></asp:Button>
       <asp:Button Class="admbtn" runat="server" Text="Orders" PostBackUrl="~/admin_order.aspx" ID="Button8"></asp:Button>
       <asp:Button Class="admbtn" runat="server" Text="News" PostBackUrl="~/admin_news.aspx" ID="Button9"></asp:Button>     
       <asp:Button Class="admbtn" runat="server" Text="Log Out" ID="Button12" OnClick="logout"></asp:Button>
     </ul>
                    
				</div>
                    <div style="margin-top:150px;"><h2 style="padding-bottom: 20px; " class="auto-style5"><span class="auto-style23">&nbsp; ADD NEW PRODUCT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;UPDATE EXISTING PRODUCT</span>&nbsp;&nbsp;&nbsp;&nbsp; </h2></div>

</div>
				<br />
                             
<table runat="server" class="auto-style21">
  <tr>
    <td class="auto-style6">
                             
<table runat="server" class="auto-style22">
  <tr>
    <td class="auto-style6">Store</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBox1" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
  </tr>
    <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
    </tr>
    <tr>
    <td class="auto-style6">Category</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBox2" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
    <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
    </tr>
    <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
    </tr>
  <tr>
    <td class="auto-style6">Type</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBox3" runat="server" Width="280px" CssClass="auto-style4" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
  </tr>
                          <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
    </tr>
                          <tr>
    <td class="auto-style6">Product name</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBox4" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
    <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
    </tr>
    <tr>
    <td class="auto-style6">Brand</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBox5" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
    <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
    </tr>
    <tr>
    <td class="auto-style6">Price</td>
    <td class="auto-style19"> 
        <asp:TextBox ID="TextBox6" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
    <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
    </tr>
    <tr>
    <td class="auto-style6">Available</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBox7" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
    <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
    </tr>
    <tr>
    <td class="auto-style6">Image URL</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBox8" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
  <tr>
    <td class="auto-style7"></td>
    <td class="auto-style20">
        &nbsp;</td> 
  </tr>
  <tr>
    <td class="auto-style7"></td>
    <td class="auto-style16">
        <asp:Button ID="Button1" runat="server" class="btnqq"  Text="ADD PRODUCT" OnClick="Add_Click" Width="204px" BorderStyle="None" Height="26px" />
        <br />
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style18" style="color: #009933"></asp:Label>
        <br />
        </strong>
      </td> 
  </tr>
   </table>

                    </td>
    <td class="auto-style10">
                             
<table runat="server" class="auto-style24">
                          <tr>
    <td class="auto-style6">Product name</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBoxU1" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
                          <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
                          </tr>
    <tr>
    <td class="auto-style6">Updated Price</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBoxU2" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
                          <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
                          </tr>
                          <tr>
    <td class="auto-style7"></td>
    <td class="auto-style25">
        <asp:Button ID="Button4" runat="server" class="btnqq" Text="UPDATE PRICE" OnClick="Update_Price" Width="204px" BorderStyle="None" Height="26px"/>
        <br />
        <strong>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style18" style="color: #009933"></asp:Label>
        <br />
        </strong>
      </td> 
                          </tr>
                          <tr>
    <td class="auto-style6">Product name</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBoxU3" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
                          </tr>
                          <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
                          </tr>
    <tr>
    <td class="auto-style6">Add Quantity</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBoxU4" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
                          <tr>
    <td class="auto-style32"></td>
    <td class="auto-style33"></td> 
                          </tr>
  <tr>
    <td class="auto-style7"></td>
    <td class="auto-style25">
        <asp:Button ID="Button2" runat="server" class="btnqq" Text="UPDATE QUANTITY" OnClick="Update_Qty" Width="204px" BorderStyle="None" Height="26px" />
        <br />
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style18" style="color: #009933"></asp:Label>
        <br />
        </strong>
      </td> 
  </tr>
   </table>

        <h2 class="auto-style26">DELETE PRODUCT</h2>
        <br />
                             
<table runat="server" class="auto-style24">
                          <tr>
    <td class="auto-style34">Product name</td>
    <td class="auto-style19">
        <asp:TextBox ID="TextBoxD1" runat="server" Width="280px" Height="30px" style="padding-left:8px; border-radius:50px; -webkit-border-radius: 50px; -moz-border-radius: 50px;"></asp:TextBox>
      </td> 
    </tr>
  <tr>
    <td class="auto-style35"></td>
    <td class="auto-style28">
      </td> 
  </tr>
  <tr>
    <td class="auto-style36"></td>
    <td class="auto-style16">
        <asp:Button ID="Button3" runat="server" class="btnqq" Text="DELETE PRODUCT" OnClick="Delete_Click" Width="204px" BorderStyle="None" Height="26px" />
        <br />
        <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style30"></asp:Label>
        <br />
        </strong>
      </td> 
  </tr>
   </table>

        <br />
        <br />

      </td> 
  </tr>
  </table>

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
                <li> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </li>
            </ul>                                                     											
	</div>
   </form> 
    </div>
</body>
</html>
