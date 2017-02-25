﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class E_Comemerce_Controls_BlogList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Blog_Category();
    }


    public void Blog_Category()
    {
        DataTable dt = null;
        dt = db.QP("exec Deal_Stored_Select_Without_Category @P0,@P1", "BP", 10).Tables[0];

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
                A3.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                A3.Title = (string)dt.Rows[0]["Title"];
                Label1.InnerHtml = (string)dt.Rows[0]["Title"];
             
            }
            catch { }


            try
            {
                A4.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                A4.Title = (string)dt.Rows[1]["Title"];
                img2.Src = (string)dt.Rows[1]["İmage"];
                img2.Alt = (string)dt.Rows[1]["Title"];
                A5.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                A5.Title = (string)dt.Rows[1]["Title"];
                A6.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                A6.Title = (string)dt.Rows[1]["Title"];
                Label2.InnerHtml = (string)dt.Rows[1]["Title"];
                
            }
            catch { }

            try
            {
                A7.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                A7.Title = (string)dt.Rows[2]["Title"];
                img3.Src = (string)dt.Rows[2]["İmage"];
                img3.Alt = (string)dt.Rows[2]["Title"];
                A8.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                A8.Title = (string)dt.Rows[2]["Title"];
                A9.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[2]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[2]["Title"]), PRODUCT_ID = (int)dt.Rows[2]["PRODUCT_ID"] });
                A9.Title = (string)dt.Rows[2]["Title"];
                Label3.InnerHtml = (string)dt.Rows[2]["Title"];            
            }
            catch { }

            try
            {
                A10.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[3]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[3]["Title"]), PRODUCT_ID = (int)dt.Rows[3]["PRODUCT_ID"] });
                A10.Title = (string)dt.Rows[3]["Title"];
                img4.Src = (string)dt.Rows[3]["İmage"];
                img4.Alt = (string)dt.Rows[3]["Title"];
                A11.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[3]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[3]["Title"]), PRODUCT_ID = (int)dt.Rows[3]["PRODUCT_ID"] });
                A11.Title = (string)dt.Rows[3]["Title"];
                A12.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[3]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[3]["Title"]), PRODUCT_ID = (int)dt.Rows[3]["PRODUCT_ID"] });
                A12.Title = (string)dt.Rows[3]["Title"];
                Label4.InnerHtml = (string)dt.Rows[3]["Title"];
            }
            catch { }

        }
    }
}