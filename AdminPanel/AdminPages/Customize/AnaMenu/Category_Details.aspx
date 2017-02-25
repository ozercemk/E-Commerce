<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category_Details.aspx.cs"  EnableEventValidation="false"  ValidateRequest="false" Inherits="AdminPanel_AdminPages_Admin" %>

<%@ Register src="~/AdminPanel/AdminPages/Customize/AnaMenu/Top/TopMenu.ascx" tagname="TopMenu" tagprefix="uc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head runat="server"> 
  	<title>Yönetici Paneli</title>
  	<meta http-equiv="content-type" content="text/html; charset=utf-8" />	
    <link rel="stylesheet" href="../../../css/styleGlobalpages.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="../../../css/slideGlobalpages.css" type="text/css" media="screen" />
	<link rel="Stylesheet" href="../../_assets/css/progress.css" />
	<link type='text/css'  href='../../css/demo.css' rel='stylesheet' media='screen' />
    <link type='text/css'  href='../../css/basic.css' rel='stylesheet' media='screen' />
    <script src="../../../js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="../../../js/slide.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../../Jquery/jquery.js"></script>
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
	background: #e9e7e7 url(../../../images/arrow-square.gif) no-repeat right -51px;
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
      <script type="text/javascript" src="../../../../tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
    tinyMCE.init({
        mode: "textareas",
        theme: "advanced",
        plugins: "safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",
        theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
        theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
        theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
        theme_advanced_toolbar_location: "top",
        theme_advanced_toolbar_align: "left",
        theme_advanced_statusbar_location: "bottom",
        theme_advanced_resizing: false,
        template_external_list_url: "js/template_list.js",
        external_link_list_url: "js/link_list.js",
        external_image_list_url: "js/image_list.js",
        media_external_list_url: "js/media_list.js"
    });
</script>
</head>

<body>
<!-- Panel Başlangıç -->
<form id="Admin" runat="server" >

 
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div> <uc1:TopMenu ID="TopMenu1" runat="server" /> </div>
		</div>
</div> 
	<!-- Top Menü -->	
	<div class="tab">
		<ul class="login">
			<li class="left" >&nbsp;</li>
			<li>Merhaba Yönetici! <%= SessionAccess.CRM_User_Email %></li>
			<li class="sep">|</li>
			<li id="toggle">
				<a id="open" class="open" href="#">Giriş</a>
				<a id="close" style="display: none;" class="close" href="#">Kapat</a>			
			</li>
			<li class="right">&nbsp;</li>
		</ul> 
	    
	</div> <!-- / top -->
	
</div> <!--panel Bitiş-->

    <div id="container">
		<div id="content" style="border:solid 3px #c4c4c4; color:Gray; text-align:center;">
		<div class="accordion" style="width:740px;"> <!--Acordion Başlangıç-->
		        <h3>Kayıt Seçenekleri </h3>
	            <p> Yayın Öncesi Kayıt İçin <b>"Kayıt"</b> Güncelle ikon'nu seçtikten sonra çoklu resim yüklemesi ve Video Yüklemesi Aktif Olucaktır.
	                  <asp:LinkButton ID="INSERT" runat="server" onclick="INSERT_Click" 
                        ><< Kayıt >></asp:LinkButton>
                       <asp:Label ID="L_Id" runat="server" Visible="False"></asp:Label>
                       <asp:Label ID="L_islem" runat="server" Visible="False" Text="EKLEME"></asp:Label>
               </p>
               <div>
                <h3>Bölüm Yayınlama Seçenekleri </h3>
	            <p> Bölümün Yayınlanmasını istiyorsanız lütfen kutucugu işaretleyiniz<br />
                    <asp:CheckBox ID="_Check" runat="server"  Text="Yayınla"  Checked="true"  TextAlign="Right"/> 
               </p>
             </div>
	            <h3>Önceki Kayıtlar</h3>
	            <p>Lütfen güncelemek istediğiniz kayıdını yanındaki güncelle iconu'na tıklayınız ve 
                    Aşağıdaki steplerden güncelemenizi yapınız.
	               <asp:DataGrid ID="DataGrid1" runat="server"
	                             AllowPaging="True" 
	                             Width="740px" 
                                 CellPadding="4" 
                                 ForeColor="#333333" 
                                 GridLines="None" 
                                 OnEditCommand="DataGrid1_EditCommand" 
                                 OnDeleteCommand="DataGrid1_DeleteCommand" 
                                 OnItemDataBound="DataGrid1_ItemDataBound" 
                                 OnPageIndexChanged="DataGrid1_PageIndexChanged"
                                 AutoGenerateColumns="False"
                                 AllowSorting="True" PageSize="32" SelectedItemStyle-BorderStyle="Solid" ItemStyle-BorderStyle="Solid">
                        <EditItemStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <AlternatingItemStyle BackColor="White" />
                         <Columns>
                            <asp:BoundColumn DataField="SUB_Category_ID" Visible="False"></asp:BoundColumn>
                         
                            <asp:BoundColumn DataField="Category_Title" HeaderText="Başlık"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Category_Attributes" HeaderText="Başlık"></asp:BoundColumn>
                          
                            <asp:TemplateColumn >
                                 <HeaderTemplate >Güncele</HeaderTemplate>
                                <ItemTemplate >
                                   <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Güncelle" CausesValidation="False"
                                        CommandName="Edit" ImageUrl="~/AdminPanel/AdminPages/images/GridIcons/Update.gif" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            
                              <asp:TemplateColumn>
                             <HeaderTemplate>Sil</HeaderTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Sil" CausesValidation="False"
                                        CommandName="Delete" ImageUrl="~/AdminPanel/AdminPages/images/GridIcons/Delete.gif" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                  </Columns>
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
	            </p>
            	
	            <h3>Lütfen Kat  Başlığı Giriniz </h3>
	            <p> Ürün  için başlık giriniz.<br />
	                    <asp:Label ID="Product_LBL" Visible="true" runat="server" Font-Underline="True"  Font-Bold="True" Text="Başlık :"></asp:Label>
				        <asp:TextBox ID="Txt_Ttl"   Enabled="false"  runat="server" Width="413px" ></asp:TextBox>
		       </p>
                
                   
           <h3>Lütfen  Kategori Özelliklerini  Giriniz </h3>
	            
	            <p>Görünmesini istediğinizKategori Özellik Attributelarını virgül ile ayırarak giriniz.<br /><br />
	               <asp:Label ID="Lbl_Category_Atrributes" runat="server" Font-Underline="True" Font-Bold="True" Text="Kategory Filitreler : "></asp:Label><br /><br />
                   <asp:TextBox ID="Category_Atributes_Txt"  Width="450px" runat="server" ></asp:TextBox>  <br /><br />
	             <asp:Label ID="Lbl_Category_Atributes_Sub" runat="server" Font-Underline="True" Font-Bold="True" Text="Kategory Alt Filitreler : "></asp:Label><br /><br />
                   <asp:TextBox ID="Category_Atributes_Sub_Txt"  runat="server" ></asp:TextBox>
                    
                    <br /> 
	            </p>
                 

</div>
	   </div>
	</div>
	
	</form>
</body>
</html>
