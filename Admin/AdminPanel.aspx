<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage(Loign).master" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="Admin_AdminPanel1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="SignUp.css" rel="stylesheet" />
    <link href="Admin_Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%--  <div class="container">
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
            <asp:Button ID="btnAdminLogin"  style=" border-radius:10px; height:30px; width:10%;margin-left:520px;" runat="server" Text="Login" CssClass="auto-style1" OnClick="btnAdminLogin_Click"  />--%>
    
   <div id="main">
       
		
		<%--<div class="login">
            <h3>Admin Login</h3>
            <asp:TextBox ID="txtaAdmin" type="text" placeholder="username" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtAdminPass" placeholder="password" TextMode="Password" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnAdminLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnAdminLogin_Click"  />
				<%--<input type="text" ID="txtaAdmin" placeholder="username" runat="server" name="user"><br>
				<input type="password" ID="txtAdminPass" placeholder="password" runat="server" name="password"><br>
				<%--<input type="button" value="Login">
		</div>
       <div class="focus">
                    <div><span>One</span>Step!</div>
             </div>--%>
          <div class="container">
        <h1 style="text-shadow: 4px 1px white;font-size:40px;color:black">Admin Panel</h1>
        <div class="col-lg-12 ">
            <div class="row">
                <form>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8" style="box-shadow:5px 10px 18px;padding:10px;">
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label style="text-shadow: 4px 1px white;font-size:20px;color:black">User Name</label>
                                <input type="text" runat="server" placeholder="Name Here.." class="form-control" id="txtaAdmin" required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label style="text-shadow:2px 1px white;font-size:20px;color:black">Password</label>
                                <input type="password"  runat="server" placeholder="Password Here.." class="form-control" id="txtAdminPass" required="required" />
                            </div>
                        </div>
                        <asp:Button runat="server" ID="btnAdminLogin" Text="Login" CssClass="btn btn-lg btn-info" OnClick="btnAdminLogin_Click" />
                                                        <asp:Label ID="lbinvalidLogin" runat="server"  Text="Invalid Login" style="text-shadow:3px 1px black  ;font-size:20px;color:red;" Visible="False"></asp:Label>

                    </div>
                    <div class="col-sm-2">

                    </div>
                </form>
            </div>
        </div>
        <div class="row" style="height: 390px;"></div>
    </div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    
            </div>
           
                 
</asp:Content>

