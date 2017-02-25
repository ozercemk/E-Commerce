using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Script.Serialization;

using ozercemkJson;

public partial class AjaxDeneme2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Json();
    }

    [System.Web.Services.WebMethod]

    public static string GetCurrentTime(string FirstName, string LastName)
    {

        //JavaScriptSerializer serializer = new JavaScriptSerializer();
        //return serializer.Serialize(form).ToString();

        return "Hello " + FirstName + " " + LastName + Environment.NewLine + "The Current Time is: "
                    + DateTime.Now.ToString();
    }
   

 

    public static string  Json()
    {

        List<Person> people = new List<Person>
                   {
                   new Person{ FirstName = "Scott",LastName = "Gurthie"}
                  // new Person{ FirstName = "Bill", LastName = "Gates"}
                   };

        return people.ToJSON();
    }

     class Person
    {
             public string FirstName { get; set; }
        public string LastName { get; set; }
    } 

}