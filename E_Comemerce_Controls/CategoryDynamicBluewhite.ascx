        <%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoryDynamicBluewhite.ascx.cs" Inherits="E_Comemerce_Controls_CategoryDynamicBluewhite" %>
   <div class="category-featured digital">
            <nav class="navbar nav-menu show-brand">
              <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-brand"><a href="#"><img alt="fashion" src="assets/data/icon-digital.png" />DIGITAL</a></div>
                  <a href="#" class="toggle-menu"></a>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse">           
                  <ul class="nav navbar-nav">
                    <li class="active"><a data-toggle="tab" href="#tab-10">Best salers</a></li>
                    <li><a data-toggle="tab" href="#tab-11">Specials</a></li>
                    <li><a data-toggle="tab" href="#tab-10">New Arrivals</a></li>
                    <li><a data-toggle="tab" href="#tab-11">Most Reviews</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
              <div id="elevator-4" class="floor-elevator">
                    <a href="#elevator-3" class="btn-elevator up fa fa-angle-up"></a>
                    <a href="#elevator-5" class="btn-elevator down fa fa-angle-down"></a>
              </div>
            </nav>
           <div class="product-featured clearfix">
                <div class="row">
                    <div class="col-sm-2 sub-category-wapper">
                        <ul class="sub-category-list">
                            <asp:DataList ID="Data_Sublist_Green" runat="server" RepeatDirection="Horizontal" RepeatColumns="1" GridLines="None"><ItemTemplate> <li><a target="_blank" style="white-space:nowrap;" title='<%#Eval("Product_Type")%>'  href='<%#Page.GetRouteUrl("Product_Sub",new { Brand=NewsSql.Replacement_Code(Eval("Brand").ToString()),Product_Type=NewsSql.Replacement_Code(Eval("Product_Type").ToString())}) %>'><%#Eval("Product_Type")%> </a></li></ItemTemplate></asp:DataList>
                        </ul>
                    </div>
                 <div class="col-sm-8 col-right-tab">
                        <div class="product-featured-tab-content">
                            <div class="tab-container">
                                <div class="tab-panel active" id="tab-10">
                                   
                                     <div class="box-full clearfix">
                                        <ul class="product-list">
                                          <asp:DataList ID="Data_Product" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" GridLines="None">
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
                                <div class="tab-panel" id="tab-11">
                                   <div class="box-full clearfix">
                                          <ul class="product-list">
                                          <asp:DataList ID="Data_Product_More" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" GridLines="None">
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