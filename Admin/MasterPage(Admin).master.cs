﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPage_Admin_ : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
      Session.RemoveAll();   
        Response.Redirect("AdminPanel.aspx");
        
    }
}
