using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Principal;


public partial class Controls_TopMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Crm_Autor(SessionAccess.CRM_User_Email);
       
    }
   
    //private void Crm_Autor(string UserName)
    //{
    //     int k =0;
    //     string Deger = string.Empty;

         


    //     RadMenuItem[] Rad_Arr = new RadMenuItem[100];
    
    //    foreach (RadMenuItem rd in RadMenu1.Items)
    //        {
    //               Rad_Arr[k++] = rd;
    //               Deger += rd.Text.ToString() + ",";
    //        }
    
    //    for (int j = 0; j <= k-1 ; ++j)
    //        {
    //              foreach (RadMenuItem rd2 in Rad_Arr[j].Items)
    //                {
    //                    Deger += rd2.Text.ToString() + ",";
    //                    Rad_Arr[k++] = rd2;
    //                }
    //        }
         
    //     Deger = Deger.Substring(0,Deger.LastIndexOf(","));
    //     string[] components;
    //     components   = Deger.Split(',');


        
    //     DataTable dt = db.Q("select " + Deger + " from Crm_Users where Email='" + UserName + "'").Tables[0];
        
    //    for (int i = 0; i <= components.Length-1; ++i)
    //        {
    //         Rad_Arr[i].Visible = (bool)dt.Rows[0][components[i]];
    //        }
         
    
    // }

    
}

 

