using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shopkeeper_Create_Newshop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"]==null)
        {
            Response.Redirect("Login.aspx");
        }

        if (!IsPostBack)
        {
            For_Shopkpr bndDll = new For_Shopkpr();
            //DataTable dt = bndDll.bindDropdown();
            ddlmall.DataSource = bndDll.bindDropdown();
            ddlmall.DataTextField = "Name";
            ddlmall.DataValueField = "Id";
            ddlmall.DataBind();
            ddlmall.Items.Insert(0, "-Please Select-");
        }
    }

    protected void btnCreateShop_Click(object sender, EventArgs e)
    {
        For_Shopkpr Nshop = new For_Shopkpr();
        Nshop.UserId = Convert.ToInt32(Session["id"].ToString());
        Nshop.ShopName = txtshopname.Text;
        Nshop.MallId = Convert.ToInt32(ddlmall.SelectedValue);
        Nshop.CNIC =Convert.ToString(txtcnic.Text);
        Nshop.Image= DateTime.Now.ToString("ddMMyymmss") + Path.GetExtension(FileUpload_Nshop.PostedFile.FileName);
        FileUpload_Nshop.PostedFile.SaveAs(Server.MapPath("~/ShopImg/") + Nshop.Image);
        Nshop.CreateNewShop();
        Response.Redirect("Create_NewShops.aspx");
    }
}