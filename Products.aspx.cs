using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Get_Products Ps = new Get_Products();
        DataTable tr = Ps.Getting_Products();
        string a = dv_forProducts.InnerText;
        StringBuilder sb = new StringBuilder();
        sb.Append("<div class='container'>");
        sb.Append(" <div class='row'>");
        for (int i = 0; i <= tr.Rows.Count - 1; i++)
        {
            sb.Append("<div class='col-sm-3 grow' > ");
            sb.Append("<div class='panel panel-primary'>");
            sb.Append("<div class='panel-heading'>" + tr.Rows[i]["Name"].ToString() + "</div>");
            sb.Append("<div class='panel-body'><img src=" + "/Item_Images/" + tr.Rows[i]["M_Image"].ToString() +
                " class='img-responsive' style='width:100%;height:190px' alt=''>");
            sb.Append("</div> <div class='panel-footer'>" + tr.Rows[i]["Price"].ToString() + "</div>");
            sb.Append("<div class='panel-footer'><a class='btn btn-success' >View Item</a>");
            sb.Append("<a class='btn btn-success' Id='btnAddcart' style='margin:5px;' href='/Mycart.aspx?Id="+ tr.Rows[i]["Id"]+"' >Add To Cart</a></div>");
            sb.Append("</div>");
            sb.Append("</div>");

        }
        sb.Append("</div>");
        sb.Append("</div>");
        dv_forProducts.InnerHtml = sb.ToString();
    }


    }
