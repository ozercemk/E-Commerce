using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class E_Comemerce_Controls_CategoryDynamicPink : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Category_Commerce.Data_Preview("Moda", Data_Sublist);
        Category_Commerce.Data_Preview_without_Sub("Moda",6, 10, Data_Product, Data_Product_More);


    }
}