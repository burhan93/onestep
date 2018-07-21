 <%@ Page Title="" Language="C#" MasterPageFile="~/Shopkeeper/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Shopkeeper_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Admin/Admin_Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
   <%-- 
    <div class="container">
    
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                UserName :
            </div>
            <div class="col-md-4">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                Password : 
            </div>
            <div class="col-md-4">
                    <asp:TextBox ID="txtpsswrd" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>--%>

   <div id="main">
      
		<div class="login"> 
            
            <h3>Seller Center</h3>
            <asp:TextBox ID="txtUsername" type="text" placeholder="username" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtpsswrd" placeholder="password" TextMode="Password" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnlogin_Click"  />
				<%--<input type="text" ID="txtaAdmin" placeholder="username" runat="server" name="user"><br>
				<input type="password" ID="txtAdminPass" placeholder="password" runat="server" name="password">--%><br>
				<%--<input type="button" value="Login">--%>
		</div>
       <div class="focus">
            <div><span>One</span>Step!</div>
        </div>
      

<%--    <asp:Button ID="btnlogin" Text=" Login" runat="server" OnClick="btnlogin_Click" />--%>
    <asp:Label ID="lberror" runat="server"  Text="l"></asp:Label>
       </div>
</asp:Content>

