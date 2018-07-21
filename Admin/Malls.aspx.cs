using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Malls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }
        For_Admin Mall = new For_Admin();
        //Get_Malls Gm = new Get_Malls();
        GridView1.DataSource = Mall.Malls();
        GridView1.DataBind();        
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    //ImageField fl = new ImageField();
        //    //fl = (ImageField)e.Row.FindControl("Flag");


        //    DataRowView dr = (DataRowView)e.Row.DataItem;
        //    for (int i = 0; i <= GridView1.Rows.Count; i++)
        //    {
        //        string a = e.Row.Cells[2].Text;
        //    }

       // }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            For_Admin Mall = new For_Admin();
            Mall.Delete_Op();
            GridView1.DataBind();
            //string connection = System.Configuration.ConfigurationManager.ConnectionStrings["Connect_DB"].ConnectionString;
            //using (var con = new SqlConnection(connection))
            //{
            //    con.Open();
            //    string query = " update [dbo].[Malls] set IsDeleted='True' where ID = '" + e.CommandArgument + "'";
            //    SqlCommand comm = new SqlCommand(query, con);
            //    comm.ExecuteNonQuery();
            //    GridView1.DataBind();
            //}
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.GridView1.DataBind();
        ViewState["Edit"] = GridView1.SelectedValue.ToString();
        txtId.Text = GridView1.SelectedRow.Cells[0].Text;
        txtname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtAddress.Text= GridView1.SelectedRow.Cells[2].Text;
        txtstatus.Text= GridView1.SelectedRow.Cells[4].Text;
        txtCreatedOn.Text= GridView1.SelectedRow.Cells[5].Text;
        txtCreated_By.Text= GridView1.SelectedRow.Cells[6].Text;
        txtModi_By.Text = GridView1.SelectedRow.Cells[7].Text;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        For_Admin Mall = new For_Admin();
        Mall.Id = Convert.ToInt32( txtId.Text);
        Mall.Name = txtname.Text;
        Mall.Address = txtAddress.Text;
        Mall.IsDeleted = txtstatus.Text;
        //Mall.Modified_On = ;
        //Mall.Image = Path.GetFileName(FileUpload1.PostedFile.FileName);
        //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/Mall_Images/") + Cm.Image);
        Mall.Created_By = Convert.ToInt32(Session["id"]);
        Mall.Modified_By= Convert.ToInt32(Session["id"]);
        Mall.EditMalls();
        txtstatus.Text = "";
        txtname.Text = "";
        txtCreated_By.Text = "";
        txtCreatedOn.Text = "";
        txtAddress.Text = "";
        GridView1.DataBind();
    }
}