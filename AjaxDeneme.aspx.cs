using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using System.Configuration;

public partial class AjaxDeneme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
    BindDummyItem();
        
    }

    public void BindDummyItem()
    {
        DataTable dtGetData = new DataTable();
        dtGetData.Columns.Add("Title");
      //  dtGetData.Columns.Add("Description");
        dtGetData.Columns.Add("Product_ID");
        dtGetData.Columns.Add("İmage");
        dtGetData.Columns.Add("İmageSmall");
        dtGetData.Columns.Add("İmageZoom");
        dtGetData.Rows.Add();

        DataProduct.DataSource = dtGetData;
        DataProduct.DataBind();
       }

     
       //public static DetailsClass[] GetData(string Data) //GetData function
       //{
       //    List<DetailsClass> Detail = new List<DetailsClass>();

       //    DataTable dt = db.QP("select Title,Description,Price,Product_ID,İmage from PRODUCT where Product_ID=" + Data).Tables[0];
       //    foreach (DataRow dtRow in dt.Rows)
       //    {
       //        DetailsClass DataObj = new DetailsClass();
       //        DataObj.Title = dtRow["Title"].ToString();
       //        DataObj.Description = dtRow["Description"].ToString();
       //        DataObj.Price = dtRow["Price"].ToString();
       //        DataObj.Product_ID = dtRow["Product_ID"].ToString();
       //        //DataObj.İmage = dtRow["İmage"].ToString();
       //        //DataObj.İmageZoom = dtRow["İmageZoom"].ToString();
       //        //DataObj.İmageSmall = dtRow["İmageSmall"].ToString();

       //        Detail.Add(DataObj);
       //    }

       //    return Detail.ToArray();
       //}
      [WebMethod]
       public static DetailsClass[] GetData2(string Data) //GetData function
       {
           List<DetailsClass> Detail = new List<DetailsClass>();

           DataTable dt = db.QP("select * from subproduct  where Product_ID=" + Data).Tables[0];
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
}