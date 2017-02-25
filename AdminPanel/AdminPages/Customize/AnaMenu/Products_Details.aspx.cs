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
            NewsSql.GetRecords(DataGrid1, "SUBPRODUCT_PROC_ID", int.Parse(Request["Product_ID"]));
            Clear();

        }
     
    }
    
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e) // DataGrid Güncelleme İşlemi 
    {
        L_Id.Text = e.Item.Cells[0].Text;
        L_islem.Text = "GÜNCELLEME";
        NewsSql.GetRecordXML_SUB_Pro("SUBPRODUCT_PROC_ID_UPDATES", Txt_Ttl, Slider_Check, Lbl_Txt_Pic, L_Id, Product_image, Keywords_TXT, UrunDrop, Stok_Txt, Lbl_Txt_Pic1024, Lbl_Txt_Pic122);
      
    }

     protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        NewsSql.FillDataGrid("SUBPRODUCT_PROC_ID", DataGrid1, int.Parse(Request["Product_ID"]));

    }

    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e) // Datagrid Delete İşlemi
    {

        db.SP("exec SUBPRODUCT_DELETE_PROC @P0", int.Parse((e.Item.Cells[0].Text)));//ID'e göre delete işlemi
        NewsSql.GetRecords(DataGrid1, "SUBPRODUCT_PROC_ID", int.Parse(Request["Product_ID"]));
   
    }
 
   protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e) //DataGrid Veri Bağlama İşlemi
    {

        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            ImageButton rb = (ImageButton)e.Item.Cells[5].Controls[1];
            rb.Attributes.Add("onclick", "return confirm('Bu kayıt silmek istediginize emin misiniz?');");
            e.Item.Attributes.Add("onmouseover", "this.style.backgroundColor= 'lightblue';");
            e.Item.Attributes.Add("onmouseout", "this.style.backgroundColor= 'white';");
            

        }
        if (e.Item.ItemType == ListItemType.EditItem)
        {
             ImageButton rb2 = (ImageButton)e.Item.Cells[4].Controls[1];
            rb2.Attributes.Add("onclick", "return confirm('Bu kayıtı degiştirmek istediginize emin misiniz?');");
           
        }
    }

    private void Clear()
    {
    L_islem.Text = "EKLEME";
    Txt_Ttl.Text = "";
    Lbl_Txt_Pic.Text = "";
    L_Id.Text = "";
    Slider_Check.Checked = false;
    Product_image.ImageUrl = "";
       
    }
    protected void INSERT_Click(object sender, EventArgs e)
    {
        DateTime Date = DateTime.Now;

        if (L_Id.Text == "" || string.IsNullOrEmpty(L_Id.Text))
        {
            L_Id.Text = "00";

        }

        File_Upload(ResimUpload, Lbl_Txt_Pic, "images");
        db.SP("exec SUBPRODUCT_PROC_INSERT_UPDATE_PRO @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9,@P10", int.Parse(Request["Product_ID"]), Txt_Ttl.Text, Lbl_Txt_Pic.Text, Slider_Check.Checked, Date, int.Parse(L_Id.Text), Keywords_TXT.Text, UrunDrop_Txt.Text, Stok_Txt.Text,Lbl_Txt_Pic1024.Text,Lbl_Txt_Pic122.Text);
        NewsSql.GetRecords(DataGrid1, "SUBPRODUCT_PROC_ID", int.Parse(Request["Product_ID"]));
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
