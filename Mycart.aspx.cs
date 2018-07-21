using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mycart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"] == null || Request.QueryString["Id"] == "")
        {
            GetMyCart();
        }
        else
        {
            AddToCart();
            GetMyCart();
        }
        
        
        
    }
 
    protected void AddToCart()
    {
        string ItemId = Request.QueryString["Id"];
        string ProductQuantity = "1";

        if (Session["MyCart"] != null)
        {
            var dt = (DataTable)Session["MyCart"];
            var checkProduct = dt.AsEnumerable().Where(r => r.Field<string>("ProductId") == ItemId);
            if (checkProduct.Count() == 0)
            {
                string querry = "SELECT Items.Id as ItemId,Items.Name,Items.Price,Images.M_Image as ImageURL from Items left join Images on Items.Id = Images.ItemId where Items.Id ='" + ItemId +"'";
                DataTable dtProducts = GetData(querry);

                var dr = dt.NewRow();
                dr["ProductId"] = ItemId;
                dr["Name"] = Convert.ToString(dtProducts.Rows[0]["Name"]);
                //dr["Description"] = Convert.ToString(dtProducts.Rows[0]["Description"]);
                dr["price"] = Convert.ToString(dtProducts.Rows[0]["price"]);
                dr["ImageURL"] = Convert.ToString(dtProducts.Rows[0]["ImageURL"]);
                //dr["ProductQuantity"] = ProductQuantity;

                dt.Rows.Add(dr);
                Session["MyCart"] = dt;
                
                //btnShoppingHeart.Text = "MYCART<span class='badge'>" + "" + dt.Rows.Count.ToString() + "</span>";

            }
        }
        else
        {
            string querry = "SELECT Items.Id as ItemId,Items.Name,Items.Price,Images.M_Image as ImageURL from Items left join Images on Items.Id = Images.ItemId where Items.Id ='" + ItemId +"'";
            DataTable dtProducts = GetData(querry);

            var dt = new DataTable();

            dt.Columns.Add("ProductId", typeof(string));
            dt.Columns.Add("Name", typeof(string));
            //dt.Columns.Add("Description", typeof(string));
            dt.Columns.Add("price", typeof(string));
            dt.Columns.Add("ImageURL", typeof(string));
            //dt.Columns.Add("ProductQuantity", typeof(string));
            //dt.Columns.Add("AvailaibleStock", typeof(string));
            //dt.Columns.Add("SuperStoreName", typeof(string));

            var dr = dt.NewRow();
            dr["ProductId"] = ItemId;
            dr["Name"] = Convert.ToString(dtProducts.Rows[0]["Name"]);
            //dr["Description"] = Convert.ToString(dtProducts.Rows[0]["Description"]);
            dr["price"] = Convert.ToString(dtProducts.Rows[0]["price"]);
            dr["ImageURL"] = Convert.ToString(dtProducts.Rows[0]["ImageURL"]);
            //dr["ProductQuantity"] = ProductQuantity;

            dt.Rows.Add(dr);

            Session["MyCart"] = dt;
            
        }
        //HighLightCartProducts();
    }

    public DataTable GetData(string querry)
    {
        var dt = new DataTable();
        string ConnString = WebConfigurationManager.ConnectionStrings["Connect_DB"].ConnectionString.ToString();
        var conn = new SqlConnection(ConnString);
        conn.Open();

        var da = new SqlDataAdapter(querry, conn);
        da.Fill(dt);

        conn.Close();
        return dt;
    }

    protected void btnRemoveFromCart_Click(object sender, EventArgs e)
    {
        //lblProducts.Text = string.Empty;
        string ProductId = Convert.ToInt16((((Button)sender).CommandArgument)).ToString();
        if (Session["MyCart"] != null)
        {
            DataTable dt = (DataTable)Session["MyCart"];
            DataRow drr = dt.Select("ProductId='" + ProductId + "'").FirstOrDefault();

            if (drr != null)

                dt.Rows.Remove(drr);
            Session["MyCart"] = dt;

        }
        GetMyCart();

    }

    private void GetMyCart()
    {

        DataTable dtProducts;
        if (Session["MyCart"] != null)
        {
            dtProducts = (DataTable)Session["MyCart"];
        }
        else
        {
            dtProducts = new DataTable();
        }
        if (dtProducts.Rows.Count > 0)
        {
            int a = dtProducts.Rows.Count;
            Label count = this.Master.FindControl("lblCount") as Label;
            count.Text = Convert.ToString("-"+a);
            dvEmptyCart.Visible = false;
            gvMyCart.DataSource = dtProducts;
            gvMyCart.DataBind();
            //Response.Redirect("~/Products.aspx");

        }
        else
        {

            gvMyCart.DataSource = null;
            gvMyCart.DataBind();
            dvEmptyCart.Visible = true;
            Session.Clear();
            Label count = this.Master.FindControl("lblCount") as Label;
            count.Text = "-0";
        }

        
    }
}