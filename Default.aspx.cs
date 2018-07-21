using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Get_Malls Gm = new Get_Malls();
        Gm.Malls();
        DataTable tr = Gm.Malls();
        string a = dvmain.InnerText;
        StringBuilder sb = new StringBuilder();
        sb.Append("<div class='container'>");
        sb.Append(" <div class='row'>");
        for (int i = 0; i <= tr.Rows.Count - 1; i++)
        {
            sb.Append("<div class='col-sm-3 grow' > ");
            sb.Append("<div class='panel panel-primary'>");
            sb.Append("<div class='panel-heading'>" + tr.Rows[i]["Name"].ToString() + "</div>");
            sb.Append("<div class='panel-body'><img src=" + "Admin/Mall_Images/" + tr.Rows[i]["Image"].ToString() +
                " class='img-responsive' style='width:100%;height:190px' alt=''>");
            sb.Append("</div> <div class='panel-footer'>" + tr.Rows[i]["Address"].ToString() + "</div>");
            sb.Append("<div class='panel-footer'><a class='btn btn-success' href=/Malls_Shops.aspx?MallId=" + Convert.ToInt32(tr.Rows[i]["Id"])+"> View Shops"+"</a></div>");
            //sb.Append("<div class='panel-footer'><a href=/TestPage.aspx?UserId='" + tr.Rows[i]["Id"] + "'> SHOPS" + "</a></div>");

            sb.Append("</div>");
            sb.Append("</div>");
            // <a href="/shops?id=
        }
        sb.Append("</div>");
        sb.Append("</div>");
            dvmain.InnerHtml = sb.ToString();
        //Get_Malls Gm = new Get_Malls();
        //string a = dvmain.InnerText;
        //StringBuilder sb = new StringBuilder();
        //sb.Append("<div class='container'> ");
        //sb.Append(" <div class='row'>");
        //sb.Append("<div class='col-sm-4'> ");
        //sb.Append("<div class='panel panel-primary'>");
        //sb.Append("<div class='panel-heading'>'" + Gm.Name + "'</div>");
        //sb.Append("<div class='panel-body'><img src='Malls/karachi-hyderi-market-online-670.jpg' class='img-responsive' style='width:100%' alt=''>");
        //sb.Append("</div> <div class='panel-footer'>" + txtaddress.Text + "</div>");
        //sb.Append("</div>");
        //sb.Append("</div>");
        //sb.Append("</div>");
        //dvmain.InnerHtml = sb.ToString();
    }
}