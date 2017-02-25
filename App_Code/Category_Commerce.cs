using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

/// <summary>
/// Summary description for Category_Commerce
/// </summary>
public class Category_Commerce
{
	public Category_Commerce()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void Data_Preview(string Category, DataList Data_SubList)
    {
        DataTable dt = null;
        dt = db.QP("exec Common_Proc_Category_Select @P0,@P1", Category, "Product").Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_SubList.DataSource = dt;
            Data_SubList.DataBind();
        }
        
    }
    public static void Data_Preview_without_Sub(string Category, int Top ,DataList Data_Product, DataList Data_Product_More)
    {
        DataTable dt = null;
        dt = db.QP("exec Product_Data_List_Top @P0,@P1", Category,Top).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List_Top @P0,@P1", Category, Top).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product_More.DataSource = dt;
            Data_Product_More.DataBind();
        }
    }
    public static void Data_Preview_without_Sub(string Category, int Top,int Top2, DataList Data_Product, DataList Data_Product_More)
    {
        DataTable dt = null;
        dt = db.QP("exec Product_Data_List_Top2 @P0,@P1", Category, Top).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List_Top @P0,@P1", Category, Top2).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product_More.DataSource = dt;
            Data_Product_More.DataBind();
        }
    }

    public static void Data_Preview_without_Sub(string Category, DataList Data_Product, DataList Data_Product_More)
    {
        DataTable dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product_More.DataSource = dt;
            Data_Product_More.DataBind();
        }
    }
 
    public static void Data_Preview(string Category, DataList Data_SubList, DataList Data_Product, DataList Data_More_Product)
    {
      DataTable  dt = null;
        dt = db.QP("exec Common_Proc_Category_Select @P0,@P1", Category ,"Product" ).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_SubList.DataSource = dt;
            Data_SubList.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product.DataSource = dt;
            Data_More_Product.DataBind();
        }

    }

    public static void Data_Preview_4(string Category, DataList Data_SubList, DataList Data_Product, DataList Data_More_Product, DataList Data_More_Product_2)
    {
        DataTable dt = null;
        dt = db.QP("exec Common_Proc_Category_Select @P0,@P1", Category, "Product").Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_SubList.DataSource = dt;
            Data_SubList.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product.DataSource = dt;
            Data_More_Product.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_2.DataSource = dt;
            Data_More_Product_2.DataBind();
        }
    }

    public static void Data_Preview_5(string Category, DataList Data_SubList, DataList Data_Product, DataList Data_More_Product, DataList Data_More_Product_2, DataList Data_More_Product_3)
    {
        DataTable dt = null;
        dt = db.QP("exec Common_Proc_Category_Select @P0,@P1", Category, "Product").Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_SubList.DataSource = dt;
            Data_SubList.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product.DataSource = dt;
            Data_More_Product.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_2.DataSource = dt;
            Data_More_Product_2.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_3.DataSource = dt;
            Data_More_Product_3.DataBind();
        }
    }

    public static void Data_Preview_6(string Category, DataList Data_SubList, DataList Data_Product, DataList Data_More_Product, DataList Data_More_Product_2, DataList Data_More_Product_3, DataList Data_More_Product_4)
    {
        DataTable dt = null;
        dt = db.QP("exec Common_Proc_Category_Select @P0,@P1", Category, "Product").Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_SubList.DataSource = dt;
            Data_SubList.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product.DataSource = dt;
            Data_More_Product.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_2.DataSource = dt;
            Data_More_Product_2.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_3.DataSource = dt;
            Data_More_Product_3.DataBind();
        }


        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_4.DataSource = dt;
            Data_More_Product_4.DataBind();
        }
    }

    public static void Data_Preview_7(string Category, DataList Data_SubList, DataList Data_Product, DataList Data_More_Product, DataList Data_More_Product_2, DataList Data_More_Product_3, DataList Data_More_Product_4, DataList Data_More_Product_5)
    {
        DataTable dt = null;
        dt = db.QP("exec Common_Proc_Category_Select @P0,@P1", Category, "Product").Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_SubList.DataSource = dt;
            Data_SubList.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product.DataSource = dt;
            Data_More_Product.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_2.DataSource = dt;
            Data_More_Product_2.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_3.DataSource = dt;
            Data_More_Product_3.DataBind();
        }


        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_4.DataSource = dt;
            Data_More_Product_4.DataBind();

            dt = null;
            dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

            if (dt.Rows.Count > 0)
            {

                Data_More_Product_5.DataSource = dt;
                Data_More_Product_5.DataBind();
            }

        }
    }
    public static void Data_Preview_8(string Category, DataList Data_SubList, DataList Data_Product, DataList Data_More_Product, DataList Data_More_Product_2, DataList Data_More_Product_3, DataList Data_More_Product_4, DataList Data_More_Product_5, DataList Data_More_Product_6)
    {
        DataTable dt = null;
        dt = db.QP("exec Common_Proc_Category_Select @P0,@P1", Category, "Product").Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_SubList.DataSource = dt;
            Data_SubList.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_Product.DataSource = dt;
            Data_Product.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product.DataSource = dt;
            Data_More_Product.DataBind();
        }
        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_2.DataSource = dt;
            Data_More_Product_2.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_3.DataSource = dt;
            Data_More_Product_3.DataBind();
        }

        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_4.DataSource = dt;
            Data_More_Product_4.DataBind();
        }


        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_5.DataSource = dt;
            Data_More_Product_5.DataBind();
        }


        dt = null;
        dt = db.QP("exec Product_Data_List @P0", Category).Tables[0];

        if (dt.Rows.Count > 0)
        {

            Data_More_Product_6.DataSource = dt;
            Data_More_Product_6.DataBind();
        }

    }




}