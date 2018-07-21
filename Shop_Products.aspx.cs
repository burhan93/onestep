using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtid.Text = Request.QueryString["Id"].ToString();
        Customers cs = new Customers();
        int ? val;
        val = Convert.ToInt32(txtid.Text);
        

        cs.Id = Convert.ToInt32(val);
        cs.Getting_Shp_Product();
        DataTable tr = cs.Getting_Shp_Product(); 
        string a = dv_forshp_Product.InnerText;
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
            sb.Append("</div> <div class='panel-footer'>" + tr.Rows[i]["Price"].ToString()+"</div>");
            sb.Append("<div class='panel-footer'><a class='btn btn-success' >View Item</a>");
            sb.Append("<a class='btn btn-success' Id='btnAddcart' style='margin:5px;' href='/Mycart.aspx?Id=" + tr.Rows[i]["Id"] + "' >Add To Cart</a></div>");
            sb.Append("</div>");
            sb.Append("</div>");
        }
        sb.Append("</div>");
        sb.Append("</div>");
        dv_forshp_Product.InnerHtml = sb.ToString();
    }
}