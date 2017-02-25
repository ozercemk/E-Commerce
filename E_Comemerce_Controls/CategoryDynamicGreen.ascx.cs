using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class E_Comemerce_Controls_CategoryDynamicGreen : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Spor_Category();
        Category_Commerce.Data_Preview("Beyaz Esya", Data_Sublist_Green);
        Category_Commerce.Data_Preview_without_Sub("Spor ve Outdoor",Data_Product, Data_Product_More);

    }


    private void Spor_Category()
    {

        DataTable dt = null;
        dt = db.QP("exec Deal_Stored_Select @P0,@P1,@P2", "TD", "Spor ve Outdoor",3).Tables[0];

        if (dt.Rows.Count > 0)
        {
            try
            {  // Deal 1 
                Deal_Link_1.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                Deal_Link_1.Title = (string)dt.Rows[0]["Title"];
                Deal_Img_1.Src = (string)dt.Rows[0]["İmage"];
                Deal_Img_1.Alt = (string)dt.Rows[0]["Title"];
                Deal_Link_2.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                Deal_Link_2.Title = (string)dt.Rows[0]["Title"];
                Link_Label_1.InnerHtml = (string)dt.Rows[0]["Title"];
                Link_Label_Price_1.InnerHtml = (string)dt.Rows[0]["Price_Reduce"];
                Link_Label_Old_Price_1.InnerHtml = (string)dt.Rows[0]["Price"];
                Link_Label_Sale_Price_1.InnerHtml = "%" + (string)dt.Rows[0]["Price_Ratio_Reduce"];
                Link_Label_Description_1.InnerHtml = (string)dt.Rows[0]["Description"].ToString().Substring(0, 86) + " ...";


                // Deal 4
                Deal_Link_11.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                Deal_Link_11.Title = (string)dt.Rows[0]["Title"];
                Deal_Img_11.Src = (string)dt.Rows[0]["İmage"];
                Deal_Img_11.Alt = (string)dt.Rows[0]["Title"];
                Deal_Link_22.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                Deal_Link_22.Title = (string)dt.Rows[0]["Title"];
                Link_Label_11.InnerHtml = (string)dt.Rows[0]["Title"];
                Link_Label_Price_11.InnerHtml = (string)dt.Rows[0]["Price_Reduce"];
                Link_Label_Old_Price_11.InnerHtml = (string)dt.Rows[0]["Price"];
                Link_Label_Sale_Price_11.InnerHtml = "%" + (string)dt.Rows[0]["Price_Ratio_Reduce"];
                Link_Label_Description_11.InnerHtml = (string)dt.Rows[0]["Description"].ToString().Substring(0, 86) + " ...";


            }
            catch { }

            try
            { // Deal 2 
                Deal_Link_3.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                Deal_Link_3.Title = (string)dt.Rows[1]["Title"];
                Deal_Img_2.Src = (string)dt.Rows[1]["İmage"];
                Deal_Img_2.Alt = (string)dt.Rows[1]["Title"];
                Deal_Link_4.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                Deal_Link_4.Title = (string)dt.Rows[1]["Title"];
                Link_Label_2.InnerHtml = (string)dt.Rows[1]["Title"];
                Link_Label_Price_2.InnerHtml = (string)dt.Rows[1]["Price_Reduce"];
                Link_Label_Old_Price_2.InnerHtml = (string)dt.Rows[1]["Price"];
                Link_Label_Sale_Price_2.InnerHtml = "%" + (string)dt.Rows[1]["Price_Ratio_Reduce"];
                Link_Label_Description_2.InnerHtml = (string)dt.Rows[1]["Description"].ToString().Substring(0, 86) + " ...";


                // Deal 5
                Deal_Link_33.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                Deal_Link_33.Title = (string)dt.Rows[1]["Title"];
                Deal_Img_22.Src = (string)dt.Rows[1]["İmage"];
                Deal_Img_22.Alt = (string)dt.Rows[1]["Title"];
                Deal_Link_44.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                Deal_Link_44.Title = (string)dt.Rows[1]["Title"];
                Link_Label_22.InnerHtml = (string)dt.Rows[1]["Title"];
                Link_Label_Price_22.InnerHtml = (string)dt.Rows[1]["Price_Reduce"];
                Link_Label_Old_Price_22.InnerHtml = (string)dt.Rows[1]["Price"];
                Link_Label_Sale_Price_22.InnerHtml = "%" + (string)dt.Rows[1]["Price_Ratio_Reduce"];
                Link_Label_Description_22.InnerHtml = (string)dt.Rows[1]["Description"].ToString().Substring(0, 86) + " ...";
            }
            catch { }

            try
            {  // Deal 3
                Deal_Link_5.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                Deal_Link_5.Title = (string)dt.Rows[2]["Title"];
                Deal_Img_3.Src = (string)dt.Rows[2]["İmage"];
                Deal_Img_3.Alt = (string)dt.Rows[2]["Title"];
                Deal_Link_6.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                Deal_Link_6.Title = (string)dt.Rows[2]["Title"];
                Link_Label_3.InnerHtml = (string)dt.Rows[2]["Title"];
                Link_Label_Price_3.InnerHtml = (string)dt.Rows[2]["Price_Reduce"];
                Link_Label_Old_Price_3.InnerHtml = (string)dt.Rows[2]["Price"];
                Link_Label_Sale_Price_3.InnerHtml = "%" + (string)dt.Rows[2]["Price_Ratio_Reduce"];
                Link_Label_Description_3.InnerHtml = (string)dt.Rows[2]["Description"].ToString().Substring(0, 86) + " ...";


                // Deal 6
                Deal_Link_55.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                Deal_Link_55.Title = (string)dt.Rows[2]["Title"];
                Deal_Img_33.Src = (string)dt.Rows[2]["İmage"];
                Deal_Img_33.Alt = (string)dt.Rows[2]["Title"];
                Deal_Link_66.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                Deal_Link_66.Title = (string)dt.Rows[2]["Title"];
                Link_Label_33.InnerHtml = (string)dt.Rows[2]["Title"];
                Link_Label_Price_33.InnerHtml = (string)dt.Rows[2]["Price_Reduce"];
                Link_Label_Old_Price_33.InnerHtml = (string)dt.Rows[2]["Price"];
                Link_Label_Sale_Price_33.InnerHtml = "%" + (string)dt.Rows[2]["Price_Ratio_Reduce"];
                Link_Label_Description_33.InnerHtml = (string)dt.Rows[2]["Description"].ToString().Substring(0, 86) + " ...";
            }
            catch { }
        }
        dt = null;
        dt = db.QP("exec Deal_Stored_Select @P0,@P1,@P2", "SCT", "Spor ve Outdoor",3).Tables[0];

        if (dt.Rows.Count > 0)
        {
            try
            {  // Slider 1 
                Slider_Spor1.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                Slider_Spor1.Title = (string)dt.Rows[0]["Title"];
                Spor_Img1.Src = (string)dt.Rows[0]["İmage"];
                Spor_Img1.Alt = (string)dt.Rows[0]["Title"];

                Slider_Spor11.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                Slider_Spor11.Title = (string)dt.Rows[0]["Title"];
                Spor_Img11.Src = (string)dt.Rows[0]["İmage"];
                Spor_Img11.Alt = (string)dt.Rows[0]["Title"];
            }
            catch { }

            try
            {  // Slider 2
                Slider_Spor2.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                Slider_Spor2.Title = (string)dt.Rows[1]["Title"];
                Spor_Img2.Src = (string)dt.Rows[1]["İmage"];
                Spor_Img2.Alt = (string)dt.Rows[1]["Title"];

                Slider_Spor22.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                Slider_Spor22.Title = (string)dt.Rows[1]["Title"];
                Spor_Img22.Src = (string)dt.Rows[1]["İmage"];
                Spor_Img22.Alt = (string)dt.Rows[1]["Title"];
            }
            catch { }


            try
            {  // Slider 3
                Slider_Spor3.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                Slider_Spor3.Title = (string)dt.Rows[2]["Title"];
                Spor_Img3.Src = (string)dt.Rows[2]["İmage"];
                Spor_Img3.Alt = (string)dt.Rows[2]["Title"];

                Slider_Spor33.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                Slider_Spor33.Title = (string)dt.Rows[2]["Title"];
                Spor_Img33.Src = (string)dt.Rows[2]["İmage"];
                Spor_Img33.Alt = (string)dt.Rows[2]["Title"];
            }
            catch { }
        }

    
    }
}