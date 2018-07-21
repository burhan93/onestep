using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shopkeeper_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        For_Shopkpr Login = new For_Shopkpr();
        Login.UserName = txtUsername.Text;
        Login.Password = txtpsswrd.Text;
        if (Login.Shp_kprLogin() == true)
        {
            Session["id"] = Convert.ToInt32(Login.id);
            Session["Name"] = Login.UserName;
            Response.Redirect("Home_shpkr.aspx");
            lberror.Text = "hello";
        }
        else
            lberror.Text = "wrong";
            //lberror.Visible = true;
    }
}
