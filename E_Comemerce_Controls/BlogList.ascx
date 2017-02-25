<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BlogList.ascx.cs" Inherits="E_Comemerce_Controls_BlogList" %>
<div class="blog-list">
            <h2 class="page-heading">
                <span class="page-heading-title">From the blog</span>
            </h2>
            <div class="blog-list-wapper">
                <ul class="owl-carousel" data-dots="false" data-loop="true" data-nav = "true" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3},"1000":{"items":4}}'>
                    <li>
                        <div class="post-thumb image-hover2">
                            <a runat="server" id="A1"><img runat="server"  id="img1"></a>
                        </div>
                        <div class="post-desc">
                            <h5 class="post-title">
                                <a  runat="server" id="A2"><label runat="server" id="Label1"></label></a>
                            </h5>
                            <div class="post-meta">
                                <span class="date">Şubat 27, 2015</span>
                                <span class="comment">27 Yorum</span>
                            </div>
                            <div class="readmore">
                             <a runat="server" id="A3">Daha Fazla</a>
                            </div>
                        </div>
                    </li>
                         <li>
                        <div class="post-thumb image-hover2">
                            <a runat="server" id="A4"><img runat="server"  id="img2"></a>
                        </div>
                        <div class="post-desc">
                            <h5 class="post-title">
                                <a  runat="server" id="A5"><label runat="server" id="Label2"></label></a>
                            </h5>
                            <div class="post-meta">
                                <span class="date">Şubat 27, 2015</span>
                                <span class="comment">27 Yorum</span>
                            </div>
                            <div class="readmore">
                             <a runat="server" id="A6">Daha Fazla</a>
                            </div>
                        </div>
                    </li>
                         <li>
                        <div class="post-thumb image-hover2">
                            <a runat="server" id="A7"><img runat="server"  id="img3"></a>
                        </div>
                        <div class="post-desc">
                            <h5 class="post-title">
                                <a  runat="server" id="A8"><label runat="server" id="Label3"></label></a>
                            </h5>
                            <div class="post-meta">
                                <span class="date">Şubat 27, 2015</span>
                                <span class="comment">27 Yorum</span>
                            </div>
                            <div class="readmore">
                             <a runat="server" id="A9">Daha Fazla</a>
                            </div>
                        </div>
                    </li>
                        <li>
                        <div class="post-thumb image-hover2">
                            <a runat="server" id="A10"><img runat="server"  id="img4"></a>
                        </div>
                        <div class="post-desc">
                            <h5 class="post-title">
                                <a  runat="server" id="A11"><label runat="server" id="Label4"></label></a>
                            </h5>
                            <div class="post-meta">
                                <span class="date">Şubat 27, 2015</span>
                                <span class="comment">27 Yorum</span>
                            </div>
                            <div class="readmore">
                             <a runat="server" id="A12">Daha Fazla</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>