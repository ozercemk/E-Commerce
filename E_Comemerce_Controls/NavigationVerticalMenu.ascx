<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NavigationVerticalMenu.ascx.cs" Inherits="NavigationVerticalManu" %>
 <div class="col-sm-3" id="box-vertical-megamenus">
                    <div class="box-vertical-megamenus">
                    <h4 class="title">
                        <span class="title-menu">TÜM KATEGORİLER</span>
                        <span class="btn-open-mobile pull-right home-page"><i class="fa fa-bars"></i></span>
                    </h4>
                    <div class="vertical-menu-content is-home">
                        <ul class="vertical-menu-list">
                            <li><a href='<%:Page.GetRouteUrl("Category", new { Category = "Beyaz-Esya" })%>' target="_parent"><img class="icon-menu" alt="Beyaz Eşya"  src="assets/data/12.png">Beyaz Eşya</a></li>
                            <%--<li>
                                <a class="parent" href="category2.html"><img class="icon-menu" alt="Funky roots" src="assets/data/13.png">Sports &amp; Outdoors</a>
                                <div class="vertical-dropdown-menu">
                                    <div class="vertical-groups col-sm-12">
                                        <div class="mega-group col-sm-4">
                                            <h4 class="mega-group-header"><span>Tennis</span></h4>
                                            <ul class="group-link-default">
                                                <li><a href="#">Tennis</a></li>
                                                <li><a href="#">Coats &amp; Jackets</a></li>
                                                <li><a href="#">Blouses &amp; Shirts</a></li>
                                                <li><a href="#">Tops &amp; Tees</a></li>
                                                <li><a href="#">Hoodies &amp; Sweatshirts</a></li>
                                                <li><a href="#">Intimates</a></li>
                                            </ul>
                                        </div>
                                        <div class="mega-group col-sm-4">
                                            <h4 class="mega-group-header"><span>Swimming</span></h4>
                                            <ul class="group-link-default">
                                                <li><a href="#">Dresses</a></li>
                                                <li><a href="#">Coats &amp; Jackets</a></li>
                                                <li><a href="#">Blouses &amp; Shirts</a></li>
                                                <li><a href="#">Tops &amp; Tees</a></li>
                                                <li><a href="#">Hoodies &amp; Sweatshirts</a></li>
                                                <li><a href="#">Intimates</a></li>
                                            </ul>
                                        </div>
                                        <div class="mega-group col-sm-4">
                                            <h4 class="mega-group-header"><span>Shoes</span></h4>
                                            <ul class="group-link-default">
                                                <li><a href="#">Dresses</a></li>
                                                <li><a href="#">Coats &amp; Jackets</a></li>
                                                <li><a href="#">Blouses &amp; Shirts</a></li>
                                                <li><a href="#">Tops &amp; Tees</a></li>
                                                <li><a href="#">Hoodies &amp; Sweatshirts</a></li>
                                                <li><a href="#">Intimates</a></li>
                                            </ul>
                                        </div>
                                        <div class="mega-custom-html col-sm-12">
                                            <a href="#"><img src="assets/data/banner-megamenu.jpg" alt="Banner"></a>
                                        </div>
                                    </div>
                                </div>
                            </li>--%>
                            <li><a href='<%:Page.GetRouteUrl("Category", new { Category = "Ev-Elektronigi" })%>' target="_parent"><img class="icon-menu" alt="Funky roots" src="assets/data/14.png">Ev Elektroniği</a></li>
                            <li><a href='<%:Page.GetRouteUrl("Category", new { Category = "Kucuk-Ev-Aletleri" })%>' target="_parent"><img class="icon-menu" alt="Funky roots" src="assets/data/15.png">Küçük Ev Aletleri</a></li>
                            <%-- <li>
                                <a class="parent" href="category.html">
                                <img class="icon-menu" alt="Funky roots" src="assets/data/16.png">Shoes &amp; Accessories</a>
                                <div class="vertical-dropdown-menu">
                                        <div class="vertical-groups col-sm-12">
                                            <div class="mega-group col-sm-12">
                                                <h4 class="mega-group-header"><span>Special products</span></h4>
                                                <div class="row mega-products">
                                                    <div class="col-sm-3 mega-product">
                                                        <div class="product-avatar">
                                                            <a href="#"><img src="assets/data/p10.jpg" alt="product1"></a>
                                                        </div>
                                                        <div class="product-name">
                                                            <a href="#">Fashion hand bag</a>
                                                        </div>
                                                        <div class="product-price">
                                                            <div class="new-price">$38</div>
                                                            <div class="old-price">$45</div>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 mega-product">
                                                        <div class="product-avatar">
                                                            <a href="#"><img src="assets/data/p11.jpg" alt="product1"></a>
                                                        </div>
                                                        <div class="product-name">
                                                            <a href="#">Fashion hand bag</a>
                                                        </div>
                                                        <div class="product-price">
                                                            <div class="new-price">$38</div>
                                                            <div class="old-price">$45</div>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 mega-product">
                                                        <div class="product-avatar">
                                                            <a href="#"><img src="assets/data/p12.jpg" alt="product1"></a>
                                                        </div>
                                                        <div class="product-name">
                                                            <a href="#">Fashion hand bag</a>
                                                        </div>
                                                        <div class="product-price">
                                                            <div class="new-price">$38</div>
                                                            <div class="old-price">$45</div>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 mega-product">
                                                        <div class="product-avatar">
                                                            <a href="#"><img src="assets/data/p13.jpg" alt="product1"></a>
                                                        </div>
                                                        <div class="product-name">
                                                            <a href="#">Fashion hand bag</a>
                                                        </div>
                                                        <div class="product-price">
                                                            <div class="new-price">$38</div>
                                                            <div class="old-price">$45</div>
                                                        </div>
                                                        <div class="product-star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </li>--%>
                            <li><a href='<%:Page.GetRouteUrl("Category", new { Category = "Ankastre-Urunler" })%>' target="_parent"><img class="icon-menu" alt="Funky roots" src="assets/data/17.png">Ankastre Ürünler</a></li>
                            <li><a href='<%:Page.GetRouteUrl("Category", new { Category = "Kisisel-Bakim-Saglik" })%>' target="_parent"><img class="icon-menu" alt="Funky roots" src="assets/data/18.png">Kişisel Bakım,Sağlık</a></li>
                            <li><a href='<%:Page.GetRouteUrl("Category", new { Category = "Isiticilar-Sogutucular" })%>' target="_parent"><img class="icon-menu" alt="Funky roots" src="assets/data/19.png">Isıtıcılar & Soğutucular</a></li>
                            <li><a href='<%:Page.GetRouteUrl("Category", new { Category = "Zuccaciye" })%>' target="_parent"><img class="icon-menu" alt="Funky roots" src="assets/data/20.png">Züccaciye</a></li>
                            <li><a href='<%:Page.GetRouteUrl("Category", new { Category = "Spor-Aletleri" })%>' target="_parent"><img class="icon-menu" alt="Funky roots" src="assets/data/21.png">Spor Aletleri</a></li>
                            <li>
                                <a href='<%:Page.GetRouteUrl("Category", new { Category = "Dikis-Makineleri" })%>' target="_parent">
                                    <img class="icon-menu" alt="Funky roots" src="assets/data/21.png">Dikiş Makineleri
                                </a>
                            </li>
                               <li>
                                <a href='<%:Page.GetRouteUrl("Category", new { Category = "Ev-Yasam" })%>' target="_parent">
                                    <img class="icon-menu" alt="Funky roots" src="assets/data/20.png">Ev & Yaşam
                                </a>
                            </li>

                               <li>
                                <a href='<%:Page.GetRouteUrl("Category", new { Category = "Hobi-Eğlence-Sanat" })%>' target="_parent">
                                    <img class="icon-menu" alt="Funky roots" src="assets/data/21.png">Hobi,Eğlence & Sanat
                                </a>
                            </li>


