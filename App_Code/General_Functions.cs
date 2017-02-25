using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for General_Functions
/// </summary>
public class General_Functions
{
    public static string Product_Status(string Product_Status_Value)
    {
        switch (Product_Status_Value)
        {
            case "E0":
                return "Stokta Var";

            case "E1":
                return "Stokta Yok";
            case "E2":
                return "Tedarik Sürecinde";
            default:
                break;
        }

        return Product_Status_Value;
    }
}