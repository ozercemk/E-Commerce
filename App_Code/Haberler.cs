using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Threading;
using System.Net;
using System.IO;
using System.Xml;


/// <summary>
/// Summary description for Haberler
/// </summary>
public  class Haberler
{

    public static string  Category_Total(string CategoryCode, string SubCategory)
    {
        DataTable dt = db.QP("exec Category_Total @P0,@P1", CategoryCode, SubCategory).Tables[0];


        return dt.Rows[0]["COUNTER"].ToString();
    
    
    }

    public static string Replacement(string Title)
    {
        return Title.Trim().TrimEnd().TrimStart().Replace("%", " ").Replace(".", "").Replace(",", "").Replace(";", "").Replace("!", "").Replace(":", " ").Replace("&", " ").Replace("*", " ").Replace("#", " ").Replace(".", "").Replace(",", "").Replace(";", "").Replace("!", "").Replace("\"", "").Replace("/", "").Replace("/ ", "").Replace("Ç", "c").Replace("ç", "c").Replace("ö", "o").Replace("Ö", "O").Replace("İ", "i").Replace("ı", "i").Replace("I", "i").Replace("ö", "o").Replace("İ", "i").Replace("ı", "i").Replace("I", "i").Replace("ı", "i").Replace("Ç", "c").Replace("ç", "c").Replace("ö", "o").Replace("Ö", "0").Replace("İ", "i").Replace("ı", "i").Replace("I", "i").Replace("ö", "o").Replace("İ", "i").Replace("ı", "i").Replace("I", "i").Replace("Ş", "s").Replace("ş", "s").Replace("Ü", "u").Replace("ü", "u").Replace("Ğ", "g").Replace("ğ", "g").Replace("?", "").Replace(" ", "-").Replace("'", "").Replace("---", "-").Replace("...", "").Replace("--", "-").Replace("...", "").Replace("?", "").Replace("@", "").Replace("+", "").Replace("--", "-").TrimEnd().TrimStart();

    }


    public static string R_Category(string Title)
    {
        return Title.Trim().TrimEnd().TrimStart().Replace("%", " ").Replace(" ", "-");
    }

    public static string R_Category_Site(string Title)
    {
        return Title.Trim().TrimEnd().TrimStart().Replace("%", " ").Replace(" ", "-").ToLower().Replace(".", "").Replace("İ", "i");
    }


    public static string Replacement_Etiket(string Title)
    {


        return Title.TrimEnd().TrimStart().Substring(0, Title.Trim().Replace("'", "-").Replace(" ", "-").IndexOf("-") + 1).Trim().Replace("%", " ").Replace(".", "").Replace(",", "").Replace(";", "").Replace("!", "").Replace(":", " ").Replace("&", " ").Replace("*", " ").Replace("#", " ").Replace(".", "").Replace(",", "").Replace(";", "").Replace("\"", "").Replace("/", "").Replace("/ ", "").Replace("!", "").Replace("Ç", "c").Replace("ç", "c").Replace("ö", "o").Replace("Ö", "O").Replace("İ", "i").Replace("ı", "i").Replace("I", "i").Replace("ö", "o").Replace("İ", "i").Replace("ı", "i").Replace("I", "i").Replace("Ö", "0").Replace("ı", "i").Replace("Ç", "c").Replace("ç", "c").Replace("ö", "o").Replace("İ", "i").Replace("ı", "i").Replace("I", "i").Replace("ö", "o").Replace("İ", "i").Replace("ı", "i").Replace("I", "i").Replace("Ş", "s").Replace("ş", "s").Replace("Ü", "u").Replace("ü", "u").Replace("Ğ", "g").Replace("ğ", "g").Replace("?", "").Replace(" ", "-").Replace("'", "").Replace("---", "-").Replace("...", "").Replace("--", "-").Replace("?", "").Replace("+", "").Replace("@", "").TrimEnd().TrimStart().Replace("-", "").Replace("'", "").Replace("''", "").Replace("!", "").Replace(".", "").Replace(";", "").Replace(",", "").Replace("\"", "").Replace(Title.LastIndexOf("-").ToString(), "");
    }

    public static void Haber_Upload_AA(string proc)
    {

        DataTable dt = db.QP("exec " + proc).Tables[0];
       
        for (int i = 0; i <= dt.Rows.Count - 1; ++i)
        {
            try
            {

              Haberler.imageUpload((string)dt.Rows[i]["image"], (string)dt.Rows[i]["image5"]);
               
            }
            catch
            { }
        }

    
    
    }


    public static void imageUpload(string Url, string İmagePaths)
    {
        try
        {
            string imageName = İmagePaths;
            string imagePath = Path.Combine(HttpContext.Current.Server.MapPath(@"~\imagesupload"), imageName);
            string imageUrl = Url;

            WebClient client = new WebClient();
            client.DownloadFile(imageUrl, imagePath);
        }

        catch { }



    }

