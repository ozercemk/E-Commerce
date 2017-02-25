using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class E_Comemerce_Controls_Banner : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Banner_Category();
    }

    public void Banner_Category()
    { 
    
        DataTable dt = null;
        dt = db.QP("exec Deal_Stored_Select_Without_Category @P0,@P1", "BA", 2).Tables[0];

        if (dt.Rows.Count > 0)
        {
            try
            {
                A1.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[0]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[0]["Title"]), PRODUCT_ID = (int)dt.Rows[0]["PRODUCT_ID"] });
                A1.Title = (string)dt.Rows[0]["Title"];
                img1.Src = (string)dt.Rows[0]["İmage"];
                img1.Alt = (string)dt.Rows[0]["Title"];
            }
            catch { }

            try
            {
                A2.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code((string)dt.Rows[1]["Category"]), Title = NewsSql.Replacement_Code((string)dt.Rows[1]["Title"]), PRODUCT_ID = (int)dt.Rows[1]["PRODUCT_ID"] });
                A2.Title = (string)dt.Rows[1]["Title"];
                img2.Src = (string)dt.Rows[1]["İmage"];
                img2.Alt = (string)dt.Rows[1]["Title"];
            }
            catch { }

        }
    }
}