using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["id"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }
        else
        {
            For_Admin AdCat = new For_Admin();
            txtadminID.Text = Session["id"].ToString();
            if (!IsPostBack) { 
            ddlCategory.DataSource = AdCat.bindDDL();
            //ddlCategory.DataValueField = "Id";
            ddlCategory.DataTextField = "Name";
                ddlCategory.DataValueField = "Id";
            ddlCategory.DataBind();
                 ddlCategory.Items.Insert(0, "-Select-");
            }
            grid_SubCategory.DataSource = AdCat.Get_Subcategory();
            grid_SubCategory.DataBind();
            grid_Category.DataSource=AdCat.Get_category();
            grid_Category.DataBind();
        }
    }

    protected void btnaddCategory_Click(object sender, EventArgs e)
    {
        For_Admin AdCat = new For_Admin();
        AdCat.Name = catType.SelectedItem.Value.ToString();
        AdCat.Created_By = Convert.ToInt32(Session["id"]);
        AdCat.AddCategory();
        Response.Redirect("ManageCategory.aspx");        
    }
    protected void grid_Category_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grid_Category.PageIndex = e.NewPageIndex;
        grid_Category.DataBind();
    }

    protected void btnCategory_Click(object sender, EventArgs e)
    {
        Sub_categoryPanel.Visible = false;
        CategoryPanel.Visible = true;
    }

    protected void btnsub_Cate_Click(object sender, EventArgs e)
    {
        CategoryPanel.Visible = false;
        Sub_categoryPanel.Visible = true;
        grid_SubCategory.DataBind();
    }

    protected void btnAddCategroy_Click(object sender, EventArgs e)
    {
        For_Admin AdCat = new For_Admin();
        AdCat.Category_Id = Convert.ToInt32(ddlCategory.SelectedValue.ToString());
        AdCat.Name = txtadsubCate.Text;
        AdCat.Created_By = Convert.ToInt32(Session["id"]);
        AdCat.SubCategory();
    }
}