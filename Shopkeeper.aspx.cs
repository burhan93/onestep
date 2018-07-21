using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net.Mail;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Shopkeeper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack) { 
            For_Shopkpr bndDll = new For_Shopkpr();
            //DataTable dt = bndDll.bindDropdown();
            ddlmall.DataSource = bndDll.bindDropdown();
            ddlmall.DataTextField = "Name";
            ddlmall.DataValueField = "Id";
            ddlmall.DataBind();
            ddlmall.Items.Insert(0, "-Please Select-");
        }
    }

    protected void btncreate_Click(object sender, EventArgs e)
    {

        For_Shopkpr shop_Op = new For_Shopkpr();
        shop_Op.Name = txtname.Text;
        shop_Op.UserName = txtusername.Text;
        shop_Op.Email = txtemail.Text;
        shop_Op.Password = txtpassword.Text;
        shop_Op.Address = txtaddress.Text;
        shop_Op.Image = DateTime.Now.ToString("ddMMyymmss") + Path.GetExtension(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/ShopImg/") + shop_Op.Image);
        shop_Op.Contact = txtcontact.Text;
        shop_Op.CNIC = txtcnic.Text;
        shop_Op.ShopName = txtshopname.Text;
        shop_Op.MallId = Convert.ToInt32(ddlmall.SelectedValue);
        shop_Op.CreateShop();


        try
        {
            MailMessage mm = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mm.From = new MailAddress("onestep.aspireco@gmail.com");
            mm.To.Add(txtemail.Text);
            mm.Subject = "Notification";
            mm.Body = "Dear Sir Please Complete your registration by clicking the Link http://localhost:49879/Customer.aspx";

            SmtpServer.Port = 587;
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.Credentials = new System.Net.NetworkCredential("onestep.aspireco@gmail.com", "aspiresrk+?1");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mm);
            lbl1.Text = "Mail Send";
            lbl1.Visible = false;

        }
        catch (Exception ex)
        {

            lbl1.Text = "Fail." + ex.Message;
        }

    }

  
}