﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Global.aspx.cs"   ValidateRequest="false" Inherits="Global" %>

<%@ Register src="~/AdminPanel/AdminPages/Customize/AnaMenu/Top/TopMenu.ascx" tagname="TopMenu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server"> 
  	<title> Yönetici Paneli</title>
  	<meta http-equiv="content-type" content="text/html; charset=utf-8" />	
    <link rel="stylesheet" href="../css/styleGlobalpages.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="../css/slideGlobalpages.css" type="text/css" media="screen" />
	<link rel="Stylesheet" href="_assets/css/progress.css" />
	<link type='text/css'  href='css/demo.css' rel='stylesheet' media='screen' />
    <link type='text/css'  href='css/basic.css' rel='stylesheet' media='screen' />
    <link href="_assets/css/progress.css" rel="stylesheet" type="text/css" />
  
	<script src="../js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="../js/slide.js" type="text/javascript"></script>
    <script type="text/javascript" src="../Jquery/jquery.js"></script>
    
    <script type="text/javascript">
    $(document).ready(function() {

        $(".accordion h3:first").addClass("active");
        $(".accordion p:not(:first)").hide();

        $(".accordion h3").click(function() {
            $(this).next("p").slideToggle("slow")
		.siblings("p:visible").slideUp("slow");
            $(this).toggleClass("active");
            $(this).siblings("h3").removeClass("active");
        });

    });
    
    
    
</script>
 



<style type="text/css">


.accordion {
	width: 740px;
	border-bottom: solid 1px #c4c4c4;
	padding-left:1px;
}
.accordion h3 {
	background: #e9e7e7 url(../images/arrow-square.gif) no-repeat right -51px;
	padding: 7px 15px;
	margin: 0;
	font: bold 120%/100% Arial, Helvetica, sans-serif;
	border: solid 1px #c4c4c4;
	border-bottom: none;
	cursor: pointer;
}
.accordion h3:hover {
	background-color: #e3e2e2;
}
.accordion h3.active {
	background-position: right 5px;
}
.accordion p {
	background: #f7f7f7;
	margin: 0;
	padding: 10px 15px 20px;
	border-left: solid 1px #c4c4c4;
	border-right: solid 1px #c4c4c4;
}
</style>
</head>
<body>
<!-- Panel Başlangıç -->
<form id="Admin" runat="server">
<asp:ScriptManager ID="scriptManager" runat="server" EnablePageMethods="true" />
 
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div >
				   
				 <asp:Label ID="Label1" runat="server" Visible="true" Text="Kullanıcı Adınız :"></asp:Label>&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox1" Width="150px" Visible="true" runat="server"></asp:TextBox><br /><br />
                 <asp:Label ID="Label2" runat="server" Visible="true"  Text="Şifreniz :"></asp:Label>
                  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox2" Width="150px" Visible="true" TextMode="Password" runat="server"></asp:TextBox><br /><br />
             	 <asp:LinkButton ID="LinkButton1" onclick="LinkButton1_Click" runat="server" CssClass="bt_login" >Giriş</asp:LinkButton>
               
		     </div>
               <asp:Label ID="Err_Lbl" runat="server" Text="Lütfen Tekrar Deneyiniz..." ForeColor="Maroon" Visible="false" ></asp:Label>
		</div>
</div> 

	<!-- Top Menü -->	
	<div class="tab">
		<ul class="login">
			<li class="left" >&nbsp;</li>
			<li>Merhaba Yönetici!</li>
			<li class="sep">|</li>
			<li id="toggle">
				<a id="open" class="open" href="#">Giriş</a>
				<a id="close" style="display: none;" class="close" href="#">Kapat</a>			
			</li>
			<li class="right">&nbsp;</li>
		</ul> 
	    
	      
	</div> <!-- / top -->
	
</div> <!--panel Bitiş-->

   
	
	</form>
</body>
</html>
