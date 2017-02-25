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
            NewsSql.GetRecords(DataGrid1, "Category_PROC_AREA", "Category");
            Clear();

        }
      
    }
    
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e) // DataGrid Güncelleme İşlemi 
    {
        L_Id.Text = e.Item.Cells[0].Text;
        L_islem.Text = "GÜNCELLEME";
        NewsSql.GetRecordXML("CATEGORY_PROC_ID_AREA", Txt_Ttl, Txt_Shrt, Lbl_Txt_Pic, Editor_Text_Box, L_Id, Live_Check, Product_Image, Category_Text);
  
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        NewsSql.FillDataGrid("Category_PROC_AREA", DataGrid1, "Category");

    }

    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e) // Datagrid Delete İşlemi
    {

        db.SP("exec CATEGORY_DELETE_PROC @P0", int.Parse((e.Item.Cells[0].Text)));//ID'e göre delete işlemi
        NewsSql.GetRecords(DataGrid1, "Category_PROC_AREA", "Category");

    }
   
   protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e) //DataGrid Veri Bağlama İşlemi
    {

    }

   public void ItemsGrid_Command(Object sender, DataGridCommandEventArgs e)
   {

       switch (((ImageButton)e.CommandSource).CommandName)
       {

           case "Product_Content":
               Response.Redirect("~/AdminPanel/AdminPages/Customize/AnaMenu/Category_Details.aspx?Category_ID=" + e.Item.Cells[0].Text);
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
           db.SP("exec Category_PROC_INSERT_UPDATE @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7", int.Parse(L_Id.Text), Txt_Ttl.Text, Txt_Shrt.Text, Lbl_Txt_Pic.Text, Editor_Text_Box.Text, Live_Check.Checked, Category_Text.Text,"Category");
           NewsSql.GetRecords(DataGrid1, "Category_PROC_AREA", "Category");
        
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
