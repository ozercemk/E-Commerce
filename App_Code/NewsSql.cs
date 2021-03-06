using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Security.Cryptography;


/// <summary>
/// Summary description for NewsSql
/// </summary>
public class NewsSql
{
  

    public static void GetRecords(DataGrid dg, string proc)
    {
        DataTable dt = db.QP("exec " + proc).Tables[0];
        dg.DataSource = dt;
        dg.DataBind();
    }
    
   

    public static void Listeler(string Proc, DataGrid Datalist)
    {
        //try
        //{
        DataTable dt = db.QP("exec " + Proc).Tables[0];

        Datalist.DataSource = dt;
        Datalist.DataBind();
        //}
        //catch { }

    }


    public static void Listeler_Area(string Proc, DataList Datalist, string Pram,int Top)
    {
        //try
        //{
        DataTable dt = db.QP("exec  " + Proc + " @P0,@P1", Pram , Top).Tables[0];

        Datalist.DataSource = dt;
        Datalist.DataBind();
        //}
        //catch { }

    }

    public static void Listeler_Area(string Proc, DataGrid DataGrid, string Pram, int Top)
    {
        //try
        //{
        DataTable dt = db.QP("exec  " + Proc + " @P0,@P1", Pram, Top).Tables[0];

        DataGrid.DataSource = dt;
        DataGrid.DataBind();
        //}
        //catch { }

    }
    public static void Listeler_ID(string Proc, DataList Datalist,  int ID,int Top )
    {
        //try
        //{
        DataTable dt = db.QP("exec  " + Proc + " @P0,@P1", ID,Top).Tables[0];

        Datalist.DataSource = dt;
        Datalist.DataBind();
        //}
        //catch { }

    }

    public static void Listeler_Area_ID(string Proc, DataList Datalist, string Area, int ID, int Top)
    {
        //try
        //{
        DataTable dt = db.QP("exec  " + Proc + " @P0,@P1,@P1",Area, ID, Top).Tables[0];

        Datalist.DataSource = dt;
        Datalist.DataBind();
        //}
        //catch { }

    }

    public static void GetRecords(DataGrid dg, string proc, int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0", ID).Tables[0];
        dg.DataSource = dt;
        dg.DataBind();
    }
    public static void GetRecords2(DataGrid dg, string proc, int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0", ID).Tables[0];
        dg.DataSource = dt;
        dg.DataBind();
    }
    public static void GetRecords(DataGrid dg, string proc, string Area)
    {
        DataTable dt = db.QP("exec " + proc + " @P0", Area).Tables[0];
        dg.DataSource = dt;
        dg.DataBind();
    }

    public static void GetRecords(DataGrid dg, string proc, string Area,int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0,@P1", Area,ID).Tables[0];
        dg.DataSource = dt;
        dg.DataBind();
    }


