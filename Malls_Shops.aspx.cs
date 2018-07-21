using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Malls_Shops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //int id = int.Parse(Request.QueryString["MallId"]);
        txtid.Text = Request.QueryString["MallId"].ToString();
        Customers Cs = new Customers();
        // lblMessage.Text =  Request.QueryString["MallId"].ToString();
        int ? val;
        val = Convert.ToInt32(txtid.Text);
        //int.TryParse(Request.QueryString["MallId"].ToString(), out val);
        //int.TryParse(txtid.Text, out val);
        //int val = 0;
        //if (Request.QueryString["MallId"] != null)
        //{
        //    val = Convert.ToInt32(Request.QueryString["MallId"]);
        //}
        //string id=  Request.QueryString["MallId"].ToString();
        //txtid.Text = id;
        // int id = Convert.ToInt32(lblMessage.Text);
        //Cs.MallId =Convert.ToInt32(id);
        //Cs.MallId = Convert.ToInt32(txtid.Text);
        Cs.MallId = Convert.ToInt32(val);
        Cs.Getting_MallsShop();
        DataTable tr = Cs.Getting_MallsShop();
        string a = dvmain.InnerText;
        StringBuilder sb = new StringBuilder();
        sb.Append("<div class='container'>");
        sb.Append(" <div class='row'>");
        for (int i = 0; i <= tr.Rows.Count-1 ; i++)
        {       
            sb.Append("<div class='col-sm-3 grow' > ");
            sb.Append("<div class='panel panel-primary'>");
            sb.Append("<div class='panel-heading'>" + tr.Rows[i]["ShopName"].ToString() + "</div>");
            sb.Append("<div class='panel-body'><img src=" + "Admin/Shops_Images/" + tr.Rows[i]["Image"].ToString() +
                "  class='product-card__image' style='width:100%;height:190px' alt=''>");
            sb.Append("</div> <div class='panel-footer'>" + tr.Rows[i]["Address"].ToString() + "</div>");
            //sb.Append("<div class='panel-footer'><a class='btn btn-success' ) > ViewItems" + "</a></div>");
            sb.Append("<div class='panel-footer'><a class='btn btn-success' href=/Shop_Products.aspx?Id=" + Convert.ToInt32(tr.Rows[i]["Id"]) + "> View Items" + "</a></div>");
            //sb.Append("<div class='panel-footer'><a href=/TestPage.aspx?UserId='" + tr.Rows[i]["Id"] + "'> SHOPS" + "</a></div>");


            sb.Append("</div>");
            sb.Append("</div>"); 
        }
        sb.Append("</div>");
        sb.Append("</div>");
        dvmain.InnerHtml = sb.ToString();
        
    }
   
}