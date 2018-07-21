using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public partial class creatingMall_checking_ : System.Web.UI.Page
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
        for (int i = 0; i <= tr.Rows.Count-1; i++)
        {
           
           
            sb.Append("<div class='col-sm-4' > ");
            sb.Append("<div class='panel panel-primary'>");
            sb.Append("<div class='panel-heading'>" + tr.Rows[i]["Name"].ToString() + "</div>");
            sb.Append("<div class='panel-body'><img src=" + "Admin/Mall_Images/" + tr.Rows[i]["Image"].ToString()+ " class='img-responsive' style='width:100%' alt=''>");
            sb.Append("</div> <div class='panel-footer'>" + tr.Rows[i]["Address"].ToString() + "</div>");           
            sb.Append("</div>"); 
            sb.Append("</div>");
                   
        }
         sb.Append("</div>");
         sb.Append("</div>"); 
        dvmain.InnerHtml = sb.ToString();
       
    }
}