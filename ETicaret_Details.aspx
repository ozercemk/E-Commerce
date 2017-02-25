﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ETicaret_Details.aspx.cs" Inherits="ETicaret_Details" %>
<%@ Register src="E_Comemerce_Controls/TopLinksHeader.ascx" tagname="TopLinksHeader" tagprefix="uc1" %>
<%@ Register src="E_Comemerce_Controls/Search.ascx" tagname="Search" tagprefix="uc2" %>
<%@ Register src="E_Comemerce_Controls/ShopingCart.ascx" tagname="ShopingCart" tagprefix="uc3" %>
<%@ Register src="E_Comemerce_Controls/NavigationVerticalMenu.ascx" tagname="NavigationVerticalMenu" tagprefix="uc4" %>
<%@ Register src="E_Comemerce_Controls/NavigationHorizantalMenu2.ascx" tagname="NavigationHorizantalMenu" tagprefix="uc5" %>
<%@ Register src="E_Comemerce_Controls/NavigationMenuUsage.ascx" tagname="NavigationMenuUsage" tagprefix="uc6" %>
<%@ Register src="E_Comemerce_Controls/Footer.ascx" tagname="Footer" tagprefix="uc18" %>
<%@ Register src="E_Comemerce_Controls/BreadCump.ascx" tagname="BreadCump" tagprefix="uc7" %>
<%@ Register src="E_Comemerce_Controls/NewProduct.ascx" tagname="NewProduct" tagprefix="uc8" %>
<%@ Register src="E_Comemerce_Controls/Information.ascx" tagname="Information" tagprefix="uc9" %>
<%@ Register src="E_Comemerce_Controls/RelatedProducts.ascx" tagname="RelatedProducts" tagprefix="uc10" %>
<%@ Register src="E_Comemerce_Controls/YouMayLike.ascx" tagname="YouMayLike" tagprefix="uc11" %>
<%@ Register src="E_Comemerce_Controls/LeftSlideDetails.ascx" tagname="LeftSlideDetails" tagprefix="uc12" %>
<%@ Register src="E_Comemerce_Controls/OnSaleRight.ascx" tagname="OnSaleRight" tagprefix="uc13" %>
<%@ Register src="E_Comemerce_Controls/TabProducts.ascx" tagname="TabProducts" tagprefix="uc14" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport"  content="width=device-width, initial-scale=1" />
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
    <title>Türkiye'nin en ucuz ve güvenilir online alışveriş sitesi</title>
