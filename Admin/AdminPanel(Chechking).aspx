<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel(Chechking).aspx.cs" Inherits="Admin_AdminPanel1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                  <strong>
                  <asp:Label ID="lbAdmin" runat="server" Text="UserName" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtaAdmin" CssClass="css" runat="server"></asp:TextBox><br />
            </div>
        </div>
     </div>
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong><asp:Label ID="lbAdminpass" runat="server" Text="Password" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtAdminPass" CssClass="css" TextMode="Password" runat="server"></asp:TextBox><br /></div>
        </div>
     </div>
        <br />
     <strong>
    <asp:Label ID="lbinvalidLogin" runat="server"  Text="Ivalid Login" CssClass="auto-style1" Visible="False"></asp:Label>
            </strong>
            <asp:Button ID="btnAdminLogin"  style=" border-radius:10px; height:30px; width:10%;margin-left:520px;" runat="server" Text="Login" CssClass="auto-style1" OnClick="btnAdminLogin_Click"  />


    </div>
    </form>
</body>
</html>
