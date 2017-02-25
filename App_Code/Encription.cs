using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

/// <summary>
/// Summary description for Encription
/// </summary>
public class Encription
{
    public static byte[] ByteDonustur(string deger)
    {
        UnicodeEncoding ByteConverter = new UnicodeEncoding();
        return ByteConverter.GetBytes(deger);
    }

    public static string MD5(string strGiris)
    {
        if (strGiris == "" || strGiris == null)
        {
            throw new ArgumentNullException("Şifrelenecek veri yok");
        }
        else
        {
            MD5CryptoServiceProvider sifre = new MD5CryptoServiceProvider();
            byte[] arySifre = ByteDonustur(strGiris);
            byte[] aryHash = sifre.ComputeHash(arySifre);
            return BitConverter.ToString(aryHash);
        }
    }


    public static string Sifrele(string data)
    {
        byte[] tempDizi = System.Text.ASCIIEncoding.ASCII.GetBytes(data);// şifrelenecek veri byte dizisine çevrilir
        string finalData = System.Convert.ToBase64String(tempDizi);//Base64 ile şifrelenir
        return finalData;
    }

    public static string SifreCoz(string data)
    {
        byte[] tempDizi = System.Convert.FromBase64String(data);
        string finalData = System.Text.ASCIIEncoding.ASCII.GetString(tempDizi);
        return finalData;
    }
}