    public static void RSS_SERVİCES_Site_Manuel_Upload(string Site_Name)
    {

        DataTable dt = db.QP("exec Site_Adres_WEB_Servis_List_Manuel @P0 ", Site_Name).Tables[0];
        if (dt.Rows.Count > 0)
        {


            for (int i = 0; i <= dt.Rows.Count - 1; ++i)
            {
                Haberler.Haber_Web_Servis((string)dt.Rows[i]["Site_webservis"], (string)dt.Rows[i]["Domain"], (string)dt.Rows[i]["Kategory"], (string)dt.Rows[i]["Site_isim"], (string)dt.Rows[i]["Sub_Category"]);
            }

        }

    }


    public static void RSS_SERVİCES_UPLOAD(string Site_webservis_ADR, string AA_PROC_ADRESS_MAİN,string SiteName_Servis_Pram)
    {

        DataTable dt = db.QP(String.Format("exec {0} @P0 ", Site_webservis_ADR), SiteName_Servis_Pram).Tables[0];
        if (dt.Rows.Count > 0)
        {


            for (int i = 0; i <= dt.Rows.Count - 1; ++i)
            {
                Haberler.Haber_Web_Servis((string)dt.Rows[i]["Site_webservis"], (string)dt.Rows[i]["Domain"], (string)dt.Rows[i]["Kategory"], (string)dt.Rows[i]["Site_isim"], (string)dt.Rows[i]["Sub_Category"]);
            }

            
                Haberler.Haber_Upload_AA(AA_PROC_ADRESS_MAİN);// upload images to images directory anaduluajans
          
        }

    }

    public static void RSS_SERVİCES_UPLOADS(string Site_webservis_ADR, string AA_PROC_ADRESS_MAİN, string SiteName_Servis_Pram)
    {

        DataTable dt = db.QP(String.Format("exec {0} @P0 ", Site_webservis_ADR), SiteName_Servis_Pram).Tables[0];
        if (dt.Rows.Count > 0)
        {


            for (int i = 0; i <= dt.Rows.Count - 1; ++i)
            {
                Haberler.Haber_Web_Servis((string)dt.Rows[i]["Site_webservis"], (string)dt.Rows[i]["Domain"], (string)dt.Rows[i]["Kategory"], (string)dt.Rows[i]["Site_isim"], (string)dt.Rows[i]["Sub_Category"]);
            }


            Haberler.Haber_Upload_AA(AA_PROC_ADRESS_MAİN);// upload images to images directory anaduluajans

        }

    }



    public static string latin(string x)
    {
        
     
         x = x.Replace( "&#8217;","''");
         x = x.Replace( "&#8221;","...");
         x = x.Replace( "&#8220;","“");
        /* x = x.Replace("ü", "ü");
         x = x.Replace("Ü", "Ü");
         x = x.Replace("Ç","c").Replace("ç","c").Replace("ö","o").Replace("İ","i").Replace("ı","i").Replace("I","i").Replace("ö","o").Replace("İ","i").Replace("ı","i").Replace("I","i");
         x = x.Replace("Ç","c").Replace("ç","c").Replace("ö","o").Replace("İ","i").Replace("ı","i").Replace("I","i").Replace("ö","o").Replace("İ","i").Replace("ı","i").Replace("I","i");
         x = x.Replace("ö", "ö");
         x = x.Replace("Ö", "Ö");
         x = x.Replace("u", "u");
         x = x.Replace("U", "U");
         x = x.Replace("ş", "ş");
         x = x.Replace("Ş", "Ş"); 
         x = x.Replace("ı", "ı");
         x = x.Replace("Ç","c").Replace("ç","c").Replace("ö","o").Replace("İ","i").Replace("ı","i").Replace("I","i").Replace("ö","o").Replace("İ","i").Replace("ı","i").Replace("I","i");
         x = x.Replace("ğ", "ğ");
         x = x.Replace("Ğ", "Ğ");*/
       
        return x;
    }