</head>
<body class="product-page right-sidebar">
    <form id="form1" runat="server">
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
<div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        
        <uc7:BreadCump ID="BreadCump1" runat="server" />
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
            <!-- Left colunm -->
            <div class="column col-xs-12 col-sm-3" id="left_column">
                <!-- block best sellers -->
                <uc8:NewProduct ID="NewProduct1" runat="server" />
                <!-- ./block best sellers  -->
                <!-- block category -->
               <uc9:Information ID="Information1" runat="server" />
                <!-- ./block category  -->
                <!-- block best sellers -->
                <uc13:OnSaleRight ID="OnSaleRight1" runat="server" />
                <!-- ./block best sellers  -->
                <!-- left silide -->
                <uc12:LeftSlideDetails ID="LeftSlideDetails1" runat="server" />
                <!--./left silde-->
            </div>
            <!-- ./left colunm -->
            <!-- Center colunm-->
            <div class="center_column col-xs-12 col-sm-9" id="center_column">
                <!-- Product -->
                    <div id="product">
                        <div class="primary-box row">
                            <div class="pb-left-column col-xs-12 col-sm-6">
                                <!-- product-imge-->
                                <div class="product-image">
                                    <div class="product-full">
                                        <%--<img id="productZoom" runat="server" />--%><asp:Image ID="productZoom" runat="server" />
                                    </div>
                                    <div class="product-img-thumb" id="gallery_01">
                                        <ul class="owl-carousel" data-items="3" data-nav="true" data-dots="false" data-margin="40" data-loop="false">
                           <asp:DataList ID="Data_Product" runat="server" RepeatLayout="Table" RepeatDirection="Horizontal" RepeatColumns="3" GridLines="None">
                                          <ItemTemplate> 
                                            <li  style="width:90px;height:100px;margin-right:10px; margin-left:15px; ">
                                                <a href="#" data-image='<%# (((string)Eval("İmage")).Replace("~/",""))%>' data-zoom-image='<%# (((string)Eval("İmageZoom")).Replace("~/",""))%>' >
                                                    <img id="productZoom"  src='<%# (((string)Eval("İmageSmall")).Replace("~/",""))%>'   /> 
                                                </a>
                                            </li>
                                </ItemTemplate>
                            </asp:DataList>
                                       </ul>
                                     </div>
                                </div>
                                <!-- product-imge-->
                            </div>
                            <div class="pb-right-column col-xs-12 col-sm-6">
                                <h1 class="product-name"> <asp:Label ID="productname" runat="server" ></asp:Label></h1>
                                <div class="product-comments">
                                    <div class="product-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="comments-advices">
                                        <a href="#"></a>
                                        <a href="#"><i class="fa fa-pencil"></i> Yorumunuz </a>
                                    </div>
                                </div>
                                <div class="product-price-group">
                                      <span class="price"><asp:Label ID="price" runat="server" ></asp:Label> TL</span>
                                    <span class="old-price"><asp:Label ID="oldprice" runat="server" ></asp:Label> TL</span>
                                    <span class="discount">%<asp:Label ID="discount" runat="server" ></asp:Label></span>
                             </div>
                                <div class="info-orther">
                                    <p>Ürün Kodu: #<asp:Label ID="Product_Code" runat="server" ></asp:Label></p>
                                    <p>Availability: <span class="in-stock"><asp:Label ID="Availability" runat="server" ></asp:Label></span></p>
                                    <p>Durum: Yeni</p>
                                </div>
                                <div class="product-desc">
                                    <asp:Literal ID="Description" runat="server"></asp:Literal>
                                        </div>
                                <div class="form-option">
                                    <p class="form-option-title">Renk Opsiyon:</p>
                                    <div class="attributes">
                                        <div class="attribute-label">Color:</div>
                                        <div class="attribute-list">
                                            <ul class="list-color">
                                                <li style="background:#0c3b90;"><a href="#">red</a></li>
                                                <li style="background:#036c5d;" class="active"><a href="#">red</a></li>
                                                <li style="background:#5f2363;"><a href="#">red</a></li>
                                                <li style="background:#ffc000;"><a href="#">red</a></li>
                                                <li style="background:#36a93c;"><a href="#">red</a></li>
                                                <li style="background:#ff0000;"><a href="#">red</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="attributes">
                                        <div class="attribute-label">Qty:</div>
                                        <div class="attribute-list product-qty">
                                            <div class="qty">
                                                <input id="option-product-qty" type="text" value="1">
                                            </div>
                                            <div class="btn-plus">
                                                <a href="#" class="btn-plus-up">
                                                    <i class="fa fa-caret-up"></i>
                                                </a>
                                                <a href="#" class="btn-plus-down">
                                                    <i class="fa fa-caret-down"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="attributes">
                                        <div class="attribute-label">Size:</div>
                                        <div class="attribute-list">
                                            <select>
                                                <option value="1">X</option>
                                                <option value="2">XL</option>
                                                <option value="3">XXL</option>
                                            </select>
                                            <a id="size_chart" class="fancybox" href="assets/data/size-chart.jpg">Size Chart</a>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="form-action">
                                    <div class="button-group">
                                        <a class="btn-add-cart" href="#">Add to cart</a>
                                    </div>
                                    <div class="button-group">
                                        <a class="wishlist" href="#"><i class="fa fa-heart-o"></i>
                                        <br>Wishlist</a>
                                        <a class="compare" href="#"><i class="fa fa-signal"></i>
                                        <br>        
                                        Compare</a>
                                    </div>
                                </div>
                                <div class="form-share">
                                    <div class="sendtofriend-print">
                                        <a href="javascript:print();"><i class="fa fa-print"></i> Print</a>
                                        <a href="#"><i class="fa fa-envelope-o fa-fw"></i>Send to a friend</a>
                                    </div>
                                    <div class="network-share">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- tab product -->
                     <uc14:TabProducts ID="TabProducts1" runat="server" />
                        <!-- ./tab product -->
                        <!-- box product -->
                        <uc10:RelatedProducts ID="RelatedProducts1" runat="server" />
                        <!-- ./box product -->
                        <!-- box product -->
                       <uc11:YouMayLike ID="YouMayLike1" runat="server" />
                        <!-- ./box product -->
                    </div>
                <!-- Product -->
            </div>
            <!-- ./ Center colunm -->
          
        </div>
        <!-- ./row-->
    </div>
</div>

<!-- Footer -->
<uc18:Footer ID="Footer1" runat="server" />
<a href="#" class="scroll_top" title="yukarı git" style="display: inline;">Yukarı</a>
<!-- Script-->
<script type="text/javascript" src="assets/lib/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="assets/lib/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/lib/select2/js/select2.min.js"></script>
<script type="text/javascript" src="assets/lib/jquery.bxslider/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="assets/lib/owl.carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="assets/lib/jquery.countdown/jquery.countdown.min.js"></script>
<script type="text/javascript" src="assets/lib/jquery.elevatezoom.js"></script>
<script type="text/javascript" src="assets/lib/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="assets/lib/fancyBox/jquery.fancybox.js"></script>
<script type="text/javascript" src="assets/js/jquery.actual.min.js"></script>
<script type="text/javascript" src="assets/js/theme-script.js"></script>

    </form>
</body>
</html>
