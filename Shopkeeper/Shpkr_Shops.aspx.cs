    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shopkeeper_Shpkr_Shops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("Login.aspx");
        }
      
            For_Shopkpr shpkr = new For_Shopkpr();
            shpkr.UserId = Convert.ToInt32(Session["id"]);
            grd_shpkrshop.DataSource = shpkr.Getting_Shops();
            grd_shpkrshop.DataBind();
    }


    protected void grd_shpkrshop_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grd_shpkrshop_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

    protected void grd_shpkrshop_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void grd_shpkrshop_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    protected void grd_shpkrshop_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
}