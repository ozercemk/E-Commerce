<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TopMenu.ascx.cs" Inherits="Controls_TopMenu" %>
<style type="text/css">
    .style1
    {
        width: 100%;
            height: 20px;
    }
   
    .style20
    {
        width: 137px;
        height: 20px;
    }
 
</style>

      <div>
 <table class="style1">
          <tr>
              <td>INTERFACE PAGES</td>
          </tr>
                  <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/Products.aspx">Ürün Ekleme</asp:HyperLink>
                    </td>
                 </tr>
                 <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/Category.aspx">Category Ekleme</asp:HyperLink>
                    </td>
                 </tr>
                <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/SliderMain.aspx">Slider Resim  Ekleme</asp:HyperLink>
                    </td>
                </tr>

                <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/Campaigns.aspx"> Kampanya Ekleme</asp:HyperLink>
                    </td>
               </tr>

                <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/SliderCategory.aspx">Slider Kategory Resim  Ekleme</asp:HyperLink>
                    </td>
               </tr>

                <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/TopDeals.aspx">Deal  Ekleme</asp:HyperLink>
                    </td>
               </tr>
               <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/SliderContainer.aspx">Alt Slide Ekle</asp:HyperLink>
                    </td>
               </tr>

              <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/LatestDeals.aspx">Son Kampanyalar</asp:HyperLink>
                    </td>
               </tr>

       <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/BannerAlt.aspx">Banner Alt</asp:HyperLink>
                    </td>
               </tr>

      <tr>
                    <td class="style20">
                     <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/AdminPanel/AdminPages/Customize/AnaMenu/BlogProducts.aspx">Blog</asp:HyperLink>
                    </td>
               </tr>
      </table>
      
 
 </div>