    public static void GetRecordXML(string proc, TextBox Txt_Ttl, TextBox Txt_Shrt, Label Lbl_Txt_Pic, TextBox Editor_Text_Box, Label L_Id, CheckBox Check, Image img, TextBox Kategory) // Kategory Ekleme Kısmı
    {

        DataTable dt = db.QP("exec " + proc + " @P0", int.Parse(L_Id.Text)).Tables[0];
        DataRow Drv = dt.Rows[0];

        Txt_Ttl.Text = (string)Drv["Category_Title"];
        Txt_Shrt.Text = (string)Drv["Description"];
        Lbl_Txt_Pic.Text = (string)Drv["İmage"];
        img.ImageUrl = (string)Drv["İmage"];
        Editor_Text_Box.Text = (string)Drv["Content"];
        Check.Checked = (bool)Drv["Live"];
        Kategory.Text = (string)Drv["Category"];
       
    }
    public static void GetRecordXML(string proc, TextBox Txt_Ttl, TextBox Txt_Shrt, Label Lbl_Txt_Pic, TextBox Editor_Text_Box, string Area, Label L_Id, CheckBox Check, Image img, DropDownList Kategory, TextBox Price, TextBox Value, DropDownList Product_Status, DropDownList Brand_Drp, TextBox Reduce_Price, TextBox Reduce_Price_Ratio, DropDownList Product_Type,TextBox Day,TextBox Month,TextBox Year ,TextBox Time)
    {

        DataTable dt = db.QP("exec " + proc + " @P0,@P1", int.Parse(L_Id.Text), Area).Tables[0];
        DataRow Drv = dt.Rows[0];

        Txt_Ttl.Text = (string)Drv["Title"];
        Txt_Shrt.Text = (string)Drv["Description"];
        Lbl_Txt_Pic.Text = (string)Drv["İmage"];
        img.ImageUrl = (string)Drv["İmage"];
        Editor_Text_Box.Text = (string)Drv["Content"];
        Area = (string)Drv["Area"];
        Check.Checked = (bool)Drv["Live"];
        Kategory.SelectedItem.Text = (string)Drv["Category"];
        Price.Text = (string)Drv["Price"];
        Product_Status.SelectedItem.Value = (string)Drv["Product_Status"];
        Brand_Drp.SelectedItem.Text = (string)Drv["Brand"];
        Reduce_Price.Text = (string)Drv["Price_Reduce"];
        Reduce_Price_Ratio.Text = (string)Drv["Price_Ratio_Reduce"];
        Product_Type.SelectedItem.Text = (string)Drv["Product_Type"];
        //Day.Text = ((DateTime)Drv["DayP"]).ToString();
        //Month.Text = ((DateTime)Drv["MonthP"]).ToString();
        //Year.Text = ((DateTime)Drv["YearP"]).ToString();
        //Time.Text = ((DateTime)Drv["TimeP"]).ToString();
    }


    public static void GetRecordXML(string proc, TextBox Txt_Ttl, TextBox Txt_Shrt, Label Lbl_Txt_Pic, TextBox Editor_Text_Box, string Area, Label L_Id, CheckBox Check, Image img, DropDownList Kategory, TextBox Price, TextBox Value,DropDownList Product_Status,DropDownList Brand_Drp,TextBox Reduce_Price,TextBox Reduce_Price_Ratio,DropDownList Product_Type)
    {

        DataTable dt = db.QP("exec " + proc + " @P0,@P1", int.Parse(L_Id.Text), Area).Tables[0];
        DataRow Drv = dt.Rows[0];

        Txt_Ttl.Text = (string)Drv["Title"];
        Txt_Shrt.Text = (string)Drv["Description"];
        Lbl_Txt_Pic.Text = (string)Drv["İmage"];
        img.ImageUrl = (string)Drv["İmage"];
        Editor_Text_Box.Text = (string)Drv["Content"];
        Area = (string)Drv["Area"];
        Check.Checked = (bool)Drv["Live"];
        Kategory.SelectedItem.Text = (string)Drv["Category"];
        Price.Text = (string)Drv["Price"];
        Product_Status.SelectedItem.Value = (string)Drv["Product_Status"];
        Brand_Drp.SelectedItem.Text = (string)Drv["Brand"];
        Reduce_Price.Text = (string)Drv["Price_Reduce"];
        Reduce_Price_Ratio.Text = (string)Drv["Price_Ratio_Reduce"];
        Product_Type.SelectedItem.Text = (string)Drv["Product_Type"];
    }

