<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ETicaret.aspx.cs" Inherits="ETicaret" %>
<%@ Register src="E_Comemerce_Controls/TopLinksHeader.ascx" tagname="TopLinksHeader" tagprefix="uc1" %>
<%@ Register src="E_Comemerce_Controls/Search.ascx" tagname="Search" tagprefix="uc2" %>
<%@ Register src="E_Comemerce_Controls/ShopingCart.ascx" tagname="ShopingCart" tagprefix="uc3" %>
<%@ Register src="E_Comemerce_Controls/NavigationVerticalMenu.ascx" tagname="NavigationVerticalMenu" tagprefix="uc4" %>
<%@ Register src="E_Comemerce_Controls/NavigationHorizantalMenu.ascx" tagname="NavigationHorizantalMenu" tagprefix="uc5" %>
<%@ Register src="E_Comemerce_Controls/NavigationMenuUsage.ascx" tagname="NavigationMenuUsage" tagprefix="uc6" %>
<%@ Register src="E_Comemerce_Controls/HomeSlider.ascx" tagname="HomeSlider" tagprefix="uc7" %>
<%@ Register src="E_Comemerce_Controls/LatestDeal.ascx" tagname="LatestDeal" tagprefix="uc8" %>
<%@ Register src="E_Comemerce_Controls/CategoryDynamicPink.ascx" tagname="CategoryDynamicPink" tagprefix="uc9" %>
<%@ Register src="E_Comemerce_Controls/CategoryDynamicGreen.ascx" tagname="CategoryDynamicGreen" tagprefix="uc10" %>
<%@ Register src="E_Comemerce_Controls/CategoryDynamicBlue.ascx" tagname="CategoryDynamicBlue" tagprefix="uc11" %>
<%@ Register src="E_Comemerce_Controls/CategoryDynamicBluewhite.ascx" tagname="CategoryDynamicBluewhite" tagprefix="uc12" %>
<%@ Register src="E_Comemerce_Controls/CategoryDynamicGreenwhite.ascx" tagname="CategoryDynamicGreenwhite" tagprefix="uc13" %>
<%@ Register src="E_Comemerce_Controls/CategoryDynamicBrown.ascx" tagname="CategoryDynamicBrown" tagprefix="uc14" %>
<%@ Register src="E_Comemerce_Controls/BannerBottom.ascx" tagname="BannerBottom" tagprefix="uc15" %>
<%@ Register src="E_Comemerce_Controls/BlogList.ascx" tagname="BlogList" tagprefix="uc16" %>
<%@ Register src="E_Comemerce_Controls/Services.ascx" tagname="Services" tagprefix="uc17" %>
<%@ Register src="E_Comemerce_Controls/Footer.ascx" tagname="Footer" tagprefix="uc18" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="assets/lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/select2/css/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/jquery.bxslider/jquery.bxslider.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/owl.carousel/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/jquery-ui/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="assets/lib/fancyBox/jquery.fancybox.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />   
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/option2.css" />
    <title>Türkiye'nin en ucuz ve güvenilir online alışveriş sitesi</title>
</head>
<body class="home option2">
   <form runat="server" id="form1">
<!-- HEADER -->
<div id="header" class="header">
    <div class="top-header">
        <div class="container">
         <uc1:TopLinksHeader ID="TopLinksHeader1" runat="server" />
      </div>
    </div>
    <!--/.top-header -->
    <!-- MAIN HEADER -->
    <div class="container main-header">
        <div class="row">
            <div class="col-xs-12 col-sm-3 logo">
                <a href="index.html"><img alt="Kute Shop" src="assets/images/logo.png" /></a>
            </div>
                 <uc2:Search ID="Search1" runat="server" />
                <uc3:ShopingCart ID="ShopingCart1" runat="server" />
        </div>
    </div>
    <!-- END MANIN HEADER -->
    <div id="nav-top-menu" class="nav-top-menu">
        <div class="container">
            <div class="row">
            <uc4:NavigationVerticalMenu ID="NavigationVerticalMenu1" runat="server" />
            <uc5:NavigationHorizantalMenu ID="NavigationHorizantalMenu1" runat="server" />
            <uc6:NavigationMenuUsage ID="NavigationMenuUsage1" runat="server" />
            </div>      
        </div>
    </div>
</div>
<!-- end header -->
<!-- Home slideder-->
<div id="home-slider">
    <div class="container">
        <div class="row">
           <uc7:HomeSlider ID="HomeSlider1" runat="server" />
        </div>
    </div>
</div>
<!-- END Home slideder-->
<div class="page-top">
    <div class="container">
        <div class="row"><br />
          <uc8:LatestDeal ID="LatestDeal1" runat="server" />
        </div>
    </div>
</div>
<!---->
<div class="content-page">
    <div class="container">
        <!-- featured category electronic -->     
<uc11:CategoryDynamicBlue ID="CategoryDynamicBlue1" runat="server" />
<!-- end featured category electronic-->     
                
<!-- featured category fashion -->
<uc9:CategoryDynamicPink ID="CategoryDynamicPink1" runat="server" />    
<!-- end featured category fashion -->
<!-- featured category sports -->
<uc10:CategoryDynamicGreen ID="CategoryDynamicGreen1" runat="server" />
<!-- end featured category sports-->    
          <!-- featured category Digital -->
<uc12:CategoryDynamicBluewhite ID="CategoryDynamicBluewhite1" runat="server" />
<!-- end featured category Digital-->   

<!-- featured category furniture -->
<uc13:CategoryDynamicGreenwhite ID="CategoryDynamicGreenwhite1" runat="server" />
<!-- end featured category furniture-->
<!-- featured category jewelry -->
<uc14:CategoryDynamicBrown ID="CategoryDynamicBrown1" runat="server" />
<!-- end featured category jewelry-->
    </div>
</div>
<div id="content-wrap">
    <div class="container">
        <!-- Baner bottom -->
    <uc15:BannerBottom ID="BannerBottom1" runat="server" />
        <!-- end banner bottom -->
        <!-- blog list -->
    <uc16:BlogList ID="BlogList1" runat="server" />
        <!-- ./blog list -->
        <!-- service 2 -->
    <uc17:Services ID="Services1" runat="server" />
        <!-- ./service 2 -->
    </div> <!-- /.container -->
</div>

<!-- Footer -->
<uc18:Footer ID="Footer1" runat="server" />
<a href="#" class="scroll_top" title="Scroll to Top" style="display: inline;">Scroll</a>
<!-- Script-->
<script type="text/javascript" src="assets/lib/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="assets/lib/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/lib/select2/js/select2.min.js"></script>
<script type="text/javascript" src="assets/lib/jquery.bxslider/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="assets/lib/owl.carousel/owl.carousel.min.js"></script>
<!-- COUNTDOWN -->
<script type="text/javascript" src="assets/lib/countdown/jquery.plugin.js"></script>
<script type="text/javascript" src="assets/lib/countdown/jquery.countdown.js"></script>
<!-- ./COUNTDOWN -->
<script type="text/javascript" src="assets/lib/fancyBox/jquery.fancybox.js"></script>
<script type="text/javascript" src="assets/js/jquery.actual.min.js"></script>
<script type="text/javascript" src="assets/js/theme-script.js"></script>
</form>   
</body>
</html>