<%--                               <li>
                                <a href='<%:Page.GetRouteUrl("Category", new { Category = "Moda" })%>' target="_parent">
                                    <img class="icon-menu" alt="Funky roots" src="assets/data/21.png">Moda
                                </a>
                            </li>--%>
                            <li class="cat-link-orther">
                                <a href='<%:Page.GetRouteUrl("Category", new { Category = "Bilgisayar" })%>' target="_parent">
                                    <img class="icon-menu" alt="Funky roots" src="assets/data/22.png">Bilgisayar
                                </a>
                            </li>
                            <li class="cat-link-orther">
                                <a href='<%:Page.GetRouteUrl("Category", new { Category = "Fotograf-Video" })%>' target="_parent">
                                    <img class="icon-menu" alt="Funky roots" src="assets/data/12.png">Fotoğraf & Video
                                </a>
                            </li>
                            <li class="cat-link-orther">
                                <a href='<%:Page.GetRouteUrl("Category", new { Category = "Kozmetik" })%>' target="_parent">
                                    <img class="icon-menu" alt="Funky roots" src="assets/data/14.png" /> Kozmetik
                                </a>
                            </li>
                            <li class="cat-link-orther">
                            <a href='<%:Page.GetRouteUrl("Category", new { Category = "Telefon" })%>' target="_parent"><img class="icon-menu" alt="Funky roots" src="assets/data/17.png">Telefonlar</a></li>
                        </ul>
                        <div class="all-category"><span class="open-cate">Tüm Kategoriler</span></div>
                    </div>
                </div>
                </div>