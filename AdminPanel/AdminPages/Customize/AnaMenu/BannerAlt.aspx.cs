using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;  
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class AdminPanel_AdminPages_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SessionAccess.Control_Session_Values(SessionAccess.CRM_User_Email);


        if (!IsPostBack)
        {
            NewsSql.GetRecords(DataGrid1, "PRODUCT_PROC_AREA", "BA");
            Clear();

        }
      
    }
    
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e) // DataGrid Güncelleme İşlemi 
    {
        L_Id.Text = e.Item.Cells[0].Text;
        L_islem.Text = "GÜNCELLEME";
        NewsSql.GetRecordXML("PRODUCT_PROC_ID_AREA", Txt_Ttl, Txt_Shrt, Lbl_Txt_Pic, Editor_Text_Box, "BA", L_Id, Live_Check, Product_Image, DropDownList1, Price_Txt, Product_Counter, Product_Status, Brand_Drp, Reduce_Price_Txt, Ratio_Reduce_TXT, Product_Type_DRP);
  
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        NewsSql.FillDataGrid("PRODUCT_PROC_AREA", DataGrid1, "BA");

    }

    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e) // Datagrid Delete İşlemi
    {

        db.SP("exec PRODUCT_DELETE_PROC @P0", int.Parse((e.Item.Cells[0].Text)));//ID'e göre delete işlemi
        NewsSql.GetRecords(DataGrid1, "PRODUCT_PROC_AREA", "BA");

    }
   
   protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e) //DataGrid Veri Bağlama İşlemi
    {

    }
    
   public void ItemsGrid_Command(Object sender, DataGridCommandEventArgs e)
    {

        switch (((ImageButton)e.CommandSource).CommandName)
        {

            case "Product_Content":
                Response.Redirect("~/AdminPanel/AdminPages/Customize/AnaMenu/Products_Details.aspx?Product_ID=" + e.Item.Cells[0].Text);
             break;
             default:
                // Do nothing.
             break;

        }

    }

    private void Clear()
    {
        L_islem.Text = "EKLEME";
        Txt_Ttl.Text = "";
        Txt_Shrt.Text = "";
        Lbl_Txt_Pic.Text = "";
        Editor_Text_Box.Text = "";
        L_Id.Text = "";
        Price_Txt.Text = "";
        Product_Image.ImageUrl = "";
        
    }
    protected void INSERT_Click(object sender, EventArgs e)
    {
        DateTime Date = DateTime.Now;

        if (L_Id.Text == "" || string.IsNullOrEmpty(L_Id.Text))
        {
            L_Id.Text = "00";

        }
           File_Upload(ResimUpload, Lbl_Txt_Pic, "images");
           db.SP("exec PRODUCT_PROC_INSERT_UPDATE @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9,@P10,@P11,@P12,@P13,@P14,@P15,@P16,@P17,@P18,@P19", int.Parse(L_Id.Text), Txt_Ttl.Text, Txt_Shrt.Text, Lbl_Txt_Pic.Text, Editor_Text_Box.Text, "BA", Date, Live_Check.Checked, DropDownList1.SelectedValue, Price_Txt.Text, Product_Counter.Text, Product_Status.SelectedItem.Value, Brand_Drp.SelectedItem.Text, Reduce_Price_Txt.Text, Ratio_Reduce_TXT.Text, Product_Type_DRP.SelectedItem.Text, "", "", "", "");
           NewsSql.GetRecords(DataGrid1, "PRODUCT_PROC_AREA", "BA");
           Clear();
    }

  
    protected static void File_Upload(FileUpload File, Label Upload, string Folder_Content)
    {
        string virtualFolder = string.Empty;

        if (File.HasFile)
        {

          if (Folder_Content == "images")
            {
                virtualFolder = "~/images/";
            }
           File.PostedFile.SaveAs(HttpContext.Current.Server.MapPath(virtualFolder + File.FileName));
            Upload.Text = virtualFolder + File.FileName ;
            Upload.Visible = false;
        }



    }
 


}
