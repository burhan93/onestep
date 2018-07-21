using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Get_Shops Gs = new Get_Shops();
        Gs.Getting_Shop();
        DataTable tr = Gs.Getting_Shop();
        string a = dv_forShops.InnerText;
        StringBuilder sb = new StringBuilder();
        sb.Append("<div class='container'>");
        sb.Append(" <div class='row'>");
        for (int i = 0; i <= tr.Rows.Count - 1; i++)
        {
            sb.Append("<div class='col-sm-3 grow' > ");
            sb.Append("<div class='panel panel-primary'>");
            sb.Append("<div class='panel-heading'>" + tr.Rows[i]["ShopName"].ToString() + "</div>");
            sb.Append("<div class='panel-body'><img src=" + "Admin/Shops_Images/" + tr.Rows[i]["Image"].ToString() + 
                " class='img-responsive' style='width:100%;height:190px' alt=''>");
            sb.Append("</div> <div class='panel-footer'>" + tr.Rows[i]["Address"].ToString() + "</div>");
            sb.Append("<div class='panel-footer'><a class='btn btn-success' href=/Shop_Products.aspx?Id=" + Convert.ToInt32(tr.Rows[i]["Id"]) + ">  View Items</a></div>");
            sb.Append("</div>");
            sb.Append("</div>");

        }
        sb.Append("</div>");
        sb.Append("</div>");
        dv_forShops.InnerHtml = sb.ToString();
    }
}