using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ShopDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }
        For_Admin Shop = new For_Admin();
        //Get_Malls Gm = new Get_Malls();
        GvShops.DataSource = Shop.Shops();
        GvShops.DataBind();
        DataTable dt = Shop.bindDropdown();
        ddlmalls.DataSource = dt;
        if (!IsPostBack)
        {
            ddlmalls.SelectedIndex = -1;
            ddlmalls.DataTextField = "Name";
            ddlmalls.DataValueField = "Id";
            ddlmalls.DataBind();
            ddlmalls.Items.Insert(0, "-Please Select-");
        }
    }

    protected void GvShops_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    protected void GvShops_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void GvShops_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvShops.PageIndex = e.NewPageIndex;
        GvShops.DataBind();
    }

    protected void GvShops_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
        }
        }

    protected void GvShops_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.GvShops.DataBind();
        ViewState["Edit"] = GvShops.SelectedValue.ToString();
        txtshopname.Text = GvShops.SelectedRow.Cells[3].Text;
        txtaddress.Text = GvShops.SelectedRow.Cells[5].Text;
        txtemail.Text = GvShops.SelectedRow.Cells[4].Text;
        txtadmin_id.Text = GvShops.SelectedRow.Cells[0].Text;
       // FileUpload_shop = Convert.ToDouble( GvShops.SelectedRow.Cells[6].Text);
        txtStatus.Text = GvShops.SelectedRow.Cells[7].Text;
        //ddlmalls.Text =  GvShops.SelectedRow.Cells[2].Text;
       // txtIsactive.Text = GvShops.SelectedRow.Cells[12].Text;
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
       
    }

    protected void btnEdit_Click1(object sender, EventArgs e)
    {
        For_Admin Alt_Shps = new For_Admin();
        Alt_Shps.Id = Convert.ToInt32(txtadmin_id.Text);
        Alt_Shps.MallId = Convert.ToInt32(ddlmalls.Text);
        Alt_Shps.ShopName = txtshopname.Text;
        //Alt_Shps.Email = txtemail.Text;
        Alt_Shps.IsDeleted = txtStatus.Text;
        Alt_Shps.Modified_By = Convert.ToInt32(txtadmin_id.Text);
       // Alt_Shps.Address = txtaddress.Text;
        Alt_Shps.IsActive = txtIsactive.Text;
        Alt_Shps.Editt_Shops();
    }
}