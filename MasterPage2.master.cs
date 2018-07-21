using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["id"] == null) {
        //    Response.Redirect("AdminPanel.aspx");
        //}
        //  Label1.Text = Session["id"].ToString();
        //Page.Master.FindControl("MainContent").FindControl("DivContainer_MyProfile").Visible = True

        //Label lblCount = this.ContentPlaceHolder1.FindControl("count");

        //Label  as lblCount = (Label)ContentPlaceHolder1.FindControl("lblCount");
        //if (lblCount == null)
        //{
        //    lblCount.Text = "0";
        //}
        if (lblCount.Text == "") { 
        lblCount.Text = "-0";
        }

        //if (lblCount.Text==" " )
        //{
        //    lblCount.Text = "0";
        //}
    }
}
