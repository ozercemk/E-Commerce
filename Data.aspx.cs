using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Data_For_Details();

    }

    private void Data_For_Details()
    {
        DataTable dt = db.QP("select * from Product ").Tables[0];
        int Counter = 0;
        if (dt.Rows.Count > 0)
        {
            //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Beyaz", 20, "assets/data/product-850x1036.jpg", "assets/data/product-100x122.jpg");
            //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s2-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Gri", 20, "assets/data/product-s2-850x1036.jpg", "assets/data/product-s2-100x122.jpg");
            //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s3-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Kırmızı", 20, "assets/data/product-s3-850x1036.jpg", "assets/data/product-s3-100x122.jpg");
            //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s4-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Mavi", 20, "assets/data/product-s4-850x1036.jpg", "assets/data/product-s4-100x122.jpg");
            //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s5-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Pempe", 20, "assets/data/product-s5-850x1036.jpg", "assets/data/product-s5-100x122.jpg");
            //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s6-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Siyah", 20, "assets/data/product-s6-850x1036.jpg", "assets/data/product-s6-100x122.jpg");
            //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Yesil", 20, "assets/data/product-850x1036.jpg", "assets/data/product-100x122.jpg");
            //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s2-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Sarı", 20, "assets/data/product-s2-850x1036.jpg", "assets/data/product-s2-100x122.jpg");
            

            for (int i = 0; i <= dt.Rows.Count - 1; ++i)
            {

                db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Beyaz", 20, "assets/data/product-850x1036.jpg", "assets/data/product-100x122.jpg");
                db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s2-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Beyaz", 20, "assets/data/product-s2-850x1036.jpg", "assets/data/product-s2-100x122.jpg");
                db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s3-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Beyaz", 20, "assets/data/product-s3-850x1036.jpg", "assets/data/product-s3-100x122.jpg");

                db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s4-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Siyah", 20, "assets/data/product-s4-850x1036.jpg", "assets/data/product-s4-100x122.jpg");
                db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s5-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Siyah", 20, "assets/data/product-s5-850x1036.jpg", "assets/data/product-s5-100x122.jpg");
                db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s6-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Siyah", 20, "assets/data/product-s6-850x1036.jpg", "assets/data/product-s6-100x122.jpg");

               // db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Kırmızı", 20, "assets/data/product-850x1036.jpg", "assets/data/product-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s2-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Kırmızı", 20, "assets/data/product-s2-850x1036.jpg", "assets/data/product-s2-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s3-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Kırmızı", 20, "assets/data/product-s3-850x1036.jpg", "assets/data/product-s3-100x122.jpg");


                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s4-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Pempe", 20, "assets/data/product-s4-850x1036.jpg", "assets/data/product-s4-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s5-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Pempe", 20, "assets/data/product-s5-850x1036.jpg", "assets/data/product-s5-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s6-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Pempe", 20, "assets/data/product-s6-850x1036.jpg", "assets/data/product-s6-100x122.jpg");


                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Siyah", 20, "assets/data/product-850x1036.jpg", "assets/data/product-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s2-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Siyah", 20, "assets/data/product-s2-850x1036.jpg", "assets/data/product-s2-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s3-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Siyah", 20, "assets/data/product-s3-850x1036.jpg", "assets/data/product-s3-100x122.jpg");


                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s4-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Yesil", 20, "assets/data/product-s4-850x1036.jpg", "assets/data/product-s4-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s5-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Yesil", 20, "assets/data/product-s5-850x1036.jpg", "assets/data/product-s5-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s6-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Yesil", 20, "assets/data/product-s6-850x1036.jpg", "assets/data/product-s6-100x122.jpg");

                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Sarı", 20, "assets/data/product-850x1036.jpg", "assets/data/product-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s2-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Sarı", 20, "assets/data/product-s2-850x1036.jpg", "assets/data/product-s2-100x122.jpg");
                //db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO_Data_For @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9", ((int)dt.Rows[i]["PRODUCT_ID"]), ((string)dt.Rows[i]["Title"]), "assets/data/product-s3-420x512.jpg", 1, ((DateTime)dt.Rows[i]["Date"]), "no frost,deneme,renkler", "Sarı", 20, "assets/data/product-s3-850x1036.jpg", "assets/data/product-s3-100x122.jpg");


                Counter = Counter + 1;
            }


        }

        Label1.Visible = true;
        Label1.Text = Counter.ToString() + " İşlem kayıt edildi ";
    
    }
}