    public static void GetRecordXML(string proc, TextBox Txt_Ttl, TextBox Txt_Shrt, Label Lbl_Txt_Pic, TextBox Editor_Text_Box, string Area, Label L_Id, CheckBox Check, Image img, DropDownList Kategory, TextBox Price, TextBox Product_Stok, DropDownList Product_Status) // Slider For XML
    {

        DataTable dt = db.QP("exec " + proc + " @P0,@P1", int.Parse(L_Id.Text), Area).Tables[0];
        DataRow Drv = dt.Rows[0];

        Txt_Ttl.Text = (string)Drv["Title"];
        Txt_Shrt.Text = (string)Drv["Description"];
        Lbl_Txt_Pic.Text = (string)Drv["İmage"];
        img.ImageUrl = (string)Drv["İmage"];
        Editor_Text_Box.Text = (string)Drv["Content"];
        Area = (string)Drv["Area"];
        Check.Checked = (bool)Drv["Live"];
        Kategory.SelectedItem.Text = (string)Drv["Category"];
        Price.Text = (string)Drv["Price"];
        Product_Status.SelectedItem.Value = (string)Drv["Product_Status"];
        Product_Stok.Text = ((int)Drv["Product_Count"]).ToString();
    
    }
    public static void GetRecordXML_SUB_Pro(string proc, TextBox Txt_Ttl, CheckBox Check, Label Lbl_Txt_Pic, Label L_Id, Image Sub_Product_image, TextBox Keywords_TXT, DropDownList Product_Variant, TextBox Prodcut_Variant_Stok, Label Lbl_Txt_Pic1024px, Label Lbl_Txt_Pic122px)
    {

        DataTable dt = db.QP("exec " + proc + " @P0", int.Parse(L_Id.Text)).Tables[0];
        DataRow Drv = dt.Rows[0];
        Txt_Ttl.Text = (string)Drv["Title"];
        Check.Checked = (bool)Drv["Live"];
        Lbl_Txt_Pic.Text = (string)Drv["İmage"];
        Sub_Product_image.ImageUrl = (string)Drv["İmage"];
        Keywords_TXT.Text = (string)Drv["Keywords"];
        Product_Variant.SelectedItem.Value = (string)Drv["Product_Variant"];
        Prodcut_Variant_Stok.Text = (string)Drv["Product_Variant_Stok"];
        Lbl_Txt_Pic1024px.Text = (string)Drv["İmageZoom"];
        Lbl_Txt_Pic122px.Text = (string)Drv["İmageSmall"];

    }

    public static void GetRecordXML_SUB(string proc, TextBox Txt_Ttl, CheckBox Check, Label Lbl_Txt_Pic, Label L_Id, Image Sub_Product_image, TextBox Keywords_TXT,DropDownList  Product_Variant,TextBox Prodcut_Variant_Stok)
    {

        DataTable dt = db.QP("exec " + proc + " @P0", int.Parse(L_Id.Text)).Tables[0];
        DataRow Drv = dt.Rows[0];
        Txt_Ttl.Text = (string)Drv["Title"];
        Check.Checked = (bool)Drv["Live"];
        Lbl_Txt_Pic.Text = (string)Drv["İmage"];
        Sub_Product_image.ImageUrl = (string)Drv["İmage"];
        Keywords_TXT.Text = (string)Drv["Keywords"];
        Product_Variant.SelectedItem.Value = (string)Drv["Product_Variant"];
        Prodcut_Variant_Stok.Text = (string)Drv["Product_Variant_Stok"];
     
    }

