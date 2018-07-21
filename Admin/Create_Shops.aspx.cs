using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_Create_Shops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }
        else
        {
            txtadmin_id.Text = Session["id"].ToString();
            For_Admin Cs_Ad = new For_Admin();
            //Create_ShopsByAdmin Cs_Ad = new Create_ShopsByAdmin();
            DataTable dt = Cs_Ad.bindDropdown();
            ddlmalls.DataSource = dt;
            if (!IsPostBack)
            {
                ddlmalls.DataTextField = "Name";
                ddlmalls.DataValueField = "Id";
                ddlmalls.DataBind();
                ddlmalls.Items.Insert(0, "-Please Select-");
            }
        }
    }
    protected void btnCreateShop_Click(object sender, EventArgs e)
    {
        // Create_ShopsByAdmin Cs_Ad = new Create_ShopsByAdmin();
        For_Admin Cs_Ad = new For_Admin();
        Cs_Ad.Name = txtName.Text;
        Cs_Ad.UserName = txtUName.Text;
        Cs_Ad.Password = txtpsswrd.Text;
        Cs_Ad.Address = txtaddress.Text;
        Cs_Ad.Email = txtemail.Text;
        Cs_Ad.Contact = txtcontact.Text;
        Cs_Ad.MallId = Convert.ToInt32(ddlmalls.Text);
        Cs_Ad.ShopName = txtshopname.Text;          
        Cs_Ad.Image = Path.GetFileName(FileUpload_shop.PostedFile.FileName);
        FileUpload_shop.PostedFile.SaveAs(Server.MapPath("~/Admin/Shops_Images/") + Cs_Ad.Image);
        Cs_Ad.CNIC = txtcnic.Text;
        Cs_Ad.Created_By = Convert.ToInt32(txtadmin_id.Text);
        Cs_Ad.Creating_shops();
        Response.Redirect("Create_Shops.aspx");
    }
}