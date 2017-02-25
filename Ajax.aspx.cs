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

public partial class Ajax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            BindDummyItem();
       
    }

    
     public void BindDummyItem()
       {  
           DataTable  dtGetData = new DataTable();
         
           dtGetData.Columns.Add("Title");
           dtGetData.Columns.Add("Description");
           dtGetData.Columns.Add("Price");
           dtGetData.Columns.Add("Product_ID");
           dtGetData.Columns.Add("İmage");
           dtGetData.Rows.Add();

           //grdDemo.DataSource = dtGetData;
           //grdDemo.DataBind();

           Data_Product.DataSource = GetData("22");
           Data_Product.DataBind();
       }

       [WebMethod]
     public static DetailsClass[] GetData(string data) //GetData function
     {
         List<DetailsClass> Detail = new List<DetailsClass>();

          DataTable dt = db.QP("select Title,Description,Price,Product_ID,İmage from PRODUCT where Product_ID='" + data + "'").Tables[0];
          foreach(DataRow dtRow in dt.Rows)
           {
               DetailsClass DataObj = new DetailsClass();
               DataObj.Title = dtRow["Title"].ToString();
               DataObj.Description = dtRow["Description"].ToString();
               DataObj.Price = dtRow["Price"].ToString();
               DataObj.Product_ID = dtRow["Product_ID"].ToString();
               DataObj.İmage = dtRow["İmage"].ToString();
              
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

       }
     
}