    public static string De_Replacement_Code(string Text)
    {
        try
        {
            string strReturn = Text.Trim();

          
            strReturn = strReturn.Replace("-", ".");
            strReturn = strReturn.Replace("+", "-");
            strReturn = strReturn.Replace("+", " ");

            strReturn = strReturn.Trim();
            strReturn = new System.Text.RegularExpressions.Regex("[^a-zA-Z0-9+]").Replace(strReturn, "");
            strReturn = strReturn.Trim();
            strReturn = strReturn.Replace("-", "+");
            return strReturn;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    public static void Haber_Web_Servis(string RSS_Service, string Website, string CategoryCode, string Site_Name,string SubCategory)
    {
        try
        {
            HttpWebRequest req1 = (HttpWebRequest)WebRequest.Create(RSS_Service.Trim());

            req1.Method = "GET";
            req1.ContentType = "text/xml; charset=utf-8";
            HttpWebResponse response = (HttpWebResponse)req1.GetResponse();
            Stream resStream = response.GetResponseStream();
            StreamReader _Answer1 = new StreamReader(resStream);
            string retval1 = _Answer1.ReadToEnd();
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(retval1);
            XmlNode root = doc.DocumentElement;


            XmlNodeList XnlistPoll = doc.GetElementsByTagName("item");

            string website_RW = string.Empty;
            string Site_Name_RW = string.Empty;
            string CategoryCode_RW = string.Empty;
            if (string.IsNullOrEmpty(Site_Name) == true)
            {
                Site_Name_RW = "Genel";
            }
            else
            {
                Site_Name_RW = Site_Name.ToUpper();

            }

            if (string.IsNullOrEmpty(Website) == true)
            {
                website_RW = "";
            }
            else
            {
                website_RW = Website;

            }


            if (string.IsNullOrEmpty(CategoryCode) == true)
            {
                CategoryCode_RW = "SG";
            }
            else
            {
                CategoryCode_RW = CategoryCode;

            }

            string[] enclosure_arr = new string[XnlistPoll.Count];
            string[] title_arr = new string[XnlistPoll.Count];
            string[] desciption_arr = new string[XnlistPoll.Count];
            string[] pubdate_arr = new string[XnlistPoll.Count];
            string[] guid_arr = new string[XnlistPoll.Count];
            string[] link_arr = new string[XnlistPoll.Count];
            string[] image_arr = new string[XnlistPoll.Count];

            for (int i = 0; i <= XnlistPoll.Count - 1; ++i)
            {


                if (XnlistPoll[i].SelectSingleNode("description") == null)
                {
                    desciption_arr[i] = string.Empty;
                }
                else
                {
                    desciption_arr[i] = XnlistPoll[i]["description"].InnerText;
                }


                if (XnlistPoll[i].SelectSingleNode("title") == null)
                {
                    title_arr[i] = string.Empty;
                }
                else
                {
                    title_arr[i] = XnlistPoll[i]["title"].InnerText;
                }


               

                enclosure_arr[i] = string.Empty;


                if (XnlistPoll[i].SelectSingleNode("image") == null)
                {
                    image_arr[i] = string.Empty;
                }
                else
                {
                    image_arr[i] = XnlistPoll[i]["image"].InnerText;
                }


                if (XnlistPoll[i].SelectSingleNode("pubDate") == null)
                {
                    pubdate_arr[i] = string.Empty;
                }
                else
                {
                    pubdate_arr[i] = XnlistPoll[i]["pubDate"].InnerText;
                }


                if (XnlistPoll[i].SelectSingleNode("guid") == null)
                {
                    guid_arr[i] = string.Empty;
                }
                else
                {
                    guid_arr[i] = XnlistPoll[i]["guid"].InnerText;
                }


                if (XnlistPoll[i].SelectSingleNode("link") == null)
                {
                    link_arr[i] = string.Empty;
                }
                else
                {
                    link_arr[i] = XnlistPoll[i]["link"].InnerText;
                }






                string title = title_arr[i];
                string description = desciption_arr[i];
                string Link = link_arr[i];
                string pubdate = pubdate_arr[i];
                string encloure = enclosure_arr[i];
                string guid = guid_arr[i];


                db.SP("exec RSS_INSERT_UPDATE @P0,@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9,@P10,@P11", title_arr[i], desciption_arr[i], link_arr[i], pubdate_arr[i], Site_Name_RW, guid_arr[i], enclosure_arr[i], DateTime.Now, CategoryCode_RW, website_RW, image_arr[i], SubCategory);


            }
        }

        catch { }
     
    }

    public static void RSS_SERVİCES(string Site_webservis, string Domain, string Kategory, string Site_isim, string SubCategory)
    {

        Haber_Web_Servis(Site_webservis, Domain, Kategory, Site_isim, SubCategory);

    }


    public static void RSS_SERVİCES_FULL()
    {
        try
        {
        DataTable dt = db.QP("exec RSS_Services_PROC").Tables[0];
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i <= dt.Rows.Count - 1; ++i)
            {
                Haberler.Haber_Web_Servis((string)dt.Rows[i]["Site_webservis"], (string)dt.Rows[i]["Domain"], (string)dt.Rows[i]["Kategory"], (string)dt.Rows[i]["Site_isim"], (string)dt.Rows[i]["Sub_Category"]);

            }
        }
           }
           catch(Exception ex) 
             {
                 db.SP("exec Error_Log_ARCH @P0,@P1", ex.Message.ToString(), DateTime.Now.ToShortDateString());
        
            }
    }



    public static void RSS_SERVİCES_GENEL()
    {

        DataTable dt = db.QP("exec GENEL_SİTE_ADRESS").Tables[0];
        if (dt.Rows.Count > 0)
        {


            for (int i = 0; i <= dt.Rows.Count - 1; ++i)
            {
                Haberler.Haber_Web_Servis((string)dt.Rows[i]["Site_webservis"], (string)dt.Rows[i]["Domain"], (string)dt.Rows[i]["Kategory"], (string)dt.Rows[i]["Site_isim"], (string)dt.Rows[i]["Sub_Category"]);
            }

        }

    }


}