<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxDeneme.aspx.cs" Inherits="AjaxDeneme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script src="http://code.jquery.com/jquery-1.11.1.min.js" 
    type="text/javascript"></script>
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

    <script type="text/javascript">
       
        $(document).ready(function () {



            $("#btnShowData").click(function (event) {
                alert("deneme");

            });
            //$("#btnShowData").click(function ()   
            //{
            //    $("#grdDemo").empty();
            //    BindGridView();
            //});

            //$('#CheckBox1').click(function () {
            //    $('#grdDemo').empty();
             
            //    BindGridView();
            //});

            //$('#ddl2').click(function () {
            //    $('#grdDemo').empty();
            //    BindGridView();
            //});
            $("#ddl2").change(function () {
                $('#DataProduct').empty();
             
                BindGridView();
            });
            //$("select").change(function () {
            //    $('#grdDemo').empty();
            //    BindGridView();
            //}
            //    );
           
                //$("[id*=ddl2]").click(function () {
                //    var ddl2 = $("[id*=ddl2]");
                //    var selectedText = ddl2.find("option:selected").text();
                //    var selectedValue = ddl2.val();
                //    alert("Selected Text: " + selectedText + " Value: " + selectedValue);
                //    return false;
                //});
         
        });

        $('#btnShowData').click(function(e){
           
            e.preventDefalut();  //this line of code will prevent the default behaviour of click event
            // here u  write the code which u want to execute on click of a linkbutton
            alert("DDeneme");
        });
        
        function Contact_Data() {


            $.ajax({
                type: "POST",
                url: "AjaxDeneme.aspx/GetData2",
                contentType: "application/json;charset=utf-8",
                data: '{"Data":"' + selectedValue + '"}',
                dataType: "json",
                success: function (data) {

                    if (data.d.length > 0)
                    {

                        //  $("#grdDemo").append("<tr><th>Title</th>  <th>Description</th>  <th>ProductID</th>   <th>İmage</th></tr>");

                      
                    }
                },
                error: function (ts) {
                    alert(ts.responseText)

                }
            });

        }
     


        function BindGridView() {

            $('.add').on('click', function () {
                var $qty = $(this).closest('p').find('.qty');
                var currentVal = parseInt($qty.val());
                if (!isNaN(currentVal)) {
                    $qty.val(currentVal + 1);
                }
            });
            $('.minus').on('click', function () {
                var $qty = $(this).closest('p').find('.qty');
                var currentVal = parseInt($qty.val());
                if (!isNaN(currentVal) && currentVal > 0) {
                    $qty.val(currentVal - 1);
                }
            });


            var param = $("[id*=ddl2]");
            var selectedText = param.find("option:selected").text();
            var selectedValue = param.val();
            alert(selectedValue);
            //pass the images to Fancybox
            $("#productZoom").bind("click", function (e) {
                var ez = $('#productZoom').data('elevateZoom');

                $.fancybox(ez.getGalleryList());
                return false;
            });

            $.ajax({
                type: "POST",
                url: "AjaxDeneme.aspx/GetData2",
                contentType: "application/json;charset=utf-8",
                data: '{"Data":"' + selectedValue + '"}',
                dataType: "json",
                success: function (data) {

                    if (data.d.length > 0) {

                        //  $("#grdDemo").append("<tr><th>Title</th>  <th>Description</th>  <th>ProductID</th>   <th>İmage</th></tr>");

                        for (var i = 0; i < data.d.length; i++) {
                            //   $("#Lbl").append(data.d[i].Title + "denememe ekleme e") +
                            // $("#DataProduct").append("<tr><td>" +
                            // data.d[i].Title + "</td> <td>" +
                            // data.d[i].Description + "</td> <td>" +
                            // data.d[i].Product_ID + "</td> <td>" +
                            //"<img style='width:90px;height:100px;margin-right:10px; margin-left:15px; ' id=\"productZoom\" src=" + data.d[i].İmage.replace("~/", "") + "  /> </td></tr>");

                            //  $('#PF').attr('class', 'product-full')
                            //  $('#productZoom img').attr("src",data.d[i].İmage.replace("~/", "") );
                            $('#productZoom').attr("src", data.d[0].İmage.replace("~/", ""));
                            ////$("#productZoom").append("<img  id=\"productZoom\" src=" + data.d[i].İmage.replace("~/", "") + "  /> ");
                            //// $("#productZoom").append(data.d[i].İmageZoom.replace("~/", ""));
                            //$('#productLi').attr("style", 'width:90px;height:100px;margin-right:10px; margin-left:15px;').append(
                            //    $('#productId').attr("href", "#").attr("data-image", data.d[i].İmage.replace("~/", "")).attr("data-zoom-image", data.d[i].İmageZoom.replace("~/", "")).append(
                            //     $('#productZoom').attr("src", data.d[0].İmageSmall.replace("~/", "").attr("id", "productZoom"))
                            //    )  //    );


                            $("#DataProduct").append(
                                  "<td><a href=\"#\"  data-image=" + data.d[i].İmage.replace("~/", "") + "  data-zoom-image=" + data.d[i].İmageZoom.replace("~/", "") + "  >" +
                                  "<img style=' border: 1px solid #eaeaea;width:90px;height:100px;margin-right:20px; margin-left:40px; margin-top:5px;margin-bottom:5px; padding-top:10px;padding-bottom:10px; padding-left:20px;   padding-right:20px;' id='productZoom'   src=" + data.d[i].İmageSmall.replace("~/", "") + " /> " +
                                  "</a></td>");

                            // $("#productZoom").elevateZoom({ gallery: 'gallery_01', cursor: 'default', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif' });
                            $("#productZoom").elevateZoom({ zoomType: "inner", containLensZoom: false, gallery: 'gallery_01', cursor: 'crosshair', galleryActiveClass: "active" });
                            //   $("#productZoom").elevateZoom({ zoomType: "inner", cursor: "crosshair" });
                        }
                    }
                },
                error: function (ts) {
                    alert(ts.responseText)

                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
      <%--  <asp:Button ID="btnShowData" runat="server" Text="Get Data" />           
        <asp:CheckBox ID="CheckBox1" runat="server" />--%>
        <asp:Label ID="Lbl" runat="server" Text=""></asp:Label>
        <asp:DropDownList ID="ddl2" runat="server">
    <asp:ListItem Text="Renk Seçiniz" Value="0"  Selected="False"></asp:ListItem>
    <asp:ListItem Text="Mango" Value="22"></asp:ListItem>
    <asp:ListItem Text="Apple" Value="23"></asp:ListItem>
    <asp:ListItem Text="Orange" Value="24"></asp:ListItem>
</asp:DropDownList>
     <asp:GridView ID="grdDemo" runat="server" >
    </asp:GridView>
          <p>
        <img src="http://i.imgur.com/yOadS1c.png" id="minus1" width="20" height="20" class="minus"/>
        <input id="qty1" type="text" value="1" class="qty"/>
            <img id="add1" src="http://i.imgur.com/98cvZnj.png" width="20" height="20" class="add"/>
    </p>
    <p>
        <img src="http://i.imgur.com/yOadS1c.png" id="minus2" width="20" height="20" class="minus"/>
        <input id="qty2" type="text" value="1" class="qty"/>
        <img id="add2" src="http://i.imgur.com/98cvZnj.png" width="20" height="20" class="add"/>
    </p>

         <div class="product-image">
                                    <div id="PF" class="product-full">
                                        <img id="productZoom" runat="server" />
                                    </div>
                                    <div class="product-img-thumb" id="gallery_01">
                                        <ul class="owl-carousel" data-items="3" data-nav="true" data-dots="false" data-margin="40" data-loop="false">
                           <asp:DataList ID="DataProduct" runat="server"  RepeatDirection="Horizontal" RepeatColumns="3" GridLines="None">
                                        
                            </asp:DataList>
                                       </ul>
                                     </div>
                                </div>



          <p>
            İsim  : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
           Email :  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         
           
        </p>
        <p>
          Telefon :   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         
           
           
           
        </p>
        <p>    <asp:Button ID="btnShowData" runat="server" Text="Kayıt et" />
       </p>

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
