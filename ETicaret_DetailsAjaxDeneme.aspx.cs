using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;
using System.Web.Services;
using System.Configuration;

public partial class ETicaret_DetailsAjaxDeneme : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string Product_ID = Page.RouteData.Values["Product_ID"] as string;
       

        DDL_FullFilment(Product_ID);
        Galery_Zoom(int.Parse(Product_ID));
        Product_Detail(int.Parse(Product_ID));
        BindDummyItem(Product_ID, Default_Variant(Product_ID));

    }

    public void BindDummyItem(string Product_ID, string Variant)
    {
        DataProduct.DataSource = GetingDatas(Product_ID, Variant);
        DataProduct.DataBind();
    }
    public static string  Default_Variant(string Data)
    {
        string return_Default = string.Empty;
        DataTable dt = db.QP("select Product_Variant from subproduct  where PRODUCT_ID=" + Data).Tables[0];
        if (dt.Rows.Count > 0)
        {
            return_Default = (string)dt.Rows[0]["Product_Variant"];
            
        
        }
        return return_Default;
    }

    [WebMethod]
    public static  DetailsClass[] GetingDatas(string Data,string Data2) //GetData function
    {
        List<DetailsClass> Detail = new List<DetailsClass>();
      
        DataTable dt = db.QP("select * from subproduct  where PRODUCT_ID=" + Data + " And Product_Variant='"+Data2+"'").Tables[0];
        foreach (DataRow dtRow in dt.Rows)
        {
            DetailsClass DataObj = new DetailsClass();
            DataObj.Title = dtRow["Title"].ToString();
            //DataObj.Description = dtRow["Description"].ToString();
            //DataObj.Price = dtRow["Price"].ToString();
            DataObj.Product_ID = dtRow["Product_ID"].ToString();
            DataObj.İmage = dtRow["İmage"].ToString();
            DataObj.İmageSmall = dtRow["İmageSmall"].ToString();
            DataObj.İmageZoom = dtRow["İmageZoom"].ToString();

            Detail.Add(DataObj);
        }

        return Detail.ToArray();
    }
    public class DetailsClass //Class for binding data
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public string Price { get; set; }
        public string Product_ID { get; set; }

        public string İmage { get; set; }

        public string İmageSmall { get; set; }
        public string İmageZoom { get; set; }

    }

    public void DDL_FullFilment(string Product_ID)
    {

        DataTable dt = db.QP("exec Product_Details_Sub @P0", Product_ID).Tables[0];

        if (dt.Rows.Count > 0)
        {

            ddl2.DataSource = dt;
            ddl2.DataTextField = "Product_Variant";
            ddl2.DataValueField = "PRODUCT_ID";
            ddl2.DataBind();
           
        }

        
    }

    private void Galery_Zoom(int Product_ID)
    {  
       
        DataTable dt = db.QP("exec Product_Details @P0", Product_ID).Tables[0];

        if (dt.Rows.Count > 0)
        {
            productZoom.Src = (string)dt.Rows[0]["İmage"].ToString().Replace("~/","");  //Ana Slide 512px
            productZoom.Alt = (string)dt.Rows[0]["Title"];
            productZoom.Attributes.Add("data-zoom-image", (string)dt.Rows[0]["İmageZoom"].ToString().Replace("~/","")); // Zoom İmage 1024

            DataProduct.DataSource = dt;
            DataProduct.DataBind();


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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
}