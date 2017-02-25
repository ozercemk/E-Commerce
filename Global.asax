<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="E_Commerce" %>
<%@ Import Namespace="System.Web.Optimization" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        RegisterRoutes(RouteTable.Routes);

    }
    public static void RegisterRoutes(RouteCollection Routes)
    {
        Routes.MapPageRoute("Product", "{Category}-{Title}-{Product_ID}", "~/ETicaret_DetailsAjaxDeneme.aspx");
        Routes.MapPageRoute("Product_Sub", "{Brand}-{Product_Type}", "~/ETicaret.aspx");
        Routes.MapPageRoute("Category", "{Category}", "~/ETicaret.aspx");
     
        Routes.Ignore("{*allaspx}", new { allaspx = @".*\.aspx(/.*)?" });

    }
    void Application_End(object sender, EventArgs e) 
    {
        SessionAccess.CRM_User_Email = string.Empty;
        SessionAccess.CRM_User_image = string.Empty;
        SessionAccess.CRM_User_Name = string.Empty;
        SessionAccess.CRM_User_Favori = string.Empty;
        SessionAccess.CRM_User_Abone = string.Empty;
        SessionAccess.CRM_User_ID = 0;

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        SessionAccess.CRM_User_Email = string.Empty;
        SessionAccess.CRM_User_image = string.Empty;
        SessionAccess.CRM_User_Name = string.Empty;
        SessionAccess.CRM_User_Favori = string.Empty;
        SessionAccess.CRM_User_Abone = string.Empty;
        SessionAccess.CRM_User_ID = 0;
    }
       
</script>
