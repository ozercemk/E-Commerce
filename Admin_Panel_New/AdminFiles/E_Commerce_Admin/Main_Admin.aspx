﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main_Admin.aspx.cs" Inherits="Admin_Panel_New_AdminFiles_E_Commerce_Admin_Main_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Packet - Responsive Admin Template</title>
		<!-- start: META -->
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: GOOGLE FONTS -->
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<!-- end: GOOGLE FONTS -->
		<!-- start: MAIN CSS -->
		<link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../../bower_components/themify-icons/themify-icons.css">
		<link rel="stylesheet" href="../../bower_components/flag-icon-css/css/flag-icon.min.css">
		<link rel="stylesheet" href="../../bower_components/animate.css/animate.min.css">
		<link rel="stylesheet" href="../../bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css">
		<link rel="stylesheet" href="../../bower_components/switchery/dist/switchery.min.css">
		<link rel="stylesheet" href="../../bower_components/seiyria-bootstrap-slider/dist/css/bootstrap-slider.min.css">
		<link rel="stylesheet" href="../../bower_components/ladda/dist/ladda-themeless.min.css">
		<link rel="stylesheet" href="../../bower_components/slick.js/slick/slick.css">
		<link rel="stylesheet" href="../../bower_components/slick.js/slick/slick-theme.css">
		<!-- end: MAIN CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: Packet CSS -->
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/lyt2-theme-1.css" id="skin_color">
		<!-- end: Packet CSS -->
		<!-- Favicon -->
		<link rel="shortcut icon" href="favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
 <div id="app" class="lyt-2">
			<!-- sidebar -->
			<div class="sidebar app-aside" id="sidebar">
				<div class="sidebar-container perfect-scrollbar">
					<div>
						<!-- start: SEARCH FORM -->
						<div class="search-form hidden-md hidden-lg">
							<a class="s-open" href="#"> <i class="ti-search"></i> </a>
							<form class="navbar-form" role="search">
								<a class="s-remove" href="#" target=".navbar-form"> <i class="ti-close"></i> </a>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Enter search text here...">
									<button class="btn search-button" type="submit">
										<i class="ti-search"></i>
									</button>
								</div>
							</form>
						</div>
						<!-- end: SEARCH FORM -->
						<!-- start: USER OPTIONS -->
						<div class="nav-user-wrapper">
							<div class="media">
								<div class="media-left">
									<a class="profile-card-photo" href="#"><img alt="" src="assets/images/avatar-1.jpg"></a>
								</div>
								<div class="media-body">
									<span class="media-heading text-white">Peter Clark</span>
									<div class="text-small text-white-transparent">
										UI Designer
									</div>
								</div>
								<div class="media-right media-middle">
									<div class="dropdown">
										<button href class="btn btn-transparent text-white dropdown-toggle" data-toggle="dropdown">
											<i class="fa fa-caret-down"></i>
										</button>
										<ul class="dropdown-menu animated fadeInRight pull-right">
											<li>
												<a href="#"> My Profile </a>
											</li>
											<li>
												<a href="#"> My Calendar </a>
											</li>
											<li>
												<a href="#"> My Messages (3) </a>
											</li>
											<li>
												<a href="#"> Lock Screen </a>
											</li>
											<li class="divider"></li>
											<li>
												<a href="#"> Log Out </a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- end: USER OPTIONS -->
						<nav>
							<!-- start: MAIN NAVIGATION MENU -->
							<div class="navbar-title">
								<span>Main Navigation</span>
							</div>
							<ul class="main-navigation-menu">
								<li class="active open">
									<a href="index.html">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-home"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Dashboard </span>
										</div>
									</div> </a>
								</li>
								<li>
									<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-clone"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Page Layouts </span><i class="icon-arrow"></i>
										</div>
									</div> </a>
									<ul class="sub-menu">
										<li>
											<a href="page_layouts_fixed_header.html"> <span class="title"> Fixed Header </span> </a>
										</li>
										<li>
											<a href="page_layouts_fixed_sidebar.html"> <span class="title"> Fixed Sidebar </span> </a>
										</li>
										<li>
											<a href="page_layouts_fixed_header_sidebar.html"> <span class="title"> Fixed Header &amp; Sidebar </span> </a>
										</li>
										<li>
											<a href="page_layouts_fixed_footer.html"> <span class="title"> Fixed Footer </span> </a>
										</li>
										<li>
											<a href="page_layouts_boxed_page.html"> <span class="title"> Boxed Page </span> </a>
										</li>
									</ul>
								</li>
								<li>
									<a href="layouts.html">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-diamond"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Layouts </span>
										</div>
									</div> </a>
								</li>
								<li>
									<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-flask"></i>
										</div>
										<div class="item-inner">
											<span class="title"> UI Elements </span><i class="icon-arrow"></i>
										</div>
									</div> </a>
									<ul class="sub-menu">
										<li>
											<a href="ui_elements.html"> <span class="title"> Elements </span> </a>
										</li>
										<li>
											<a href="ui_buttons.html"> <span class="title"> Buttons </span> </a>
										</li>
										<li>
											<a href="ui_links.html"> <span class="title"> Link Effects </span> </a>
										</li>
										<li>
											<a href="ui_icons.html"> <span class="title"> Font Awesome Icons </span> </a>
										</li>
										<li>
											<a href="ui_line_icons.html"> <span class="title"> Linear Icons </span> </a>
										</li>
										<li>
											<a href="ui_letter_icons.html"> <span class="title"> Letter Icons </span> </a>
										</li>
										<li>
											<a href="ui_modals.html"> <span class="title"> Modals </span> </a>
										</li>
										<li>
											<a href="ui_toggle.html"> <span class="title"> Toggle </span> </a>
										</li>
										<li>
											<a href="ui_tabs_accordions.html"> <span class="title"> Tabs &amp; Accordions </span> </a>
										</li>
										<li>
											<a href="ui_panels.html"> <span class="title"> Panels </span> </a>
										</li>
										<li>
											<a href="ui_notifications.html"> <span class="title"> Notifications </span> </a>
										</li>
										<li>
											<a href="ui_sliders.html"> <span class="title"> Sliders </span> </a>
										</li>
										<li>
											<a href="ui_knob.html"> <span class="title"> Knob component </span> </a>
										</li>
										<li>
											<a href="ui_treeview.html"> <span class="title"> TreeView </span> </a>
										</li>
										<li>
											<a href="ui_media.html"> <span class="title"> Media </span> </a>
										</li>
										<li>
											<a href="ui_nestable.html"> <span class="title"> Nestable List </span> </a>
										</li>
										<li>
											<a href="ui_typography.html"> <span class="title"> Typography </span> </a>
										</li>
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-table"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Tables </span><i class="icon-arrow"></i>
										</div>
									</div> </a>
									<ul class="sub-menu">
										<li>
											<a href="table_basic.html"> <span class="title">Basic Tables</span> </a>
										</li>
										<li>
											<a href="table_responsive.html"> <span class="title">Responsive Tables</span> </a>
										</li>
										<li>
											<a href="table_data.html"> <span class="title">Advanced Data Tables</span> </a>
										</li>
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-pencil"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Forms </span><i class="icon-arrow"></i>
										</div>
									</div> </a>
									<ul class="sub-menu">
										<li>
											<a href="form_elements.html"> <span class="title">Form Elements</span> </a>
										</li>
										<li>
											<a href="form_pickers.html"> <span class="title">Pickers</span> </a>
										</li>
										<li>
											<a href="form_text_editor.html"> <span class="title">Text Editor</span> </a>
										</li>
										<li>
											<a href="form_wizard.html"> <span class="title">Form Wizard</span> </a>
										</li>
										<li>
											<a href="form_validation.html"> <span class="title">Form Validation</span> </a>
										</li>
										<li>
											<a href="form_image_cropping.html"> <span class="title">Image Cropping</span> </a>
										</li>
										<li>
											<a href="form_multiple_upload.html"> <span class="title">Multiple File Upload</span> </a>
										</li>
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-user"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Login </span><i class="icon-arrow"></i>
										</div>
									</div> </a>
									<ul class="sub-menu">
										<li>
											<a href="login_signin.html"> <span class="title"> Login Form </span> </a>
										</li>
										<li>
											<a href="login_registration.html"> <span class="title"> Registration Form </span> </a>
										</li>
										<li>
											<a href="login_forgot.html"> <span class="title"> Forgot Password Form </span> </a>
										</li>
										<li>
											<a href="login_lockscreen.html"> <span class="title">Lock Screen</span> </a>
										</li>
									</ul>
								</li>
							<%--	<li>
									<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-laptop"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Pages </span><i class="icon-arrow"></i>
										</div>
									</div> </a>
									<ul class="sub-menu">
										<li>
											<a href="pages_user_profile.html"> <span class="title">User Profile</span> </a>
										</li>
										<li>
											<a href="pages_invoice.html"> <span class="title">Invoice</span> </a>
										</li>
										<li>
											<a href="pages_timeline.html"> <span class="title">Timeline</span> </a>
										</li>
										<li>
											<a href="pages_calendar.html"> <span class="title">Calendar</span> </a>
										</li>
										<li>
											<a href="pages_messages.html"> <span class="title">Messages</span> </a>
										</li>
										<li>
											<a href="pages_blank_page.html"> <span class="title">Blank Page</span> </a>
										</li>
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-umbrella"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Utilities </span><i class="icon-arrow"></i>
										</div>
									</div> </a>
									<ul class="sub-menu">
										<li>
											<a href="utilities_search_result.html"> <span class="title">Search Results</span> </a>
										</li>
										<li>
											<a href="utilities_error_404.html"> <span class="title">Error 404</span> </a>
										</li>
										<li>
											<a href="utilities_error_500.html"> <span class="title">Error 500</span> </a>
										</li>
										<li>
											<a href="utilities_pricing_table.html"> <span class="title">Pricing Table</span> </a>
										</li>
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-folder-open"></i>
										</div>
										<div class="item-inner">
											<span class="title"> 4 Level Menu </span><i class="icon-arrow"></i>
										</div>
									</div> </a>
									<ul class="sub-menu">
										<li>
											<a href="javascript:;"> <span>Item 1</span> <i class="icon-arrow"></i> </a>
											<ul class="sub-menu">
												<li>
													<a href="javascript:;"> <span>Sample Link 1</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
												<li>
													<a href="javascript:;"> <span>Sample Link 2</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
												<li>
													<a href="javascript:;"> <span>Sample Link 3</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<a href="javascript:;"> <span>Item 2</span> <i class="icon-arrow"></i> </a>
											<ul class="sub-menu">
												<li>
													<a href="javascript:;"> <span>Sample Link 1</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
												<li>
													<a href="javascript:;"> <span>Sample Link 2</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
												<li>
													<a href="javascript:;"> <span>Sample Link 3</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<a href="javascript:;"> <span>Item 3</span> <i class="icon-arrow"></i> </a>
											<ul class="sub-menu">
												<li>
													<a href="javascript:;"> <span>Sample Link 1</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
												<li>
													<a href="javascript:;"> <span>Sample Link 2</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
												<li>
													<a href="javascript:;"> <span>Sample Link 3</span> <i class="icon-arrow"></i> </a>
													<ul class="sub-menu">
														<li>
															<a href="#"> Sample Link 1 </a>
														</li>
														<li>
															<a href="#"> Sample Link 2 </a>
														</li>
														<li>
															<a href="#"> Sample Link 3 </a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</li>
								<li>
									<a href="maps.html">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-map-marker"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Maps </span>
										</div>
									</div> </a>
								</li>
								<li>
									<a href="charts.html">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-pie-chart"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Charts </span>
										</div>
									</div> </a>
								</li>--%>
							</ul>
							<!-- end: MAIN NAVIGATION MENU -->
							<!-- start: CORE FEATURES -->
							<div class="navbar-title">
								<span>Core Features</span>
							</div>
							<ul class="folders">
								<li>
									<a href="landing_page.html">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-gift"></i>
										</div>
										<div class="item-inner">
											<span class="title"> Landing Page </span>
										</div>
									</div> </a>
								</li>
								<li>
									<a href="http://www.cliptheme.com/demo/packet/Html-Admin/LAYOUT-2/RTL/">
									<div class="item-content">
										<div class="item-media">
											<i class="fa fa-exchange"></i>
										</div>
										<div class="item-inner">
											<span class="title"> RTL Version </span>
										</div>
									</div> </a>
								</li>
							</ul>
							<!-- end: CORE FEATURES -->
						</nav>
					</div>
				</div>
			</div>
			<!-- / sidebar -->
			<div class="app-content">
				<!-- start: TOP NAVBAR -->
				<header class="navbar navbar-default navbar-static-top">
					<!-- start: NAVBAR HEADER -->
					<div class="navbar-header">
						<button href="#" class="sidebar-mobile-toggler pull-left btn no-radius hidden-md hidden-lg" class="btn btn-navbar sidebar-toggle" data-toggle-class="app-slide-off" data-toggle-target="#app" data-toggle-click-outside="#sidebar">
							<i class="fa fa-bars"></i>
						</button>
						<a class="navbar-brand" href="index.html"> <img src="assets/images/logo.png" alt="Packet"/> </a>
						<a class="navbar-brand navbar-brand-collapsed" href="index.html"> <img src="assets/images/logo-collapsed.png" alt="" /> </a>

						<button class="btn pull-right menu-toggler visible-xs-block" id="menu-toggler" data-toggle="collapse" href=".navbar-collapse" data-toggle-class="menu-open">
							<i class="fa fa-folder closed-icon"></i><i class="fa fa-folder-open open-icon"></i><small><i class="fa fa-caret-down margin-left-5"></i></small>
						</button>
					</div>
					<!-- end: NAVBAR HEADER -->
					<!-- start: NAVBAR COLLAPSE -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-left hidden-sm hidden-xs">
							<li class="sidebar-toggler-wrapper">
								<div>
									<button href="javascript:void(0)" class="btn sidebar-toggler visible-md visible-lg">
										<i class="fa fa-bars"></i>
									</button>
								</div>
							</li>
							<li>
								<a href="#" class="toggle-fullscreen"> <i class="fa fa-expand expand-off"></i><i class="fa fa-compress expand-on"></i></a>
							</li>
							<li>
								<form role="search" class="navbar-form main-search">
									<div class="form-group">
										<input type="text" placeholder="Enter search text here..." class="form-control">
										<button class="btn search-button" type="submit">
											<i class="fa fa-search"></i>
										</button>
									</div>
								</form>
							</li>
						</ul>
						<ul class="nav navbar-right">
							<!-- start: MESSAGES DROPDOWN -->
							<li class="dropdown">
								<a href class="dropdown-toggle" data-toggle="dropdown"> <span class="badge"> 3 </span> <i class="fa fa-envelope"></i> </a>
								<ul class="dropdown-menu dropdown-light dropdown-messages dropdown-large animated fadeInUpShort">
									<li>
										<span class="dropdown-header"> Unread messages</span>
									</li>
									<li>
										<div class="drop-down-wrapper ps-container">
											<ul>
												<li class="unread">
													<a href="javascript:;" class="unread">
													<div class="clearfix">
														<div class="thread-image">
															<img src="./assets/images/avatar-2.jpg" alt="">
														</div>
														<div class="thread-content">
															<span class="author">Nicole Bell</span>
															<span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula...</span>
															<span class="time"> Just Now</span>
														</div>
													</div> </a>
												</li>
												<li>
													<a href="javascript:;" class="unread">
													<div class="clearfix">
														<div class="thread-image">
															<img src="./assets/images/avatar-3.jpg" alt="">
														</div>
														<div class="thread-content">
															<span class="author">Steven Thompson</span>
															<span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula...</span>
															<span class="time">8 hrs</span>
														</div>
													</div> </a>
												</li>
												<li>
													<a href="javascript:;">
													<div class="clearfix">
														<div class="thread-image">
															<img src="./assets/images/avatar-5.jpg" alt="">
														</div>
														<div class="thread-content">
															<span class="author">Kenneth Ross</span>
															<span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula...</span>
															<span class="time">14 hrs</span>
														</div>
													</div> </a>
												</li>
											</ul>
										</div>
									</li>
									<li class="view-all">
										<a href="#"> See All </a>
									</li>
								</ul>
							</li>
							<!-- end: MESSAGES DROPDOWN -->
							<!-- start: ACTIVITIES DROPDOWN -->
							<li class="dropdown">
								<a href class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-bell"></i> </a>
								<ul class="dropdown-menu dropdown-light dropdown-messages dropdown-large animated fadeInUpShort">
									<li>
										<span class="dropdown-header"> You have new notifications</span>
									</li>
									<li>
										<div class="drop-down-wrapper ps-container">
											<div class="list-group no-margin">
												<a class="media list-group-item" href=""> <img class="img-circle" alt="..." src="assets/images/avatar-1.jpg"> <span class="media-body block no-margin"> Use awesome animate.css <small class="block text-grey">10 minutes ago</small> </span> </a>
												<a class="media list-group-item" href=""> <span class="media-body block no-margin"> 1.0 initial released <small class="block text-grey">1 hour ago</small> </span> </a>
											</div>
										</div>
									</li>
									<li class="view-all">
										<a href="#"> See All </a>
									</li>
								</ul>
							</li>
							<!-- end: ACTIVITIES DROPDOWN -->
							<!-- start: LANGUAGE SWITCHER -->
							<li class="dropdown">
								<a href class="dropdown-toggle" data-toggle="dropdown"> <i class="flag-icon flag-icon-us"></i> English </a>
								<ul role="menu" class="dropdown-menu dropdown-light fadeInUpShort">
									<li>
										<a href="#" class="menu-toggler"> Deutsch </a>
									</li>
									<li>
										<a href="#" class="menu-toggler"> English </a>
									</li>
									<li>
										<a href="#" class="menu-toggler"> Italiano </a>
									</li>
								</ul>
							</li>
							<!-- end: LANGUAGE SWITCHER -->
						</ul>
						<!-- start: MENU TOGGLER FOR MOBILE DEVICES -->
						<div class="close-handle visible-xs-block menu-toggler" data-toggle="collapse" href=".navbar-collapse">
							<div class="arrow-left"></div>
							<div class="arrow-right"></div>
						</div>
						<!-- end: MENU TOGGLER FOR MOBILE DEVICES -->
					</div>
					<button class="sidebar-mobile-toggler dropdown-off-sidebar btn hidden-md hidden-lg"  data-toggle-class="app-offsidebar-open" data-toggle-target="#app" data-toggle-click-outside="#off-sidebar">
						&nbsp;
					</button>
					<button class="dropdown-off-sidebar btn hidden-sm hidden-xs" data-toggle-class="app-offsidebar-open" data-toggle-target="#app" data-toggle-click-outside="#off-sidebar">
						&nbsp;
					</button>
					<!-- end: NAVBAR COLLAPSE -->
				</header>
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: BREADCRUMB -->
						<div class="breadcrumb-wrapper">
							<h4 class="mainTitle no-margin">Welcome to Packet</h4>
							<span class="mainDescription">overview &amp; stats </span>
							<ul class="pull-right breadcrumb">
								<li>
									<a href="index.html"><i class="fa fa-home margin-right-5 text-large text-dark"></i>Home</a>
								</li>
								<li>
									Dashboard
								</li>
							</ul>
						</div>
						<!-- end: BREADCRUMB -->
						<!-- start: FIRST SECTION -->
					<%--	<div class="container-fluid container-fullw padding-bottom-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="panel panel-white no-radius">
										<div class="panel-body">
											<div class="row">
												<div class="col-md-12 col-lg-4">
													<div class="panel panel-white no-radius no-border">
														<div class="panel-heading">
															<h2 class="inline-block"> Project List </h2>
															<p class="text-muted">
																Keep track of your projects
															</p>
														</div>
														<div class="panel-body">
															<ul class="list-group">
																<li class="list-group-item no-radius no-margin no-border-top no-border-left no-border-right">
																	<div class="row">
																		<div class="col-xs-6">
																			<a href="#"> <div class="lettericon margin-right-5" data-text="Omega" data-size="sm" data-color="#7F8C8D"></div> Omega </a>
																		</div>
																		<div class="col-xs-6">
																			<span class="block padding-top-10">
																				<div class="progress progress-xs no-radius background-dark no-margin">
																					<div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100" style="width: 89%;">
																						<span class="sr-only"> 89% </span>
																					</div>
																				</div> </span>
																		</div>
																	</div>
																</li>
																<li class="list-group-item no-radius no-margin no-border-top no-border-left no-border-right">
																	<div class="row">
																		<div class="col-xs-6">
																			<a href="#"> <div class="lettericon margin-right-5" data-text="Alpha" data-size="sm" data-color="#947499"></div> Alpha</a>
																		</div>
																		<div class="col-xs-6">
																			<span class="block padding-top-10">
																				<div class="progress progress-xs no-radius background-dark no-margin">
																					<div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="54" aria-valuemin="0" aria-valuemax="100" style="width: 54%;">
																						<span class="sr-only"> 54% </span>
																					</div>
																				</div> </span>
																		</div>
																	</div>
																</li>
																<li class="list-group-item no-radius no-margin no-border-top no-border-left no-border-right">
																	<div class="row">
																		<div class="col-xs-6">
																			<a href="#"> <div class="lettericon margin-right-5" data-text="Kappa" data-size="sm" data-color="#5A8770"></div> Kappa</a>
																		</div>
																		<div class="col-xs-6">
																			<span class="block padding-top-10">
																				<div class="progress progress-xs no-radius background-dark no-margin">
																					<div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="32" aria-valuemin="0" aria-valuemax="100" style="width: 32%;">
																						<span class="sr-only"> 32% </span>
																					</div>
																				</div> </span>
																		</div>
																	</div>
																</li>
																<li class="list-group-item no-radius no-margin no-border-top no-border-left no-border-right">
																	<div class="row">
																		<div class="col-xs-6">
																			<a href="#"> <div class="lettericon margin-right-5" data-text="Zeta" data-size="sm" data-color="#5B9BD1"></div> Zeta</a>
																		</div>
																		<div class="col-xs-6">
																			<span class="block padding-top-10">
																				<div class="progress progress-xs no-radius background-dark no-margin">
																					<div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="32" aria-valuemin="0" aria-valuemax="100" style="width: 32%;">
																						<span class="sr-only"> 32% </span>
																					</div>
																				</div> </span>
																		</div>
																	</div>
																</li>
																<li class="list-group-item no-radius no-margin no-border">
																	<div class="row">
																		<div class="col-xs-6">
																			<a href="#"> <div class="lettericon margin-right-5" data-text="Upsilon" data-size="sm" data-color="#315777"></div> Upsilon</a>
																		</div>
																		<div class="col-xs-6">
																			<span class="block padding-top-10">
																				<div class="progress progress-xs no-radius background-dark no-margin">
																					<div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%;">
																						<span class="sr-only"> 78% </span>
																					</div>
																				</div> </span>
																		</div>
																	</div>
																</li>
															</ul>
														</div>
														<div class="panel-footer no-border padding-top-0">
															<p class="no-margin">
																<a href="#"><i class="fa fa-arrow-circle-o-down text-green"></i> <span class="text-light margin-left-10">Show more details </span></a>
															</p>
														</div>
													</div>
												</div>
												<div class="col-lg-5 col-md-12">
													<div class="panel panel-white no-radius no-border" id="visits">
														<div class="panel-body margin-bottom-10">
															<div class="row padding-bottom-30">
																<div class="col-xs-4 text-center">
																	<div class="margin-bottom-10">
																		<div class="lettericon margin-right-10" data-text="Alpha" data-size="sm" data-color="#947499"></div>
																		<span class="text-extra-large text-bold">+5,04 %</span>
																	</div>
																	Alpha
																</div>
																<div class="col-xs-4 text-center">
																	<div class="margin-bottom-10">
																		<div class="lettericon margin-right-10" data-text="Omega" data-size="sm" data-color="#7F8C8D"></div>
																		<span class="text-extra-large text-bold">+2,21 %</span>
																	</div>
																	Omega
																</div>
																<div class="col-xs-4 text-center">
																	<div class="margin-bottom-10">
																		<div class="lettericon margin-right-10" data-text="Kappa" data-size="sm" data-color="#5A8770"></div>
																		<span class="text-extra-large text-bold">+0,68 %</span>
																	</div>
																	Kappa
																</div>
															</div>
															<div>
																<canvas id="productsChart" class="full-width height-300 block"></canvas>
															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-12">
													<div class="row">
														<div class="col-md-6 col-lg-12">
															<div class="panel panel-white no-radius no-border">
																<div class="panel-heading no-border">
																	<h4 class="panel-title"> Dashboard Users </h4>
																</div>
																<div class="panel-body">
																	<div class="row">
																		<div class="col-sm-12">
																			<div class="panel-scroll height-180">
																				<table class="table no-margin">
																					<tbody>
																						<tr>
																							<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-1-small.jpg"></td>
																							<td><span class="text-small block text-light">UI Designer</span><a href="#"> Peter Clark </a></td>
																							<td class="text-right"><span class="label partition-purple">Administrator</span></td>
																						</tr>
																						<tr>
																							<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-2-small.jpg"></td>
																							<td><span class="text-small block text-light">Content Designer</span><a href="#"> Nicole Bell </a></td>
																							<td class="text-right"><span class="label partition-green">Editor</span></td>
																						</tr>
																						<tr>
																							<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-3-small.jpg"></td>
																							<td><span class="text-small block text-light">Visual Designer</span><a href="#"> Steven Thompson </a></td>
																							<td class="text-right"><span class="label partition-blue">Author</span></td>
																						</tr>
																						<tr>
																							<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-5-small.jpg"></td>
																							<td><span class="text-small block text-light">Senior Designer</span><a href="#"> Kenneth Ross </a></td>
																							<td class="text-right"><span class="label partition-orange">Contributor</span></td>
																						</tr>
																						<tr>
																							<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-4-small.jpg"></td>
																							<td><span class="text-small block text-light">Web Editor</span><a href="#"> Ella Patterson </a></td>
																							<td class="text-right"><span class="label partition-green">Editor</span></td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-md-6 col-lg-12">
															<div class="panel panel-white no-radius no-border">
																<div class="panel-heading no-border padding-bottom-0">
																	<h4 class="panel-title"> All Earnings </h4>
																</div>
																<div class="panel-body no-padding">
																	<div>
																		<canvas id="acquisitionChart" class="full-width height-75 block"></canvas>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: FIRST SECTION -->
						<!-- start: SECOND SECTION -->
						<div class="container-fluid container-fullw padding-bottom-10">
							<div class="row">
								<div class="col-lg-7">
									<div class="row">
										<div class="col-sm-6">
											<div class="panel panel-white panel-carousel dots-left no-border no-radius">
												<div class="panel-body no-padding height-200">
													<!-- start: CAROUSEL -->
													<div data-slick='{"slidesToShow": 1, "speed": 300, "dots": true, "arrows": false}' class="carousel">
														<div class="slide padding-20 height-200" style="background: url('assets/images/carousel/01.jpg')">
															<h5 class="text-bold text-extra-small text-dark-transparent text-uppercase">Prjects <i class="fa fa-arrow-circle-o-right"></i></h5>
															<div class="lettericon margin-right-10" data-text="Alpha" data-box="round" data-size="lg" data-color="#947499"></div><h3 class="inline-block">Project Alpha</h3>
															<div class="block margin-top-10 ">
																<span class="label background-dark text-white margin-top-10 margin-right-5">75%</span><span class="cl-effect-19"></span>
																<a href="#" class="text-extra-small"> track progress </a>
															</div>
														</div>
														<div class="slide padding-20 height-200" style="background: url('assets/images/carousel/02.jpg')">
															<h5 class="text-bold text-extra-small text-dark-transparent text-uppercase">Prjects <i class="fa fa-arrow-circle-o-right"></i></h5>
															<div class="lettericon margin-right-10" data-text="Omega" data-box="round" data-size="lg" data-color="#7F8C8D"></div>
															<h3 class="inline-block">Omega</h3>
															<div class="block margin-top-10 ">
																<span class="label background-dark text-white margin-top-10 margin-right-5">45%</span><span class="cl-effect-19"></span>
																<a href="#" class="text-extra-small"> track progress </a>
															</div>
														</div>
													</div>
													<!-- end: CAROUSEL -->
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="panel panel-white panel-carousel dots-left no-border no-radius">
												<div class="panel-body no-padding height-200">
													<!-- start: CAROUSEL -->
													<div data-slick='{"slidesToShow": 1, "speed": 300, "dots": true, "arrows": false}' class="carousel">
														<div class="slide padding-20 height-200" style="background: url('assets/images/carousel/03.jpg')">
															<h5 class="text-bold text-extra-small text-dark-transparent text-uppercase">Dashboard Users <i class="fa fa-arrow-circle-o-right"></i></h5>
															<h3>Scott Baldwin</h3>
															<span class="label partition-green">Editor</span>
															<span class="cl-effect-3 links block margin-top-10"> <a href="#" class="uppercase text-dark text-uppercase text-bold text-extra-small"> show details <i class="padding-left-5 fa fa-angle-right"></i> </a></span>
														</div>
														<div class="slide padding-20 height-200" style="background: url('assets/images/carousel/04.jpg')">
															<h5 class="text-bold text-extra-small text-dark-transparent text-uppercase">Dashboard Users <i class="fa fa-arrow-circle-o-right"></i></h5>
															<h3>Sally Myers</h3>
															<span class="label partition-purple">Administrator</span>
															<span class="cl-effect-3 links block margin-top-10"> <a href="#" class="uppercase text-dark text-uppercase text-bold text-extra-small"> show details <i class="padding-left-5 fa fa-angle-right"></i> </a></span>
														</div>
														<div class="slide padding-20 height-200" style="background: url('assets/images/carousel/05.jpg')">
															<h5 class="text-bold text-extra-small text-dark-transparent text-uppercase">Dashboard Users <i class="fa fa-arrow-circle-o-right"></i></h5>
															<h3>Nicholas Parker</h3>
															<span class="label partition-orange">Contributor</span>
															<span class="cl-effect-3 links block margin-top-10"> <a href="#" class="uppercase text-dark text-uppercase text-bold text-extra-small"> show details <i class="padding-left-5 fa fa-angle-right"></i> </a></span>
														</div>
													</div>
													<!-- end: CAROUSEL -->
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="panel panel-white no-border no-radius">
												<div class="panel-tools">
													<a data-original-title="Refresh" data-toggle="tooltip" data-placement="top" data-trigger="hover" class="btn btn-transparent btn-sm panel-refresh" href="#"><i class="fa fa-circle-o"></i></a>
												</div>
												<div class="panel-body no-padding">
													<div class="margin-bottom-10 padding-20">
														<h5 class="text-bold text-extra-small text-dark-transparent text-uppercase no-margin">Expenses YTD <i class="fa fa-arrow-circle-o-right"></i></h5>
														<h2 class="margin-top-15 margin-bottom-10">$30.6M</h2>
														<span class="label background-light text-dark margin-top-10 margin-right-5">+15.3K</span><span class="text-extra-small">+0.05%</span>
													</div>
													<div>
														<canvas id="bar2Chart" class="full-width height-75 block"></canvas>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="panel panel-white no-radius no-border">
												<div class="panel-tools">
													<a data-original-title="Refresh" data-toggle="tooltip" data-placement="top" data-trigger="hover" class="btn btn-transparent btn-sm panel-refresh" href="#"><i class="fa fa-circle-o"></i></a>
												</div>
												<div class="panel-body no-padding">
													<div class="padding-20 margin-bottom-10">
														<h5 class="text-bold text-extra-small text-dark-transparent text-uppercase no-margin">Real-Time <i class="fa fa-arrow-circle-o-right"></i></h5>
														<div class="block text-center">
															<h2 class="text-bold margin-top-5 margin-bottom-5 random-user"></h2>
															<span class="text-dark-transparent margin-bottom-15 block">active users on site</span>
															<div class="height-80">
																<div class="inline-block margin-right-25 text-light">
																	<input type="text" class="dial" value="65">
																	<span class="block">CPU used</span>
																</div>
																<div class="inline-block text-light">
																	<input type="text" class="dial" value="65">
																	<span class="block">RAM used</span>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-5">
									<div class="panel panel-white no-radius">
										<div class="panel-heading border-bottom">
											<h4 class="panel-title">Sales Performance</h4>
											<div class="panel-tools">
												<a data-original-title="Refresh" data-toggle="tooltip" data-placement="top" data-trigger="hover" class="btn btn-transparent btn-sm panel-refresh" href="#"><i class="fa fa-circle-o"></i></a>
												<a data-original-title="Expand" data-toggle="tooltip" data-placement="top" data-trigger="hover" class="btn btn-transparent btn-sm panel-expand" href="#"><i class="fa fa-compress expand-on"></i><i class="fa fa-expand expand-off"></i></a>
											</div>
										</div>
										<div class="panel-body padding-20">
											<div class="margin-bottom-30">
												<p class="text-black">
													Key strengths of sales force
												</p>
												<h3><i class="fa fa-sort-up small text-red margin-right-5"></i><span class="text-bold text-dark margin-right-10">10.6m</span><span class="text-grey">(53%)</span></h3>
												<p>
													<span class="text-light margin-right-5">Source:</span><span>CT Sales Skills Audit</span>
												</p>
											</div>
											<div class="margin-top-25">
												<div>
													<canvas id="salesChart" class="full-width height-230"></canvas>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: SECOND SECTION -->
						<!-- start: THIRD SECTION -->
						<div class="container-fluid container-fullw padding-bottom-10">
							<div class="row">
								<div class="col-md-12 col-lg-7">
									<div class="panel panel-white no-radius" id="panelsocial">
										<div class="panel-heading border-light">
											<h4 class="panel-title">Social Marketing</h4>
											<div class="panel-tools">
												<a data-original-title="Collapse" data-toggle="tooltip" data-placement="top" data-trigger="hover" class="btn btn-transparent btn-sm panel-collapse" href="#"><i class="ti-minus collapse-off"></i><i class="ti-plus collapse-on"></i></a>
												<a data-original-title="Close" data-toggle="tooltip" data-placement="top" data-trigger="hover" class="btn btn-transparent btn-sm panel-close" href="#"><i class="ti-close"></i></a>
											</div>
										</div>
										<div class="panel-wrapper">
											<div class="panel-body no-padding">
												<div class="row">
													<div class="col-sm-6">
														<div class="padding-10 block text-center">
															<p>
																<span class="text-bold">Social Traffic</span><span class="text-light"> (7 days)</span>
															</p>
															<div>
																<span class="mini-pie-150"><canvas id="social3Chart"></canvas></span>
															</div>
															<h4><i class="fa fa-sort-up small text-green margin-right-5"></i><span class="text-bold text-dark margin-right-10">Facebook</span><span class="text-grey">(43.98%)</span></h4>
														</div>
													</div>
													<div class="col-sm-6">
														<div class="padding-10 block text-center">
															<p>
																<span class="text-bold">Social Traffic</span><span class="text-light"> (30 days)</span>
															</p>
															<div>
																<span class="mini-pie-150"><canvas id="social4Chart"></canvas></span>
															</div>
															<h4><i class="fa fa-sort-up small text-green margin-right-5"></i><span class="text-bold text-dark margin-right-10">Twitter</span><span class="text-grey">(72.11%)</span></h4>
														</div>
													</div>
												</div>
											</div>
											<div class="panel-footer border-light">
												<div class="clearfix padding-5 padding-top-10 padding-bottom-10 space5">
													<div class="col-xs-6 text-center no-padding">
														<div class="border-right border-light">
															<span class="text-bold block text-extra-large">34,468</span>
															<span class="text-light text-extra-small">Male Fans</span>
														</div>
													</div>
													<div class="col-xs-6 text-center no-padding">
														<div>
															<span class="text-bold block text-extra-large">28,657</span>
															<span class="text-light text-extra-small">Female Fans</span>
														</div>
													</div>
												</div>
												<p class="margin-top-15">
													<a href="#"><i class="fa fa-arrow-circle-o-down text-green"></i></a>
													<span class="text-light margin-left-10">Show more details </span>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12 col-lg-5">
									<div class="panel panel-white no-radius">
										<div class="panel-heading border-bottom">
											<h4 class="panel-title">Campaign Options</h4>
											<div class="panel-tools">
												<a data-original-title="Expand" data-toggle="tooltip" data-placement="top" data-trigger="hover" class="btn btn-transparent btn-sm panel-expand" href="#"><i class="fa fa-compress expand-on"></i><i class="fa fa-expand expand-off"></i></a>
												<a data-original-title="Close" data-toggle="tooltip" data-placement="top" data-trigger="hover" class="btn btn-transparent btn-sm panel-close" href="#"><i class="ti-close"></i></a>
											</div>
										</div>
										<div class="panel-body">
											<p>
												<span class="text-bold">Daily Budget</span><span class="text-light"> (USD)</span>
											</p>
											<div class="slider-wrapper slider-green">
												<span class="slider-label">1 $</span>
												<span class="slider-label slider-label-to">100 $</span>
												<input type="text" name="daily" data-provide="slider" data-slider-min="1" data-slider-max="100" data-slider-tooltip="always" data-slider-value="25" class="budegt-slider">
											</div>
											<p class="padding-top-15">
												<span class="text-bold">Total Budget</span><span class="text-light"> (USD)</span>
											</p>
											<div class="slider-wrapper slider-purple">
												<span class="slider-label">100 $</span>
												<span class="slider-label slider-label-to">1000 $</span>
												<input type="text" name="daily" data-provide="slider" data-slider-min="100" data-slider-max="1000" data-slider-tooltip="always" data-slider-value="750" class="budegt-slider">
											</div>
											<div class="padding-top-5">
												<p class="text-bold">
													Estimated Daily Reach
												</p>
												<hr class="margin-top-15 margin-bottom-15" />
												<p class="text-bold text-small">
													5,300 - 14,000 people
												</p>
												<div class="progress progress-sm no-radius background-dark no-margin">
													<div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
														<span class="sr-only"> 25% </span>
													</div>
												</div>
												<p class="no-margin">
													<span class="text-extra-small text-light pull-left">0</span>
													<span class="text-extra-small text-light pull-right">of 18,000,000</span>
												</p>
											</div>
										</div>
										<div class="panel-footer no-border">
											<p class="no-margin">
												<a href="#"><i class="fa fa-arrow-circle-o-down text-green"></i></a>
												<span class="text-light margin-left-10">Show more details </span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: THIRD SECTION -->
						<!-- start: FOURTH SECTION -->
						<div class="container-fluid container-fullw">
							<div class="row">
								<div class="col-xs-12 col-sm-8">
									<div class="panel panel-white">
										<div class="panel-heading border-bottom">
											<h4 class="panel-title">Latest posts</h4>
										</div>
										<div class="panel-body">
											<div class="row">
												<div class="col-lg-6">
													<ul class="media-list margin-top-15">
														<li class="media margin-bottom-30">
															<div class="media-left">
																<a href="#">
																<div class="icons-effect">
																	<img src="assets/images/portfolio/image01_th.jpg" class="img-responsive img-rounded img-media" alt="">
																	<div class="mask mask-rounded">
																		<div class="icons-wrapper">
																			<div class="icons">
																				<a href="#" class="icon"> <span class="fa-stack fa-2x"> <i class="fa fa-circle fa-stack-2x text-white"></i> <i class="fa fa-search fa-stack-1x text-extra-large text-light"></i> </span> </a>
																			</div>
																		</div>
																	</div>
																</div> </a>
															</div>
															<div class="media-body">
																<h5 class="media-heading"><a href="#"> Where does Angular come in? </a></h5>
																<ul class="list-inline margin-top-5 margin-bottom-5 text-light text-small">
																	<li>
																		<i class="fa fa-play-circle-o"></i> Video tutorials
																	</li>
																	<li>
																		<i class="fa fa-clock-o"></i> 1 minutes ago
																	</li>
																</ul>
																Etiam fringilla vestibulum lacinia. Integer elit orci, blandit non luctus ut...
															</div>
														</li>
														<li class="media margin-bottom-30">
															<div class="media-left">
																<a href="#">
																<div class="icons-effect">
																	<img src="assets/images/portfolio/image02_th.jpg" class="img-responsive img-rounded img-media" alt="">
																	<div class="mask mask-rounded">
																		<div class="icons-wrapper">
																			<div class="icons">
																				<a href="#" class="icon"> <span class="fa-stack fa-2x"> <i class="fa fa-circle fa-stack-2x text-white"></i> <i class="fa fa-search fa-stack-1x text-extra-large text-light"></i> </span> </a>
																			</div>
																		</div>
																	</div>
																</div> </a>
															</div>
															<div class="media-body">
																<h5 class="media-heading"><a href="#"> How Google Uses Angular 2 with Dart </a></h5>
																<ul class="list-inline margin-top-5 margin-bottom-5 text-light text-small">
																	<li>
																		<i class="fa fa-play-circle-o"></i> Video tutorials
																	</li>
																	<li>
																		<i class="fa fa-clock-o"></i> 3 minutes ago
																	</li>
																</ul>
																Vivamus maximus convallis risus id aliquam. Nunc diam dui, fermentum...
															</div>
														</li>
														<li class="media margin-bottom-15">
															<div class="media-left">
																<a href="#">
																<div class="icons-effect">
																	<img src="assets/images/portfolio/image03_th.jpg" class="img-responsive img-rounded img-media" alt="">
																	<div class="mask mask-rounded">
																		<div class="icons-wrapper">
																			<div class="icons">
																				<a href="#" class="icon"> <span class="fa-stack fa-2x"> <i class="fa fa-circle fa-stack-2x text-white"></i> <i class="fa fa-search fa-stack-1x text-extra-large text-light"></i> </span> </a>
																			</div>
																		</div>
																	</div>
																</div> </a>
															</div>
															<div class="media-body">
																<h5 class="media-heading"><a href="#"> Multi-slot transclusion </a></h5>
																<ul class="list-inline margin-top-5 margin-bottom-5 text-light text-small">
																	<li>
																		<i class="fa fa-clock-o"></i> 6 minutes ago
																	</li>
																</ul>
																Quisque vehicula nec lacus id consequat. Duis tempor metus non tellus...
															</div>
														</li>
													</ul>
												</div>
												<div class="col-lg-6">
													<ul class="media-list margin-top-15">
														<li class="media margin-bottom-30">
															<div class="media-left">
																<a href="#">
																<div class="icons-effect">
																	<img src="assets/images/portfolio/image04_th.jpg" class="img-responsive img-rounded img-media" alt="">
																	<div class="mask mask-rounded">
																		<div class="icons-wrapper">
																			<div class="icons">
																				<a href="#" class="icon"> <span class="fa-stack fa-2x"> <i class="fa fa-circle fa-stack-2x text-white"></i> <i class="fa fa-search fa-stack-1x text-extra-large text-light"></i> </span> </a>
																			</div>
																		</div>
																	</div>
																</div> </a>
															</div>
															<div class="media-body">
																<h5 class="media-heading"><a href="#"> Command Line Interface </a></h5>
																<ul class="list-inline margin-top-5 margin-bottom-5 text-light text-small">
																	<li>
																		<i class="fa fa-clock-o"></i> 1 minutes ago
																	</li>
																</ul>
																Curabitur nibh sem, consequat nec euismod a, volutpat vitae justo...
															</div>
														</li>
														<li class="media margin-bottom-30">
															<div class="media-left">
																<a href="#">
																<div class="icons-effect">
																	<img src="assets/images/portfolio/image05_th.jpg" class="img-responsive img-rounded img-media" alt="">
																	<div class="mask mask-rounded">
																		<div class="icons-wrapper">
																			<div class="icons">
																				<a href="#" class="icon"> <span class="fa-stack fa-2x"> <i class="fa fa-circle fa-stack-2x text-white"></i> <i class="fa fa-search fa-stack-1x text-extra-large text-light"></i> </span> </a>
																			</div>
																		</div>
																	</div>
																</div> </a>
															</div>
															<div class="media-body">
																<h5 class="media-heading"><a href="#"> Tools, Libraries, Books, and Training </a></h5>
																<ul class="list-inline margin-top-5 margin-bottom-5 text-light text-small">
																	<li>
																		<i class="fa fa-play-circle-o"></i> Video tutorials
																	</li>
																	<li>
																		<i class="fa fa-clock-o"></i> 7 minutes ago
																	</li>
																</ul>
																Nulla egestas et nulla in imperdiet. Sed nec ipsum pharetra, tincidunt mi ut...
															</div>
														</li>
														<li class="media margin-bottom-15">
															<div class="media-left">
																<a href="#">
																<div class="icons-effect">
																	<img src="assets/images/portfolio/image06_th.jpg" class="img-responsive img-rounded img-media" alt="">
																	<div class="mask mask-rounded">
																		<div class="icons-wrapper">
																			<div class="icons">
																				<a href="#" class="icon"> <span class="fa-stack fa-2x"> <i class="fa fa-circle fa-stack-2x text-white"></i> <i class="fa fa-search fa-stack-1x text-extra-large text-light"></i> </span> </a>
																			</div>
																		</div>
																	</div>
																</div> </a>
															</div>
															<div class="media-body">
																<h5 class="media-heading"><a href="#"> Angular 1 and Angular 2 integration </a></h5>
																<ul class="list-inline margin-top-5 margin-bottom-5 text-light text-small">
																	<li>
																		<i class="fa fa-play-circle-o"></i> Video tutorials
																	</li>
																	<li>
																		<i class="fa fa-clock-o"></i> 10 minutes ago
																	</li>
																</ul>
																Vivamus vitae pharetra libero. Donec ultrices porta leo. Quisque massa sapien...
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4">
									<div class="panel panel-white no-radius">
										<div class="panel-heading border-bottom">
											<h4 class="panel-title">Comments</h4>
										</div>
										<div class="panel-body">
											<div class="media padding-left-10 padding-right-10">
												<a href="#" class="pull-left"> <img alt="image" class="img-circle" src="assets/images/avatar-2.jpg"> </a>
												<div class="media-body ">
													<small class="pull-right text-light">5 mins ago</small>
													<strong>Nicole Bell</strong> posted on your <strong>timeline</strong>.
													<br>
													<small class="text-light">125 Likes - 12 Comments - 25 Shares</small>
													<div class="well padding-15 margin-top-15">
														In placerat feugiat odio a ullamcorper. Aliquam vel justo vel nisl sollicitudin bibendum. Donec a vehicula risus, a pellentesque metus.
													</div>
													<div class="pull-right">
														<a class="btn btn-xs btn-default"><i class="fa fa-thumbs-up"></i> Like </a>
													</div>
												</div>
											</div>
											<div class="media padding-left-10 padding-right-10">
												<a href="#" class="pull-left"> <img alt="image" class="img-circle" src="assets/images/avatar-3.jpg"> </a>
												<div class="media-body ">
													<small class="pull-right text-light">12 mins ago</small>
													<strong>Steven Thompson</strong> posted on your <strong>timeline</strong>.
													<br>
													<small class="text-light">111 Likes - 28 Comments - 9 Shares</small>
													<div class="well padding-15 margin-top-15">
														Praesent egestas vehicula arcu, eu tincidunt lacus porta quis. Ut turpis metus.
													</div>
													<div class="pull-right">
														<a class="btn btn-xs btn-default"><i class="fa fa-thumbs-up"></i> Like </a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: FOURTH SECTION -->--%>
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
			<footer>
				<div class="footer-inner">
					<div class="pull-left">
						&copy; <span class="current-year"></span><span class="text-bold text-uppercase"> ClipTheme</span>. <span>All rights reserved</span>
					</div>
					<div class="pull-right">
						<span class="go-top"><i class="ti-angle-up"></i></span>
					</div>
				</div>
			</footer>
			<!-- end: FOOTER -->
			<!-- start: OFF-SIDEBAR -->
			<div id="off-sidebar" class="sidebar">
				<div class="sidebar-wrapper">
					<ul class="nav nav-tabs nav-justified">
						<li class="active">
							<a href="#off-users" aria-controls="off-users" role="tab" data-toggle="tab"> <i class="ti-comments"></i> </a>
						</li>
						<li>
							<a href="#off-favorites" aria-controls="off-favorites" role="tab" data-toggle="tab"> <i class="ti-heart"></i> </a>
						</li>
						<li>
							<a href="#off-settings" aria-controls="off-settings" role="tab" data-toggle="tab"> <i class="ti-settings"></i> </a>
						</li>
					</ul>
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="off-users">
							<div id="users" active-class="chat-open">
								<div class="users-list">
									<div class="sidebar-content perfect-scrollbar">
										<h5 class="sidebar-title">On-line</h5>
										<ul class="media-list">
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <i class="fa fa-circle status-online"></i> <img alt="..." src="assets/images/avatar-2.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Nicole Bell</h4>
													<span> Content Designer </span>
												</div> </a>
											</li>
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#">
												<div class="user-label">
													<span class="label label-success">3</span>
												</div> <i class="fa fa-circle status-online"></i> <img alt="..." src="assets/images/avatar-3.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Steven Thompson</h4>
													<span> Visual Designer </span>
												</div> </a>
											</li>
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <i class="fa fa-circle status-online"></i> <img alt="..." src="assets/images/avatar-4.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Ella Patterson</h4>
													<span> Web Editor </span>
												</div> </a>
											</li>
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <i class="fa fa-circle status-online"></i> <img alt="..." src="assets/images/avatar-5.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Kenneth Ross</h4>
													<span> Senior Designer </span>
												</div> </a>
											</li>
										</ul>
										<h5 class="sidebar-title">Off-line</h5>
										<ul class="media-list">
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <img alt="..." src="assets/images/avatar-6.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Nicole Bell</h4>
													<span> Content Designer </span>
												</div> </a>
											</li>
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#">
												<div class="user-label">
													<span class="label label-success">3</span>
												</div> <img alt="..." src="assets/images/avatar-7.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Steven Thompson</h4>
													<span> Visual Designer </span>
												</div> </a>
											</li>
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <img alt="..." src="assets/images/avatar-8.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Ella Patterson</h4>
													<span> Web Editor </span>
												</div> </a>
											</li>
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <img alt="..." src="assets/images/avatar-9.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Kenneth Ross</h4>
													<span> Senior Designer </span>
												</div> </a>
											</li>
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <img alt="..." src="assets/images/avatar-10.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Ella Patterson</h4>
													<span> Web Editor </span>
												</div> </a>
											</li>
											<li class="media">
												<a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <img alt="..." src="assets/images/avatar-5.jpg" class="media-object">
												<div class="media-body">
													<h4 class="media-heading">Kenneth Ross</h4>
													<span> Senior Designer </span>
												</div> </a>
											</li>
										</ul>
									</div>
								</div>
								<div class="user-chat">
									<div class="chat-content">
										<a class="sidebar-back pull-left" href="#" data-toggle-class="chat-open" data-toggle-target="#users"><i class="ti-angle-left"></i> <span>Back</span></a>
										<div class="sidebar-content perfect-scrollbar">
											<ol class="discussion">
												<li class="messages-date">
													Sunday, Feb 9, 12:58
												</li>
												<li class="self">
													<div class="message">
														<div class="message-name">
															Peter Clark
														</div>
														<div class="message-text">
															Hi, Nicole
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															How are you?
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="other">
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															Hi, i am good
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-2.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="self">
													<div class="message">
														<div class="message-name">
															Peter Clark
														</div>
														<div class="message-text">
															Glad to see you ;)
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="messages-date">
													Sunday, Feb 9, 13:10
												</li>
												<li class="other">
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															What do you think about my new Dashboard?
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-2.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="messages-date">
													Sunday, Feb 9, 15:28
												</li>
												<li class="other">
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															Alo...
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-2.jpg" alt="">
														</div>
													</div>
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															Are you there?
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-2.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="self">
													<div class="message">
														<div class="message-name">
															Peter Clark
														</div>
														<div class="message-text">
															Hi, i am here
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															Your Dashboard is great
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="messages-date">
													Friday, Feb 7, 23:39
												</li>
												<li class="other">
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															How does the binding and digesting work in AngularJS?, Peter?
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-2.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="self">
													<div class="message">
														<div class="message-name">
															Peter Clark
														</div>
														<div class="message-text">
															oh that's your question?
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
													<div class="message">
														<div class="message-name">
															Peter Clark
														</div>
														<div class="message-text">
															little reduntant, no?
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
													<div class="message">
														<div class="message-name">
															Peter Clark
														</div>
														<div class="message-text">
															literally we get the question daily
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="other">
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															I know. I, however, am not a nerd, and want to know
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-2.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="self">
													<div class="message">
														<div class="message-name">
															Peter Clark
														</div>
														<div class="message-text">
															for this type of question, wouldn't it be better to try Google?
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-1.jpg" alt="">
														</div>
													</div>
												</li>
												<li class="other">
													<div class="message">
														<div class="message-name">
															Nicole Bell
														</div>
														<div class="message-text">
															Lucky for us :)
														</div>
														<div class="message-avatar">
															<img src="assets/images/avatar-2.jpg" alt="">
														</div>
													</div>
												</li>
											</ol>
										</div>
									</div>
									<div class="message-bar">
										<div class="message-inner">
											<a class="link icon-only" href="#"><i class="fa fa-camera"></i></a>
											<div class="message-area">
												<textarea placeholder="Message"></textarea>
											</div>
											<a class="link" href="#"> Send </a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="off-favorites">
							<div class="users-list">
								<div class="sidebar-content perfect-scrollbar">
									<h5 class="sidebar-title">Favorites</h5>
									<ul class="media-list">
										<li class="media">
											<a href="#"> <img alt="..." src="assets/images/avatar-7.jpg" class="media-object">
											<div class="media-body">
												<h4 class="media-heading">Nicole Bell</h4>
												<span> Content Designer </span>
											</div> </a>
										</li>
										<li class="media">
											<a href="#">
											<div class="user-label">
												<span class="label label-success">3</span>
											</div> <img alt="..." src="assets/images/avatar-6.jpg" class="media-object">
											<div class="media-body">
												<h4 class="media-heading">Steven Thompson</h4>
												<span> Visual Designer </span>
											</div> </a>
										</li>
										<li class="media">
											<a href="#"> <img alt="..." src="assets/images/avatar-10.jpg" class="media-object">
											<div class="media-body">
												<h4 class="media-heading">Ella Patterson</h4>
												<span> Web Editor </span>
											</div> </a>
										</li>
										<li class="media">
											<a href="#"> <img alt="..." src="assets/images/avatar-2.jpg" class="media-object">
											<div class="media-body">
												<h4 class="media-heading">Kenneth Ross</h4>
												<span> Senior Designer </span>
											</div> </a>
										</li>
										<li class="media">
											<a href="#"> <img alt="..." src="assets/images/avatar-4.jpg" class="media-object">
											<div class="media-body">
												<h4 class="media-heading">Ella Patterson</h4>
												<span> Web Editor </span>
											</div> </a>
										</li>
										<li class="media">
											<a href="#"> <img alt="..." src="assets/images/avatar-5.jpg" class="media-object">
											<div class="media-body">
												<h4 class="media-heading">Kenneth Ross</h4>
												<span> Senior Designer </span>
											</div> </a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="off-settings">
							<div class="sidebar-content perfect-scrollbar">
								<h5 class="sidebar-title">General Settings</h5>
								<ul class="media-list">
									<li class="media">
										<div class="padding-10">
											<div class="display-table-cell">
												<input type="checkbox" class="js-switch" checked />
											</div>
											<span class="display-table-cell vertical-align-middle padding-left-10">Enable Notifications</span>
										</div>
									</li>
									<li class="media">
										<div class="padding-10">
											<div class="display-table-cell">
												<input type="checkbox" class="js-switch" />
											</div>
											<span class="display-table-cell vertical-align-middle padding-left-10">Show your E-mail</span>
										</div>
									</li>
									<li class="media">
										<div class="padding-10">
											<div class="display-table-cell">
												<input type="checkbox" class="js-switch" checked />
											</div>
											<span class="display-table-cell vertical-align-middle padding-left-10">Show Offline Users</span>
										</div>
									</li>
									<li class="media">
										<div class="padding-10">
											<div class="display-table-cell">
												<input type="checkbox" class="js-switch" checked />
											</div>
											<span class="display-table-cell vertical-align-middle padding-left-10">E-mail Alerts</span>
										</div>
									</li>
									<li class="media">
										<div class="padding-10">
											<div class="display-table-cell">
												<input type="checkbox" class="js-switch" />
											</div>
											<span class="display-table-cell vertical-align-middle padding-left-10">SMS Alerts</span>
										</div>
									</li>
								</ul>
								<div class="save-options">
									<button class="btn btn-success">
										<i class="icon-settings"></i><span>Save Changes</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end: OFF-SIDEBAR -->
			<!-- start: SETTINGS -->
			<div class="settings panel panel-default hidden-xs hidden-sm" id="settings">
				<button data-toggle-class="active" data-toggle-target="#settings" class="btn btn-default">
					<i class="fa fa-spin fa-gear"></i>
				</button>
				<div class="panel-heading">
					Style Selector
				</div>
				<div class="panel-body">
					<!-- start: FIXED HEADER -->
					<div class="setting-box clearfix">
						<span class="setting-title pull-left"> Fixed header</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-header" />
						</span>
					</div>
					<!-- end: FIXED HEADER -->
					<!-- start: FIXED SIDEBAR -->
					<div class="setting-box clearfix">
						<span class="setting-title pull-left">Fixed sidebar</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-sidebar" />
						</span>
					</div>
					<!-- end: FIXED SIDEBAR -->
					<!-- start: CLOSED SIDEBAR -->
					<div class="setting-box clearfix">
						<span class="setting-title pull-left">Closed sidebar</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="closed-sidebar" />
						</span>
					</div>
					<!-- end: CLOSED SIDEBAR -->
					<!-- start: FIXED FOOTER -->
					<div class="setting-box clearfix">
						<span class="setting-title pull-left">Fixed footer</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-footer" />
						</span>
					</div>
					<!-- end: FIXED FOOTER -->
					<!-- start: THEME SWITCHER -->
					<div class="colors-row setting-box">
						<div class="color-theme lyt2-theme-1">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="lyt2-theme-1">
									<span class="fa fa-check-circle lyt-check text-extra-large"></span> <span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"><i class="color-button"></i></span> </span> <span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span> </label>
							</div>
						</div>
						<div class="color-theme lyt2-theme-2">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="lyt2-theme-2">
									<span class="fa fa-check-circle lyt-check text-extra-large"></span> <span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"><i class="color-button"></i></span> </span> <span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span> </label>
							</div>
						</div>
					</div>
					<div class="colors-row setting-box">
						<div class="color-theme lyt2-theme-3">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="lyt2-theme-3">
									<span class="fa fa-check-circle lyt-check text-extra-large"></span> <span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"><i class="color-button"></i></span> </span> <span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span> </label>
							</div>
						</div>
						<div class="color-theme lyt2-theme-4">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="lyt2-theme-4">
									<span class="fa fa-check-circle lyt-check text-extra-large"></span> <span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"><i class="color-button"></i></span> </span> <span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span> </label>
							</div>
						</div>
					</div>
					<div class="colors-row setting-box">
						<div class="color-theme lyt2-theme-5">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="lyt2-theme-5">
									<span class="fa fa-check-circle lyt-check text-extra-large"></span> <span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"><i class="color-button"></i></span> </span> <span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span> </label>
							</div>
						</div>
						<div class="color-theme lyt2-theme-6">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="lyt2-theme-6">
									<span class="fa fa-check-circle lyt-check text-extra-large"></span> <span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"><i class="color-button"></i></span> </span> <span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span> </label>
							</div>
						</div>
					</div>
					<!-- end: THEME SWITCHER -->
					<div class="panel-footer">
						<button class="btn btn-primary ladda-button btn-squared btn-sm btn-o" data-style="slide-up" data-spinner-size="10" data-spinner-color="#999999" id="reset-layout">
							<span class="ladda-label">Reset</span>
						</button>
						<button class="btn btn-primary ladda-button pull-right btn-squared btn-sm btn-wide" data-style="slide-up" data-spinner-size="10" id="save-layout">
							<span class="ladda-label">Save</span>
						</button>
					</div>
				</div>
			</div>
			<!-- end: SETTINGS -->
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
		<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="../../bower_components/components-modernizr/modernizr.js"></script>
		<script src="../../bower_components/js-cookie/src/js.cookie.js"></script>
		<script src="../../bower_components/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js"></script>
		<script src="../../bower_components/jquery-fullscreen/jquery.fullscreen-min.js"></script>
		<script src="../../bower_components/switchery/dist/switchery.min.js"></script>
		<script src="../../bower_components/jquery.knobe/dist/jquery.knob.min.js"></script>
		<script src="../../bower_components/seiyria-bootstrap-slider/dist/bootstrap-slider.min.js"></script>
		<script src="../../bower_components/slick.js/slick/slick.min.js"></script>
		<script src="../../bower_components/jquery-numerator/jquery-numerator.js"></script>
		<script src="../../bower_components/ladda/dist/spin.min.js"></script>
		<script src="../../bower_components/ladda/dist/ladda.min.js"></script>
		<script src="../../bower_components/ladda/dist/ladda.jquery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="../../bower_components/Chart-js/Chart.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: Packet JAVASCRIPTS -->
		<script src="assets/js/letter-icons.js"></script>
		<script src="assets/js/main.js"></script>
		<!-- end: Packet JAVASCRIPTS -->
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assets/js/index.js"></script>
		<script>
		    jQuery(document).ready(function () {
		        Main.init();
		        Index.init();
		    });
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
    </form>
</body>
</html>
