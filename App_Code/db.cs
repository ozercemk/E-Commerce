using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for db
/// </summary>
public class db
{
	public db()
	{
		
	}
    public static DataSet QP(string SqlString, params object[] pars)
    {
        return ICompo.Data.DataAccess.ExecuteQueryP(SqlString, pars);
    }
    public static DataSet Q(string SqlString, params object[] pars)
    {
        return ICompo.Data.DataAccess.ExecuteQuery(SqlString, pars);
    }
    public static void SP(string SqlString, params object[] pars)
    {
         ICompo.Data.DataAccess.ExecuteSqlP(SqlString, pars);
    }
    public static void S(string SqlString, params object[] pars)
    {
         ICompo.Data.DataAccess.ExecuteSql(SqlString, pars);
        
    }
}
