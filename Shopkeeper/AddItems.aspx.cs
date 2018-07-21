using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shopkeeper_AddItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else { 
        txtLoginId.Text=Session["id"].ToString();
        For_Shopkpr cat = new For_Shopkpr();
        if (!IsPostBack)
        {
            ddl_Cat_id.DataSource = cat.bindDDL(); ;
            ddl_Cat_id.DataTextField = "Name";
            ddl_Cat_id.DataValueField = "Id";
            ddl_Cat_id.DataBind();
            ddl_Cat_id.Items.Insert(0, "-Select-");
            cat.UserId = Convert.ToInt32(txtLoginId.Text);
            ddlShp_ID.DataSource = cat.bindShpId(); 
            ddlShp_ID.DataTextField = "ShopName";
            ddlShp_ID.DataValueField = "Id";
            ddlShp_ID.DataBind();
            ddlShp_ID.Items.Insert(0, "-Select-");
                ddlsbucat.DataSource = cat.binddl_Sub_cat();
                ddlsbucat.DataTextField = "Name";
                ddlsbucat.DataValueField = "Id";
                ddlsbucat.DataBind();
                ddlsbucat.Items.Insert(0, "-Select-");

            }
        gridItems.DataSource = cat.bindGrid_items();
        gridItems.DataBind();
       //if (ddl_Cat_id.SelectedValue != "-Select-")
       //     {
       //         ddlsbucat.DataSource = cat.binddl_Sub_cat();
       //         ddlsbucat.DataTextField = "Name";
       //         ddlsbucat.DataValueField = "Id";
       //         cat.Category_Id = Convert.ToInt32(ddl_Cat_id.SelectedValue.ToString());
       //         ddlsbucat.DataBind();
       //         ddlsbucat.Items.Insert(0, "-Select-");
       //     }
        }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        For_Shopkpr AdItem = new For_Shopkpr();
        AdItem.ShopId= Convert.ToInt32(ddlShp_ID.SelectedValue);
        AdItem.sub_catId = Convert.ToInt32(ddlsbucat.SelectedValue);
        AdItem.Name = txtName.Text;
        AdItem.Created_By = Convert.ToInt32(txtLoginId.Text);
        AdItem.M_Image = DateTime.Now.ToString("ddMMyymmss") + Path.GetExtension(M_img.PostedFile.FileName);
        M_img.PostedFile.SaveAs(Server.MapPath("~/Item_Images/") + AdItem.M_Image);
        AdItem.S_Image = DateTime.Now.ToString("ddMMyymmss") + Path.GetExtension(S_img.PostedFile.FileName);
        S_img.PostedFile.SaveAs(Server.MapPath("~/Item_Images/") + AdItem.S_Image);

        //HttpFileCollection uploadFilCol = Request.Files;
        //for (int i = 0; i < uploadFilCol.Count; i++)
        //{
        //    HttpPostedFile file = uploadFilCol[i];
        //    string fileExt = Path.GetExtension(FileUpload1.FileName).ToLower();
        //    string fileName = Path.GetFileName(FileUpload1.FileName);
        //    if (fileName != string.Empty)
        //    {
        //        try
        //        {
        //            if (fileExt == ".jpg" || fileExt == ".gif" || fileExt == ".bmp" || fileExt == ".jpeg" || fileExt == ".png")
        //            {
        //                file.SaveAs(Server.MapPath("~/Item_Images/") + fileName);
        //                if (i == 0)
        //                {
        //                    Image.ImageUrl = "~/Images/" + fileName;
        //                }
        //                if (i == 1)
        //                {
        //                    Image2.ImageUrl = "~/Images/" + fileName;
        //                }

        AdItem.Add_Items();
       
    }
}
