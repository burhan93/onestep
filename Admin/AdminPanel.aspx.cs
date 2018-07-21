using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminPanel1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnAdminLogin_Click(object sender, EventArgs e)
    {
        For_Admin Ad = new For_Admin();

        Ad.UserName = txtaAdmin.Value;
        Ad.Password = txtAdminPass.Value;
        if (Ad.LoginAdmin() == true)
        {
            Session["id"] = Convert.ToInt32(Ad.id);
            Session["Name"] = Ad.UserName;            
            Response.Redirect("AdminHome.aspx");
        }
        else
            lbinvalidLogin.Visible = true;
    }
}