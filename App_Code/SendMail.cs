using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Mail
/// </summary>
public class SendMail
{
	public SendMail()
	{
		//
		// TODO: Add constructor logic here
		//
	}



    public static void SendMails(string Name, string Mail, string Mesaj, bool cntrl, Label lbl)
    {

        string InComingMail = Mail_Format.iletisim(Name,Mail,Mesaj);


        MailMessage objMail = new MailMessage();
        objMail.From = new MailAddress("hddizi24@gmail.com", "hddizi24 iletisim");
        objMail.To.Add(new MailAddress(Mail));
        objMail.CC.Add(new MailAddress("hddizi24@gmail.com"));
        objMail.IsBodyHtml = true;
        objMail.Subject = "HDdizi24 iletişim Formu";
        objMail.Body = InComingMail.ToString();


        SmtpClient objSmtpClient = new SmtpClient("smtp.gmail.com");
        objSmtpClient.Port = 587;
        objSmtpClient.EnableSsl = true;
        objSmtpClient.UseDefaultCredentials = true;
        objSmtpClient.Credentials = new System.Net.NetworkCredential("hddizi24@gmail.com", "1q2w3e4r..");



        try
        {
            objSmtpClient.Send(objMail);
            lbl.Visible = cntrl;

        }
        catch
        {
            lbl.Visible = false;
        }

    }



    public static void SendMails_Mailservis(string Name, string Mail, string Mesaj,string Dizi_Title,string image,string Link)
    {

        string InComingMail = Mail_Format.Mailservis(Name, Mail, Mesaj, Dizi_Title, image,Link);
        MailMessage objMail = new MailMessage();
        string from = " Hddizi24 " + Dizi_Title + " Son Bölümünü izleyin";
        objMail.From = new MailAddress("hddizi24@gmail.com", from);
        objMail.To.Add(new MailAddress(Mail));
        objMail.CC.Add(new MailAddress("hddizi24@gmail.com"));
        objMail.IsBodyHtml = true;
        objMail.Subject = from;
        objMail.Body = InComingMail.ToString();


        SmtpClient objSmtpClient = new SmtpClient("smtp.gmail.com");
        objSmtpClient.Port = 587;
        objSmtpClient.EnableSsl = true;
        objSmtpClient.UseDefaultCredentials = true;
        objSmtpClient.Credentials = new System.Net.NetworkCredential("hddizi24@gmail.com", "1q2w3e4r..");



        try
        {
            objSmtpClient.Send(objMail);
          

        }
        catch
        {
           
        }

    }

}