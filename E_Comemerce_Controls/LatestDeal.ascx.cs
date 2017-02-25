using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class E_Comemerce_Controls_LatestDeal : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Deal_Category();
    }

    public void Deal_Category()
    {
        DataTable dt = null;
        dt = db.QP("exec Deal_Stored_Select_Without_Category @P0,@P1", "LD", 10).Tables[0];

        if (dt.Rows.Count > 0)
        {
            try
            {
                A1.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                A1.Title = (string)dt.Rows[0]["Title"];
                img1.Src = (string)dt.Rows[0]["İmage"];
                img1.Alt = (string)dt.Rows[0]["Title"];
                A2.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                A2.Title = (string)dt.Rows[0]["Title"];
                Label1.InnerHtml = (string)dt.Rows[0]["Title"];
                Span1.InnerHtml = (string)dt.Rows[0]["Price"];
            }
            catch { }


            try
            {
                A3.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                A3.Title = (string)dt.Rows[1]["Title"];
                img2.Src = (string)dt.Rows[1]["İmage"];
                img2.Alt = (string)dt.Rows[1]["Title"];
                A4.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                A4.Title = (string)dt.Rows[1]["Title"];
                Label2.InnerHtml = (string)dt.Rows[1]["Title"];
                Span2.InnerHtml = (string)dt.Rows[1]["Price"];
            }
            catch { }



            try
            {
                A5.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                A5.Title = (string)dt.Rows[2]["Title"];
                img3.Src = (string)dt.Rows[2]["İmage"];
                img3.Alt = (string)dt.Rows[2]["Title"];
                A6.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                A6.Title = (string)dt.Rows[2]["Title"];
                Label3.InnerHtml = (string)dt.Rows[2]["Title"];
                Span3.InnerHtml = (string)dt.Rows[2]["Price"];
            }
            catch { }



            try
            {
                A7.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[3]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[3]["Title"]), PRODUCT_ID = (int)dt.Rows[3]["PRODUCT_ID"] });
                A7.Title = (string)dt.Rows[3]["Title"];
                img4.Src = (string)dt.Rows[3]["İmage"];
                img4.Alt = (string)dt.Rows[3]["Title"];
                A8.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[3]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[3]["Title"]), PRODUCT_ID = (int)dt.Rows[3]["PRODUCT_ID"] });
                A8.Title = (string)dt.Rows[3]["Title"];
                Label4.InnerHtml = (string)dt.Rows[3]["Title"];
                Span4.InnerHtml = (string)dt.Rows[3]["Price"];
            }
            catch { }



            try
            {
                A9.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[4]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[4]["Title"]), PRODUCT_ID = (int)dt.Rows[4]["PRODUCT_ID"] });
                A9.Title = (string)dt.Rows[4]["Title"];
                img5.Src = (string)dt.Rows[4]["İmage"];
                img5.Alt = (string)dt.Rows[4]["Title"];
                A10.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[4]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[4]["Title"]), PRODUCT_ID = (int)dt.Rows[4]["PRODUCT_ID"] });
                A10.Title = (string)dt.Rows[4]["Title"];
                Label5.InnerHtml = (string)dt.Rows[4]["Title"];
                Span5.InnerHtml = (string)dt.Rows[4]["Price"];
            }
            catch { }



            try
            {
                A11.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[5]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[5]["Title"]), PRODUCT_ID = (int)dt.Rows[5]["PRODUCT_ID"] });
                A11.Title = (string)dt.Rows[5]["Title"];
                img6.Src = (string)dt.Rows[5]["İmage"];
                img6.Alt = (string)dt.Rows[5]["Title"];
                A12.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[5]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[5]["Title"]), PRODUCT_ID = (int)dt.Rows[5]["PRODUCT_ID"] });
                A12.Title = (string)dt.Rows[5]["Title"];
                Label6.InnerHtml = (string)dt.Rows[5]["Title"];
                Span6.InnerHtml = (string)dt.Rows[5]["Price"];
            }
            catch { }


            try
            {
                A13.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[6]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[6]["Title"]), PRODUCT_ID = (int)dt.Rows[6]["PRODUCT_ID"] });
                A13.Title = (string)dt.Rows[6]["Title"];
                img7.Src = (string)dt.Rows[6]["İmage"];
                img7.Alt = (string)dt.Rows[6]["Title"];
                A14.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[6]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[6]["Title"]), PRODUCT_ID = (int)dt.Rows[6]["PRODUCT_ID"] });
                A14.Title = (string)dt.Rows[6]["Title"];
                Label7.InnerHtml = (string)dt.Rows[6]["Title"];
                Span7.InnerHtml = (string)dt.Rows[6]["Price"];
            }
            catch { }


            try
            {
                A15.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[7]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[7]["Title"]), PRODUCT_ID = (int)dt.Rows[7]["PRODUCT_ID"] });
                A15.Title = (string)dt.Rows[7]["Title"];
                img8.Src = (string)dt.Rows[7]["İmage"];
                img8.Alt = (string)dt.Rows[7]["Title"];
                A16.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[7]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[7]["Title"]), PRODUCT_ID = (int)dt.Rows[7]["PRODUCT_ID"] });
                A16.Title = (string)dt.Rows[7]["Title"];
                Label8.InnerHtml = (string)dt.Rows[7]["Title"];
                Span8.InnerHtml = (string)dt.Rows[7]["Price"];
            }
            catch { }


            try
            {
                A17.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[8]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[8]["Title"]), PRODUCT_ID = (int)dt.Rows[8]["PRODUCT_ID"] });
                A17.Title = (string)dt.Rows[8]["Title"];
                img9.Src = (string)dt.Rows[8]["İmage"];
                img9.Alt = (string)dt.Rows[8]["Title"];
                A18.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[8]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[8]["Title"]), PRODUCT_ID = (int)dt.Rows[8]["PRODUCT_ID"] });
                A18.Title = (string)dt.Rows[8]["Title"];
                Label9.InnerHtml = (string)dt.Rows[8]["Title"];
                Span9.InnerHtml = (string)dt.Rows[8]["Price"];
            }
            catch { }



            try
            {
                A19.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[9]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[9]["Title"]), PRODUCT_ID = (int)dt.Rows[9]["PRODUCT_ID"] });
                A19.Title = (string)dt.Rows[9]["Title"];
                img10.Src = (string)dt.Rows[9]["İmage"];
                img10.Alt = (string)dt.Rows[9]["Title"];
                A20.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[9]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[9]["Title"]), PRODUCT_ID = (int)dt.Rows[9]["PRODUCT_ID"] });
                A20.Title = (string)dt.Rows[9]["Title"];
                Label10.InnerHtml = (string)dt.Rows[9]["Title"];
                Span10.InnerHtml = (string)dt.Rows[9]["Price"];
            }
            catch { }
        }
    }
}