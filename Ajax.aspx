<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ajax.aspx.cs" Inherits="Ajax" %>

<!DOCTYPE html>
  
 <html xmlns="http://www.w3.org/1999/xhtml">  
        <head runat="server">  
            <title>Showing Data in ASP.NET Grid View Using jQuery, JSON & AJAX Call</title>  
      
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
 
 <script src="assets/lib/jquery/jquery-3.1.1.min.js"></script>
             <%--   <script type="text/javascript">
                    $(document).ready(function () {
                        $("#btnShowData").click(function () {

                            var param = $("#<%= TextBox1.ClientID %>").val();
                            $.ajax
                            ({
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                url: "Ajax.aspx/GetData",
                               // data: JSON.stringify({ Value: Value }),
                                data: '{"data":"' + param + '"}',
                                dataType: "json", success: function (result) {
                                    for (var i = 0; i < result.d.length; i++) {
                                        $("#grdDemo").append("<tr><td>" +
                                            result.d[i].Title + "</td><td>" +
                                            result.d[i].Description + "</td><td>" +
                                            result.d[i].Price + "</td><td>" +
                                            result.d[i].Product_ID + "</td></tr>");
                                    }
                                }, error: function (result) {
                                    alert("Error");
                                }
                            });
                        });
                    });
                </script> --%> 

               <script type="text/javascript">
                   $(document).ready(function () {
                       $("#btnShowData").click(function () {

                          var param = $("#<%= Data_Txt.ClientID %>").val();
                            $.ajax
                            ({
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                url: "Ajax.aspx/GetData",
                                // data: JSON.stringify({ Value: Value }),
                               data: '{"data":"' + param + '"}',
                               // data:{},
                                dataType: "json", success: function (result) {
                                    
                                    for (var i = 0; i < result.d.length; i++) {
                                        result.d[i].İmage.replace("~/", "")+
                                        result.d[i].Title + "</td><td>" +
                                                result.d[i].Description + "</td><td>" +
                                                result.d[i].Price + "</td><td>" +
                                                result.d[i].Product_ID + "</td></tr>"
                               //          "<div class=\"product-image\">"+
                               //     "<div class=\"product-full\">" +
                               //        "<img id='productZoom' runat='server' /> </div>"+
                               //    " <div class=\"product-img-thumb\" id=\"gallery_01\">"+
                               //        " <ul class=\"owl-carousel\" data-items=\"3\" \"data-nav=\"true\"\" \"data-dots=\"false\"\" \"data-margin=\"40\"\" \"data-loop=\"false\"\">" +
                          
                               //            " <li>"+
                               //              "<a href=\"#\"  data-image='"+ result.d[i].İmage.replace("~/", "") +"' data-zoom-image='"+ result.d[i].İmage.replace("~/", "") +"' > " +
                               //              "<img id=\"productZoom\" src=" + result.d[i].İmage.replace("~/", "") + "  />   </a></li>" 
                                     
                               //       " </ul>"+
                               //     " </div>"+
                               //" </div>"

                                        //$("#Data_Product").append("<li  style='width:90px;height:100px;margin-right:10px; margin-left:15px; '>" +
                                        //     "<a href=\"#\"  data-image='"+ result.d[i].İmage.replace("~/", "") +"' data-zoom-image='"+ result.d[i].İmage.replace("~/", "") +"' > " +
                                        //     "<img id=\"productZoom\" src=" + result.d[i].İmage.replace("~/", "") + "  />   </a></li>" 
                                         
                                        //  );

                                    }

                                    //for (var i = 0; i < result.d.length; i++) {
                                    //    $("#grdDemo").append("<tr><td>" +
                                    //        result.d[i].Title + "</td><td>" +
                                    //        result.d[i].Description + "</td><td>" +
                                    //        result.d[i].Price + "</td><td>" +
                                    //        result.d[i].Product_ID + "</td></tr>");
                                    //}
                                }, error: function (result) {
                                    alert("Error");
                                }
                            });
                        });
                    });
                </script> 

             <script type="text/javascript">
                 $(document).ready(function () {
                     $("#btnShowData").click(function () {

                         var param = $("#<%= Data_Txt.ClientID %>").val();
                           $.ajax
                           ({
                               type: "POST",
                               contentType: "application/json; charset=utf-8",
                               url: "Ajax.aspx/GetData",
                               // data: JSON.stringify({ Value: Value }),
                               data: '{"data":"' + param + '"}',
                               // data:{},
                               dataType: "json", success: function (result) {


                                   $("[id*=Data_Product]").attr("border", "1");
                                   var xmlDoc = $.parseXML(response.d);
                                   var xml = $(xmlDoc);
                                   var customers = xml.find("Table");
                                   var row = $("[id*=Data_Product] tr:last-child").clone(true);
                                   $("[id*=Data_Product] tr:last-child").remove();
                                   $.each(customers, function () {
                                       var customer = $(this);
                                       $(".Title", row).html($(this).find("Title").text());
                                       $(".Description", row).html($(this).find("Description").text());
                                       $(".Product_ID", row).html($(this).find("Product_ID").text());
                                       $("[id*=Data_Product]").append(row);
                                       row = $("[id*=Data_Product] tr:last-child").clone(true);

                                 

                                       //$("#Data_Product").append("<li  style='width:90px;height:100px;margin-right:10px; margin-left:15px; '>" +
                                       //     "<a href=\"#\"  data-image='"+ result.d[i].İmage.replace("~/", "") +"' data-zoom-image='"+ result.d[i].İmage.replace("~/", "") +"' > " +
                                       //     "<img id=\"productZoom\" src=" + result.d[i].İmage.replace("~/", "") + "  />   </a></li>" 

                                       //  );

                                   });

                                   //for (var i = 0; i < result.d.length; i++) {
                                   //    $("#grdDemo").append("<tr><td>" +
                                   //        result.d[i].Title + "</td><td>" +
                                   //        result.d[i].Description + "</td><td>" +
                                   //        result.d[i].Price + "</td><td>" +
                                   //        result.d[i].Product_ID + "</td></tr>");
                                   //}
                               }, error: function (result) {
                                   alert("Error");
                               }
                           });
                       });
                   });
                </script> 
                        </head>  
  
                        <body>  
                                            <br/>  
                                            <br/>  
                             <button id="btnShowData" runat="server">Get Data</button>  
                          
                                              <form id="form1" runat="server" >  
                                                        <asp:TextBox ID="Data_Txt" runat="server" ForeColor="Black"></asp:TextBox>
                              
                              <asp:DataList ID="Data_Product" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" GridLines="None">
                                          <ItemTemplate> 
                                            <li  style="width:90px;height:100px;margin-right:10px; margin-left:15px; ">
                                                <a href="#"  data-image='<%# (((string)Eval("İmage")).Replace("~/",""))%>' data-zoom-image='<%# (((string)Eval("İmage")).Replace("~/",""))%>' >
                                                    <img id="productZoom"  src='<%# (((string)Eval("İmage")).Replace("~/",""))%>'   /> 
                                                </a>
                                            </li>
                                </ItemTemplate>
                            </asp:DataList>   

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
