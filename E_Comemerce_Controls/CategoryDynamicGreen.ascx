<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoryDynamicGreen.ascx.cs" Inherits="E_Comemerce_Controls_CategoryDynamicGreen" %>
<div class="category-featured sports">
            <nav class="navbar nav-menu show-brand">
              <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-brand"><a href="#"><img alt="fashion" src="assets/data/icon-sports.png" />SPORTS</a></div>
                  <a href="#" class="toggle-menu"></a>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse">           
                  <ul class="nav navbar-nav">
                    <li class="active"><a data-toggle="tab" href="#tab-6">Best salers</a></li>
                    <li><a data-toggle="tab" href="#tab-7">Specials</a></li>
                    <li><a data-toggle="tab" href="#tab-6">New Arrivals</a></li>
                    <li><a data-toggle="tab" href="#tab-7">Most Reviews</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
              <div id="elevator-2" class="floor-elevator">
                    <a href="#elevator-1" class="btn-elevator up fa fa-angle-up"></a>
                    <a href="#elevator-3" class="btn-elevator down fa fa-angle-down"></a>
              </div>
            </nav>
           <div class="product-featured clearfix">
                <div class="row">
                    <div class="col-sm-2 sub-category-wapper">
                        <div >
                            <div class="item">
                                <ul class="sub-category-list">
                                  <%--  <li><a href="#">Tent</a></li>
                                    <li><a href="#">Hiking Shoes</a></li>
                                    <li><a href="#">Cycling Jerseys</a></li>
                                    <li><a href="#">Boxing</a></li>
                                    <li><a href="#">Fitness</a></li>
                                    <li><a href="#">Basketball Shoes</a></li>
                                    <li><a href="#">Carp Fishing</a></li>
                                    <li><a href="#">Bike Light</a></li>
                                    <li><a href="#">Sunglasses</a></li>
                                    <li><a href="#">Fishing Tackle Bags</a></li>
                                    <li><a href="#">Camping Stoves</a></li>
                                    <li><a href="#">Cycling Jerseys</a></li>
                                    <li><a href="#">Cycling Jerseys</a></li>
                                    <li><a href="#">Basketball Shoes</a></li>--%>
     <asp:DataList ID="Data_Sublist_Green" runat="server" RepeatDirection="Horizontal" RepeatColumns="1" GridLines="None"><ItemTemplate> <li><a target="_blank" style="white-space:nowrap;" title='<%#Eval("Product_Type")%>'  href='<%#Page.GetRouteUrl("Product_Sub",new { Brand=NewsSql.Replacement_Code(Eval("Brand").ToString()),Product_Type=NewsSql.Replacement_Code(Eval("Product_Type").ToString())}) %>'><%#Eval("Product_Type")%> </a></li></ItemTemplate></asp:DataList>
                                </ul>
                            </div>
                      
                        </div>
                    </div>
                    <div class="col-sm-10 col-right-tab">
                        <div class="product-featured-tab-content">
                            <div class="tab-container">
                                <div class="tab-panel active" id="tab-6">
                                    <div class="box-left">
                                        <div class="deal-product">
                                            <div class="deal-product-head">
                                                <h3><span>Günün Kampanyalı Ürünleri</span></h3>
                                            </div>
                                            <ul class="owl-carousel" data-items="1" data-nav="true" data-dots="false">
                                                 <li class="deal-product-content">
                                                    <div class="col-sm-5 deal-product-image">
                                                        <a id="Deal_Link_1" runat="server" ><img runat="server" id="Deal_Img_1" ></a>
                                                    </div>
                                                    <div class="col-sm-7 deal-product-info">
                                                        <p><a id="Deal_Link_2" runat="server"><label runat="server" id="Link_Label_1"></label></a></p>
                                                        <div class="price">
                                                            <span class="product-price" runat="server" id="Link_Label_Price_1"></span>
                                                            <span class="old-price" runat="server" id="Link_Label_Old_Price_1" ></span>
                                                            <span  class="sale-price" runat="server" id="Link_Label_Sale_Price_1"></span>
                                                        </div>
                                                        <div class="show-count-down">
                                                            <span class="countdown-lastest" data-y="2017" data-m="10" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                        <div class="product-desc">
                                                           <label runat="server" id="Link_Label_Description_1"></label>
                                                        </div>
                                                    </div>
                                                </li>


                                                  <li class="deal-product-content">
                                                    <div class="col-sm-5 deal-product-image">
                                                        <a id="Deal_Link_3" runat="server" ><img runat="server" id="Deal_Img_2" ></a>
                                                    </div>
                                                    <div class="col-sm-7 deal-product-info">
                                                        <p><a id="Deal_Link_4" runat="server"><label runat="server" id="Link_Label_2"></label></a></p>
                                                        <div class="price">
                                                            <span class="product-price" runat="server" id="Link_Label_Price_2"></span>
                                                            <span class="old-price" runat="server" id="Link_Label_Old_Price_2"></span>
                                                            <span  class="sale-price" runat="server" id="Link_Label_Sale_Price_2"></span>
                                                        </div>
                                                        <div class="show-count-down">
                                                            <span class="countdown-lastest" data-y="2017" data-m="10" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                        <div class="product-desc">
                                                           <label runat="server" id="Link_Label_Description_2"></label>
                                                        </div>
                                                    </div>
                                                </li>



                                                  <li class="deal-product-content">
                                                    <div class="col-sm-5 deal-product-image">
                                                        <a id="Deal_Link_5" runat="server" ><img runat="server" id="Deal_Img_3" ></a>
                                                    </div>
                                                    <div class="col-sm-7 deal-product-info">
                                                        <p><a id="Deal_Link_6" runat="server"><label runat="server" id="Link_Label_3"></label></a></p>
                                                        <div class="price">
                                                            <span class="product-price" runat="server" id="Link_Label_Price_3"></span>
                                                            <span class="old-price" runat="server" id="Link_Label_Old_Price_3"></span>
                                                            <span  class="sale-price"  runat="server" id="Link_Label_Sale_Price_3"></span>
                                                        </div>
                                                        <div class="show-count-down">
                                                            <span class="countdown-lastest" data-y="2017" data-m="10" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                        <div class="product-desc">
                                                           <label runat="server" id="Link_Label_Description_3"></label>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <ul class="owl-intab owl-carousel" data-loop="true" data-items="1" data-dots="false" data-nav="true">
                                            <li><a id="Slider_Spor1" runat="server"><img runat="server" id="Spor_Img1" /></a></li>
                                            <li><a id="Slider_Spor2" runat="server"><img runat="server" id="Spor_Img2" /></a></li>
                                            <li><a id="Slider_Spor3" runat="server"><img runat="server" id="Spor_Img3" /></a></li>

  
                                        </ul>
                                    </div>
                                  <div class="box-right">
                                        <ul class="product-list row">
                     <asp:DataList ID="Data_Product" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" GridLines="None">
                         <ItemTemplate> 
                          <li class="col-sm-4" style="width:195px;">
                                                <div class="right-block">
                                                    <h5 class="product-name"><a target="_blank" title='<%#Eval("title")%>'  href='<%#Page.GetRouteUrl("Product",new { Category=NewsSql.Replacement_Code(Eval("Category").ToString()),Title=NewsSql.Replacement_Code(Eval("Title").ToString()), PRODUCT_ID = NewsSql.Replacement_Code(Eval("Product_ID").ToString())}) %>'><%#Eval("title")%></a></h5>
                                                    <div class="content_price">
                                                        <span class="price product-price"><%#Eval("Price")+ "TL"%></span>
                                                    </div>
                                                </div>
                                                <div class="left-block">
                                                     <a target="_blank" title='<%#Eval("title")%>'  href='<%#Page.GetRouteUrl("Product",new { Category=NewsSql.Replacement_Code(Eval("Category").ToString()),Title=NewsSql.Replacement_Code(Eval("Title").ToString()), PRODUCT_ID = NewsSql.Replacement_Code(Eval("Product_ID").ToString())}) %>'>
                                               
                                                     <img class="img-responsive" alt='<%#Eval("title")%>' src='<%# (((string)Eval("İmage")).Replace("~/",""))%>' /></a>
                                                    <div class="quick-view">
                                                            <a title="Add to my wishlist" class="heart" href="#"></a>
                                                            <a title="Add to compare" class="compare" href="#"></a>
                                                            <a title="Quick view" class="search" href="#"></a>
                                                    </div>
                                                    <div class="add-to-cart">
                                                        <a title="Add to Cart" href="#">Sepete Ekle</a>
                                                    </div>
                                                </div>
                                            </li>

                         
          </ItemTemplate>
     </asp:DataList>
                                        </ul>
                                    </div>
                                </div>
                                <div class="tab-panel" id="tab-7">
                                    <div class="box-left">
                                        <ul class="owl-intab owl-carousel" data-loop="true" data-items="1" data-autoplay="true" data-dots="false" data-nav="true">
                                            <li><a id="Slider_Spor11" runat="server"><img runat="server" id="Spor_Img11" /></a></li>
                                            <li><a id="Slider_Spor22" runat="server"><img runat="server" id="Spor_Img22" /></a></li>
                                            <li><a id="Slider_Spor33" runat="server"><img runat="server" id="Spor_Img33" /></a></li>

  
                                        </ul>
                                          <div class="deal-product">
                                            <div class="deal-product-head">
                                                <h3><span>Günün Kampanyalı Ürünleri</span></h3>
                                            </div>
                                            <ul class="owl-carousel" data-items="1" data-nav="true" data-dots="false">
                                                 <li class="deal-product-content">
                                                    <div class="col-sm-5 deal-product-image">
                                                        <a id="Deal_Link_11" runat="server" ><img runat="server" id="Deal_Img_11" ></a>
                                                    </div>
                                                    <div class="col-sm-7 deal-product-info">
                                                        <p><a id="Deal_Link_22" runat="server"><label runat="server" id="Link_Label_11"></label></a></p>
                                                        <div class="price">
                                                            <span class="product-price" runat="server" id="Link_Label_Price_11"></span>
                                                            <span class="old-price" runat="server" id="Link_Label_Old_Price_11" ></span>
                                                            <span  class="sale-price" runat="server" id="Link_Label_Sale_Price_11"></span>
                                                        </div>
                                                        <div class="show-count-down">
                                                            <span class="countdown-lastest" data-y="2017" data-m="10" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                        <div class="product-desc">
                                                           <label runat="server" id="Link_Label_Description_11"></label>
                                                        </div>
                                                    </div>
                                                </li>


                                                  <li class="deal-product-content">
                                                    <div class="col-sm-5 deal-product-image">
                                                        <a id="Deal_Link_33" runat="server" ><img runat="server" id="Deal_Img_22" ></a>
                                                    </div>
                                                    <div class="col-sm-7 deal-product-info">
                                                        <p><a id="Deal_Link_44" runat="server"><label runat="server" id="Link_Label_22"></label></a></p>
                                                        <div class="price">
                                                            <span class="product-price" runat="server" id="Link_Label_Price_22"></span>
                                                            <span class="old-price" runat="server" id="Link_Label_Old_Price_22"></span>
                                                            <span  class="sale-price" runat="server" id="Link_Label_Sale_Price_22"></span>
                                                        </div>
                                                        <div class="show-count-down">
                                                            <span class="countdown-lastest" data-y="2017" data-m="10" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                        <div class="product-desc">
                                                           <label runat="server" id="Link_Label_Description_22"></label>
                                                        </div>
                                                    </div>
                                                </li>



                                                  <li class="deal-product-content">
                                                    <div class="col-sm-5 deal-product-image">
                                                        <a id="Deal_Link_55" runat="server" ><img runat="server" id="Deal_Img_33" ></a>
                                                    </div>
                                                    <div class="col-sm-7 deal-product-info">
                                                        <p><a id="Deal_Link_66" runat="server"><label runat="server" id="Link_Label_33"></label></a></p>
                                                        <div class="price">
                                                            <span class="product-price" runat="server" id="Link_Label_Price_33"></span>
                                                            <span class="old-price" runat="server" id="Link_Label_Old_Price_33"></span>
                                                            <span  class="sale-price"  runat="server" id="Link_Label_Sale_Price_33"></span>
                                                        </div>
                                                        <div class="show-count-down">
                                                            <span class="countdown-lastest" data-y="2017" data-m="10" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                        <div class="product-desc">
                                                           <label runat="server" id="Link_Label_Description_33"></label>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                         <div class="box-right">
                                        <ul class="product-list row">
                     <asp:DataList ID="Data_Product_More" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" GridLines="None">
                         <ItemTemplate> 
                          <li class="col-sm-4" style="width:195px;">
                                                <div class="right-block">
                                                    <h5 class="product-name"><a target="_blank" title='<%#Eval("title")%>'  href='<%#Page.GetRouteUrl("Product",new { Category=NewsSql.Replacement_Code(Eval("Category").ToString()),Title=NewsSql.Replacement_Code(Eval("Title").ToString()), PRODUCT_ID = NewsSql.Replacement_Code(Eval("Product_ID").ToString())}) %>'><%#Eval("title")%></a></h5>
                                                    <div class="content_price">
                                                        <span class="price product-price"><%#Eval("Price")+ "TL"%></span>
                                                    </div>
                                                </div>
                                                <div class="left-block">
                                                     <a target="_blank" title='<%#Eval("title")%>'  href='<%#Page.GetRouteUrl("Product",new { Category=NewsSql.Replacement_Code(Eval("Category").ToString()),Title=NewsSql.Replacement_Code(Eval("Title").ToString()), PRODUCT_ID = NewsSql.Replacement_Code(Eval("Product_ID").ToString())}) %>'>
                                               
                                                     <img class="img-responsive" alt='<%#Eval("title")%>' src='<%# (((string)Eval("İmage")).Replace("~/",""))%>' /></a>
                                                    <div class="quick-view">
                                                            <a title="Add to my wishlist" class="heart" href="#"></a>
                                                            <a title="Add to compare" class="compare" href="#"></a>
                                                            <a title="Quick view" class="search" href="#"></a>
                                                    </div>
                                                    <div class="add-to-cart">
                                                        <a title="Add to Cart" href="#">Sepete Ekle</a>
                                                    </div>
                                                </div>
                                            </li>

                         
          </ItemTemplate>
     </asp:DataList>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
        </div>