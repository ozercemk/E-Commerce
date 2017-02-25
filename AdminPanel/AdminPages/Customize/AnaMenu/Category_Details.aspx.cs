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
        Category_Title(Txt_Ttl);
        if (!IsPostBack)
        {
            NewsSql.GetRecords(DataGrid1, "SUBCATEGORY_PROC_ID", int.Parse(Request["Category_ID"]));

        }
     
    }

    public void Category_Title(TextBox Title)
    {
        DataTable dt = db.QP("exec CATEGORY_PROC_ID_AREA @P0", int.Parse(Request["Category_ID"])).Tables[0];
        if (dt.Rows.Count > 0)
        {
            Title.Text = (string)dt.Rows[0]["Category_Title"];
        }
    }
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e) // DataGrid Güncelleme İşlemi 
    {
        L_Id.Text = e.Item.Cells[0].Text;
        L_islem.Text = "GÜNCELLEME";
        NewsSql.GetRecordXML_SUB_Category("SUBCATEGORY_PROC_ID_UPDATES", Txt_Ttl, _Check, L_Id,Category_Atributes_Txt,Category_Atributes_Sub_Txt);
        Clear();
    }

     protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        NewsSql.FillDataGrid("SUBCATEGORY_PROC_ID", DataGrid1, int.Parse(Request["Category_ID"]));

    }

    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e) // Datagrid Delete İşlemi
    {

        db.SP("exec SUBCATEGORY_DELETE_PROC @P0", int.Parse((e.Item.Cells[0].Text)));//ID'e göre delete işlemi
        NewsSql.GetRecords(DataGrid1, "SUBCATEGORY_PROC_ID", int.Parse(Request["Category_ID"]));
   
    }
 
   protected void DataGrid1_ItemDataBound(object sender, DataGridItemEventArgs e) //DataGrid Veri Bağlama İşlemi
    {

        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            ImageButton rb = (ImageButton)e.Item.Cells[4].Controls[1];
            rb.Attributes.Add("onclick", "return confirm('Bu kayıt silmek istediginize emin misiniz?');");
            e.Item.Attributes.Add("onmouseover", "this.style.backgroundColor= 'lightblue';");
            e.Item.Attributes.Add("onmouseout", "this.style.backgroundColor= 'white';");
            

        }
        if (e.Item.ItemType == ListItemType.EditItem)
        {
             ImageButton rb2 = (ImageButton)e.Item.Cells[3].Controls[1];
            rb2.Attributes.Add("onclick", "return confirm('Bu kayıtı degiştirmek istediginize emin misiniz?');");
           
        }
    }

    private void Clear()
    {
    L_islem.Text = "EKLEME";
    Txt_Ttl.Text = "";
    L_Id.Text = "";
    Category_Atributes_Sub_Txt.Text = "";
    Category_Atributes_Txt.Text = "";
     
    }
    protected void INSERT_Click(object sender, EventArgs e)
    {
       
        if (L_Id.Text == "" || string.IsNullOrEmpty(L_Id.Text))
        {
            L_Id.Text = "00";

        }


        db.SP("exec SUBCATEGORY_PROC_INSERT_UPDATE @P0,@P1,@P2,@P3,@P4,@P5", int.Parse(Request["Category_ID"]), int.Parse(L_Id.Text), Txt_Ttl.Text,Category_Atributes_Txt.Text,Category_Atributes_Sub_Txt.Text,_Check.Checked);
        NewsSql.GetRecords(DataGrid1, "SUBCATEGORY_PROC_ID", int.Parse(Request["Category_ID"]));
        Clear();
        
    }

}
