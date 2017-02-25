using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;

public partial class ETicaret_Details : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        string Product_ID = Page.RouteData.Values["Product_ID"] as string;

        Galery_Zoom(int.Parse(Product_ID));
        Product_Detail(int.Parse(Product_ID));
    }

    private void Galery_Zoom(int Product_ID)
    {  
       
        DataTable dt = db.QP("exec Product_Details @P0", Product_ID).Tables[0];

        if (dt.Rows.Count > 0)
        {
            productZoom.ImageUrl = (string)dt.Rows[0]["İmage"].ToString().Replace("~/","");  //Ana Slide 512px
            productZoom.ToolTip = (string)dt.Rows[0]["Title"];
            productZoom.Attributes.Add("data-zoom-image", (string)dt.Rows[0]["İmageZoom"].ToString().Replace("~/","")); // Zoom İmage 1024

            Data_Product.DataSource = dt;
            Data_Product.DataBind();

        }

    }

    private void Product_Detail(int Product_ID)
    {

        DataTable dt = db.QP("exec Product_Details_Pro @P0", Product_ID).Tables[0];

        if (dt.Rows.Count > 0)
        {
            productname.Text = (string)(dt.Rows[0]["Title"]);
            price.Text  = (string)(dt.Rows[0]["Price"]);
            oldprice.Text = (string)(dt.Rows[0]["Price_Reduce"]);
            discount.Text = (string)(dt.Rows[0]["Price_Ratio_Reduce"]);
            Product_Code.Text = ((int)dt.Rows[0]["Product_ID"]).ToString();
            Availability.Text = General_Functions.Product_Status((string)(dt.Rows[0]["Product_Status"]));
            Description.Text = (string)(dt.Rows[0]["Description"]);

        }

    }
}