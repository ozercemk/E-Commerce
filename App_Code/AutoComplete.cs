
using System;
using System.Collections.Generic;
using System.Web.Services;
using System.Data;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class AutoComplete : WebService
{
    public AutoComplete()
    {
    }

    [WebMethod]
    public string[] GetCompletionList(string prefixText, int count)
    {
        if (count == 0)
        {
            count = 10;
        }

        DataTable dt = db.QP("exec Serach_List @P0", prefixText).Tables[0];
   
        List<string> items = new List<string>(count);
        for (int i = 0; i < count; i++)
        {

            items.Add((string)dt.Rows[i]["Title3"]);
        }

        return items.ToArray();
    }
}




