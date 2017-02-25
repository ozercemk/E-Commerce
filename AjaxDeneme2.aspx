<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxDeneme2.aspx.cs" Inherits="AjaxDeneme2"  EnableViewState="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <script src="http://code.jquery.com/jquery-1.11.1.min.js" 
    type="text/javascript"></script>

   <script type = "text/javascript">

       $(document).ready(function () {



           $("#btnShowData").click(function (event) {
               event.preventDefault();
               ShowCurrentTime()
           });
           function ShowCurrentTime() {

               var formData = $("#form1").serializeArray();
               $.each(formData,function(index,nesne)
               {
                   $("#result").append(nesne.value + " ");
               });

              // alert($("#<%= FirstName.ClientID %>").val());
               //alert(form: $("#form1").serializeArray());
              <%-- var Json_Data = $("#<%=Label1.ClientID%>").text();
               var obj = {};
               obj.FirstName = $.trim($("[id*=FirstName]").val());
               obj.LastName = $.trim($("[id*=LastName]").val());
               var frm = $(document.form1);
               var data = JSON.stringify(frm.serializeArray());
               alert(data);--%>
               $.ajax({
                   type: "POST",
                   url: "AjaxDeneme2.aspx/GetCurrentTime",
                 //  data: '{ FirstName:"' + $("#<%=FirstName.ClientID%>").val() + '",LastName:"' + $("#<%=LastName.ClientID%>").val() + '"}',
          //data: JSON.stringify(obj),
                  
                   contentType: "application/json; charset=utf-8",
                   dataType: "json",
                   success: OnSuccess,
                   failure: function (response) {
                       alert(response.responseText);
                   }
               });
           }
           function OnSuccess(response) {
               $("#result").html(response.d);
           }
       });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <%--<div>
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
    </div>--%>
        <asp:Label ID="Label1" runat="server" Text="Json String : "></asp:Label><br />
        Your Name :
<asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
<input id="btnShowData" type="button" value="Show Current Time" />
        <span id="result"></span>

          <script type="text/javascript" src="assets/lib/jquery/jquery-1.11.2.min.js"></script>
    </form>
</body>
</html>
