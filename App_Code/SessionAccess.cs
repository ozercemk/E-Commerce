using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;



    public class SessionAccess
    {
        #region CRM
        public static string CRM_User_FullName
        {
            get
            {
                return (string)HttpContext.Current.Session["CRM_User_FullName"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_FullName"] = value;
            }

        }



        public static string CRM_User_Reponse_Redirect
        {
            get
            {
                return (string)HttpContext.Current.Session["CRM_User_Reponse_Redirect"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_Reponse_Redirect"] = value;
            }

        }

        public static string CRM_User_LoginName
        {
            get
            {
                return (string)HttpContext.Current.Session["CRM_User_LoginName"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_LoginName"] = value;
            }

        }


        public static string CRM_User_image
        {
            get
            {
                return (string)HttpContext.Current.Session["CRM_User_image"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_image"] = value;
            }

        }

        public static string CRM_User_Profil_image
        {
            get
            {
                return (string)HttpContext.Current.Session["CRM_User_Profil_image"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_Profil_image"] = value;
            }

        }
        public static string CRM_User_LoginPassword
        {
            get
            {
                return (string)HttpContext.Current.Session["CRM_User_LoginPassword"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_LoginPassword"] = value;
            }

        }

     
        public static string CRM_User_Email
        {

            get
            {
                return (string)HttpContext.Current.Session["CRM_User_Email"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_Email"] = value;
            }

        }





        public static string CRM_User_Favori
        {

            get
            {
                return (string)HttpContext.Current.Session["CRM_User_Favori"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_Favori"] = value;
            }

        }

        public static string CRM_User_Abone
        {

            get
            {
                return (string)HttpContext.Current.Session["CRM_User_Abone"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_Abone"] = value;
            }

        }

        public static int CRM_User_ID
        {

            get
            {
                return (int)HttpContext.Current.Session["CRM_User_ID"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_ID"] = value;
            }

        }

     
        public static string CRM_User_Name
        {

            get
            {
                return (string)HttpContext.Current.Session["CRM_User_Name"];
            }
            set
            {
                HttpContext.Current.Session["CRM_User_Name"] = value;
            }

        }


       
        
        
#endregion


        public static void Control_Session_Values(string UserName)
        {
            if ( UserName == "" || string.IsNullOrEmpty(UserName))
            {

                HttpContext.Current.Response.Redirect("~/AdminPanel/AdminPages/Global.aspx");
            
            }
        
        }

       

    }

