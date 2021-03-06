using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;
using System.Web.Routing;
/// <summary>
/// Summary description for Mail_Format
/// </summary>
public class Mail_Format
{
    public static string Style() 
    {
        string Style = @"<style type='text/css'>

.News {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 11px;
	color: #666666;
	font-weight: normal;
	line-height: 13px;
	text-align: left;
	text-transform: none;
}
.NewsBox {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 11px;
	color: white;
	font-weight: bold;
	line-height: 13px;
	text-align: left;
	text-transform: none;
	background:#6ba3de;
}
.NewsCenter {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 9px;
	color: #666666;
	font-weight: normal;
	line-height: 13px;
	text-align: center;
	text-transform: none;
}
.NewsJustify {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 9px;
	color: #666666;
	font-weight: normal;
	line-height: 13px;
	text-align:justify;
	text-transform: none;
}
.NewsBold {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 11px;
	color: #666666;
	font-weight:bold;
	line-height: 13px;
	text-align: left;
	text-transform: none;
	vertical-align:top;
}
.NewsBoldCenter {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 11px;
	color: #666666;
	font-weight:bold;
	line-height: 13px;
	text-align: center;
	text-transform: none;
}
.NewsBoldHeader {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 11px;
	color: #666666;
	font-weight:bold;
	line-height: 13px;
	text-align: left;
	text-transform: none;
	background-color:#e6e6e7;
}
.NewsBoldHeaderDarkBlue {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 13px;
	color:White;
	font-weight:bold;
	line-height: 13px;
	text-align: left;
	text-transform: none;
	background-color:#000099;
}
.NewsBoldHeaderResultItem {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 11px;
	color: #666666;
	font-weight:bold;
	line-height: 13px;
	text-align: left;
	text-transform: none;
	background-color:#cbddf1;
}
.NewsBoldHeaderResult {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 13px;
	color: White;
	font-weight:bold;
	line-height: 13px;
	text-align: left;
	text-transform: none;
	background-color:#6ba3de;
}
.NewsBoldBig {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 16px;
	color: #666666;
	font-weight:bold;
	line-height: 13px;
	text-align: left;
	text-transform: none;
}
.NewsBoldBigOrange {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 16px;
	color:DarkOrange;
	font-weight:bold;
	line-height: 13px;
	text-align: left;
	text-transform: none;
	vertical-align:top;
}
.NewsBoldBigOrangePlus {
	font-family: DINBEK;
	text-decoration: none;
	font-size: 16px;
	color:DarkOrange;
	font-weight:bold;
	line-height: 13px;
	text-align: center;
	text-transform: none;
	vertical-align:top;
}
</style>";
        return Style;
    }
   
  
    public static string iletisim(string Name,string mail,string mesaj)
    {
        string Mesage = @"<html>
<head>
    <title></title>" + Style() + @"
</head>
<body><table>
    <tr>
        <td colspan='3'><img src='http://www.hddizi24.com/images/logo.png'></td>
    </tr>
    <tr>
        <td class='NewsBold'>isim : 
        </td>
        <td class='NewsBold'>
            &nbsp;:&nbsp;
        </td>
        <td class=News>" + Name + @"</td>
    </tr>


 <tr>
        <td class='NewsBold'>Mail Adresi : 
        </td>
        <td class='NewsBold'>
            &nbsp;:&nbsp;
        </td>
        <td class=News>" + mail + @"</td>
    </tr>





 <tr>
        <td class='NewsBold'>Mesaj : 
        </td>
        <td class='NewsBold'>
            &nbsp;:&nbsp;
        </td>
        <td class=News>" + mesaj + @"</td>
    </tr>

 
   
      
                    
    </table>";

        return Mesage;
    }



    public static string Mailservis(string Name, string mail, string mesaj,string Dizi,string image,string Link)
    {
        string Mesage = @"<html>
<head>
    <title></title>" + Style() + @"
</head>
<body><table>
    <tr>
        <td colspan='3'><img src='http://www.hddizi24.com/images/logo.png'></td>
    </tr>
    <tr>
        <td class='NewsBold'>Merhaba: 
        </td>
        <td class='NewsBold'>
            &nbsp;:&nbsp;
        </td>
        <td class=News>" + Name + @"</td>
    </tr>


 <tr>
  <td colspan='3'><img src='" + image + @"'></td>
        <td class='NewsBold'>" + Dizi + @"'Son Bölümü için Tıklayınız 
        </td>
        <td class='NewsBold'>
            &nbsp;:&nbsp;
        </td>
        <td class=News> <a href=" +Link+ @"</td>
    </tr>





 <tr>
        <td class='NewsBold'>Mesaj : 
        </td>
        <td class='NewsBold'>
            &nbsp;:&nbsp;
        </td>
        <td class=News>" + mesaj + @"</td>
    </tr>

 
   
      
                    
    </table>";

        return Mesage;
    }

   
}
