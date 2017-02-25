using System;
using System.Collections.Generic;
using System.Linq;  
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;


public partial class Global : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {


    }
   protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Login_Kontrol();
   
   
    }
  
    private void Login_Kontrol()
    {

        DataTable dt = db.QP("exec CRM_Users_Select_Login_Control @P0,@P1",
               TextBox1.Text,
               TextBox2.Text
               ).Tables[0];
        if (dt.Rows.Count > 0)
        {
            Err_Lbl.Visible = false;
            SessionAccess.CRM_User_Email    = dt.Rows[0]["Email"].ToString();
            SessionAccess.CRM_User_FullName = dt.Rows[0]["Name"].ToString() + " " + dt.Rows[0]["Surname"].ToString();
            Response.Redirect("~/AdminPanel/AdminPages/GlobalAdmin.aspx");
        
        
        }
        else
        {
            Err_Lbl.Visible = true;
        }
    
    
    }
}