    public static void GetRecordXML_SUB_Category(string proc, TextBox Txt_Ttl, CheckBox Check, Label L_Id,TextBox Category_Attr,TextBox Category_Attr_Sub)
    {
        DataTable dt = db.QP("exec " + proc + " @P0", int.Parse(L_Id.Text)).Tables[0];
        DataRow Drv = dt.Rows[0];
        Txt_Ttl.Text = (string)Drv["Category_Title"];
        Check.Checked = (bool)Drv["Live"];
        Category_Attr.Text = (string)Drv["Category_Attributes"];
        Category_Attr_Sub.Text = (string)Drv["Category_Attributes_Sub"];

    }
    public static void FillCombo_Full(string proc, DropDownList DRP,string Field,string Pram)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ",Pram).Tables[0];
        DRP.DataSource = dt;
        DRP.DataTextField = Field;
        DRP.DataValueField = Field;
        DRP.DataBind();
    }

    public static void FillCombo_Full_Without_Pram(string proc, DropDownList DRP, string Field)
    {
        DataTable dt = db.QP("exec " + proc ).Tables[0];
        DRP.DataSource = dt;
        DRP.DataTextField = Field;
        DRP.DataValueField = Field;
        DRP.DataBind();
    }
   
  
 

    public static void FillCombo(string proc, DropDownList DRP)
    {
        DataTable dt = db.QP("exec " + proc).Tables[0];
        DRP.DataSource = dt;
        DRP.DataTextField = "Title";
        DRP.DataValueField = "Title";
        DRP.DataBind();
    }
   

    public static void FillDataGrid1(string proc, DataGrid rd)
    {
        DataTable dt = db.QP("exec " + proc).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }

    public static void FillDataGrid(string proc, DataGrid rd ,string Area)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ",Area).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }


    public static void FillDataGrid(string proc, DataGrid rd, int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ", ID).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }

    public static void FillDataGrid(string proc, DataGrid rd, string Area,int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ,@P1 ", Area, ID).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }

    public static void FillDataList(string proc, DataList rd, string Area)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ", Area).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }

    public static void FillDataList(string proc, DataList rd)
    {
        DataTable dt = db.QP("exec " + proc ).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }

    public static void FillDataList(string proc, DataList rd, int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ", ID).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }
    public static void FillDataList(string proc, DataList rd, int ID ,int ID2)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ,@P1", ID,ID2).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }

    public static void FillDataList(string proc, DataList rd, int ID, int ID2,string Rate)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ,@P1,@P2", ID, ID2,Rate).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }


    public static void FillDataList(string proc, DataList rd,DataList rd2, int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0 ", ID).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
        rd2.DataSource = dt;
        rd2.DataBind();
    }


   


    public static void FillDataList(string proc, DataList rd, string Area,int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0,@P1 ", Area,ID).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
    }


    public static void FillDataList(string proc, DataList rd, DataList rd2, string Area, int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0,@P1 ", Area, ID).Tables[0];
        rd.DataSource = dt;
        rd.DataBind();
        rd2.DataSource = dt;
        rd2.DataBind();
    }

  
    
    
  
    public static void Fill(string proc, DataList rd,int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0", ID).Tables[0];
        rd.DataSource = dt;
       
        rd.DataBind();
    
    }
    public static void Fill(string proc, DataList rd, string ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0", ID).Tables[0];
        rd.DataSource = dt;

        rd.DataBind();

    }

  




    public static void FillDataGridID(string proc, DataGrid rd, int ID)
    {
        DataTable dt = db.QP("exec " + proc + " @P0", ID).Tables[0];
        rd.DataSource = dt;

        rd.DataBind();

    }




    public static string Replacement_Code(string Text)
    {
        try
        {
            string strReturn = Text.Trim();

            strReturn = strReturn.Replace("ğ", "g");
            strReturn = strReturn.Replace("Ğ", "G");
            strReturn = strReturn.Replace("ü", "u");
            strReturn = strReturn.Replace("Ü", "U");
            strReturn = strReturn.Replace("ş", "s");
            strReturn = strReturn.Replace("Ş", "S");
            strReturn = strReturn.Replace("ı", "i");
            strReturn = strReturn.Replace("İ", "I");
            strReturn = strReturn.Replace("ö", "o");
            strReturn = strReturn.Replace("Ö", "O");
            strReturn = strReturn.Replace("ç", "c");
            strReturn = strReturn.Replace("Ç", "C");
            strReturn = strReturn.Replace(".", "-");
            strReturn = strReturn.Replace("-", "+");
            strReturn = strReturn.Replace(" ", "+");

            strReturn = strReturn.Trim();
            strReturn = new System.Text.RegularExpressions.Regex("[^a-zA-Z0-9+]").Replace(strReturn, "");
            strReturn = strReturn.Trim();
            strReturn = strReturn.Replace("++", "-");
            strReturn = strReturn.Replace("+", "-");
            return strReturn;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


   
}
