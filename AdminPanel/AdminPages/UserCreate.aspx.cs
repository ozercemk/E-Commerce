using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;
using System.Text;


public partial class AdminPanel_AdminPages_UserCreate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e) //Kayıt İşlemi
    {
        db.SP("exec User_Insert_Proc @P0,@P1,@P2,@P3", Encription.MD5(UserName.Text), Encription.MD5(Password.Text), "", "");
        Inst_Lbl.Visible = true;

    }

}