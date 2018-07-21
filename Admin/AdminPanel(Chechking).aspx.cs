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

        Ad.UserName = txtaAdmin.Text;
        Ad.Password = txtAdminPass.Text;
        if (Ad.LoginAdmin() == true)
        {
            Session["id"] = Ad.UserName;
            Response.Redirect("Default.aspx");
        }
        else
        lbinvalidLogin.Visible = true;
    }
    }
