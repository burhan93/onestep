using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;

public partial class Admin_CreateMall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }
    }
    protected void btncreate_Mall_Click(object sender, EventArgs e)
    {
        For_Admin Cm = new For_Admin();
        Cm.Name = txtname.Text;
        Cm.Address = txtaddress.Text;
        Cm.Image = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/Mall_Images/") + Cm.Image);
        Cm.Created_By = Convert.ToInt32(Session["id"]);
        Cm.Opening_Mall();
        string message = "Created-Successfully";
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append("<script type = 'text/javascript'>");
        //sb.Append("window.onload=function(){");
        sb.Append("alert('");
        sb.Append(message);
        sb.Append("')};");
        sb.Append("</script>");
        Response.Redirect("CreateMall.aspx");
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
    }
}
//protected void btncreate_Mall_Click(object sender, EventArgs e)
//    {
//        Create_Mall Cm = new Create_Mall();
//        Cm.Name = txtname.Text;
//        Cm.Address = txtaddress.Text;
//        Cm.Image = Path.GetFileName(FileUpload1.PostedFile.FileName);
//        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/Mall_Images/")+Cm.Image);
//        Cm.Created_By = Convert.ToInt32( Session["id"]);   
//        Cm.Opening_Mall();
//        Response.Redirect("CreateMall.aspx");
        
          
//    }
//}