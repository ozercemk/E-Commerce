using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class E_Comemerce_Controls_HomeSlider : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Slider_Home_Data_Preview();
    }

     public void Slider_Home_Data_Preview()
     {
         DataTable dt = db.QP("exec Common_Procedures_Of_Products_Area @P0,@P1", "Slider", 3).Tables[0];

         if (dt.Rows.Count > 0)
         {

             contenhomesliderLink0.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code(dt.Rows[0]["Category"].ToString()), Title = NewsSql.Replacement_Code(dt.Rows[0]["title"].ToString()), PRODUCT_ID = NewsSql.Replacement_Code(dt.Rows[0]["Product_ID"].ToString()) });
             contenhomesliderLink0.Title = NewsSql.Replacement_Code(dt.Rows[0]["title"].ToString());
             contenhomesliderLink0.Target = "_parent";

             contenhomesliderimg0.Src = (string)dt.Rows[0]["İmage"];
             contenhomesliderimg0.Alt = NewsSql.Replacement_Code(dt.Rows[0]["title"].ToString());


             contenhomesliderLink1.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code(dt.Rows[1]["Category"].ToString()), Title = NewsSql.Replacement_Code(dt.Rows[1]["title"].ToString()), PRODUCT_ID = NewsSql.Replacement_Code(dt.Rows[1]["Product_ID"].ToString()) });
             contenhomesliderLink1.Title = NewsSql.Replacement_Code(dt.Rows[1]["title"].ToString());
             contenhomesliderLink1.Target = "_parent";

             contenhomesliderimg1.Src = (string)dt.Rows[1]["İmage"];
             contenhomesliderimg1.Alt = NewsSql.Replacement_Code(dt.Rows[1]["title"].ToString());



             contenhomesliderLink2.HRef = Page.GetRouteUrl("Product", new { Category = NewsSql.Replacement_Code(dt.Rows[2]["Category"].ToString()), Title = NewsSql.Replacement_Code(dt.Rows[2]["title"].ToString()), PRODUCT_ID = NewsSql.Replacement_Code(dt.Rows[2]["Product_ID"].ToString()) });
             contenhomesliderLink2.Title = NewsSql.Replacement_Code(dt.Rows[2]["title"].ToString());
             contenhomesliderLink2.Target = "_parent";

             contenhomesliderimg2.Src = (string)dt.Rows[2]["İmage"];
             contenhomesliderimg2.Alt = NewsSql.Replacement_Code(dt.Rows[2]["title"].ToString());
          
         
         }

     
     }
}