<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
   .css {
    border-radius:10px;
    height:30px;
       width:50%;

   }
        .auto-style1 {
           background-color: #FFFF99;
       }
         .auto-style3 {
             font-size: small;
             background-color: #FFFFFF;
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <asp:Panel ID="Panel1" runat="server">
        <div style="height:300px;">
     <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                 <strong>
                 <asp:Label ID="lbname" runat="server" Text="Name" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtname" CssClass="css" runat="server"></asp:TextBox><br />
            </div>
           
        </div>
       
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                  <strong>
                  <asp:Label ID="lbusername" runat="server" Text="UserName" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtusername" CssClass="css" runat="server"></asp:TextBox><br />
            </div>
        </div>
    
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong><asp:Label ID="lbpassword" runat="server" Text="Password" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtpassword" CssClass="css" TextMode="Password" runat="server"></asp:TextBox><br /></div>
        </div>
    
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                  <strong>
                  <asp:Label ID="lbAddress" runat="server" Text="Address" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtaddress" CssClass="css" runat="server"></asp:TextBox><br />
            </div>
        </div>
     
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                 <strong>
                 <asp:Label ID="lbcontact" runat="server" Text="Contact-No" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtcontact" CssClass="css" runat="server"></asp:TextBox><br />
            </div>
        </div>
        
         <div class="row">
             <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
              <asp:Label ID="lbcnic" runat="server" Text="CNIC " CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtcnic" CssClass="css" runat="server"></asp:TextBox><br /><br />
          
             
              <strong>
                 <asp:Label ID="lbAlreadyaccount" runat="server" CssClass="auto-style3" Text="*">
                     <asp:Label ID="lbAlready" runat="server" CssClass="auto-style3" Text="Already have Account Click On Login Button "></asp:Label></asp:Label>
                 </strong>
               </div>
        </div> </div><br />
              <asp:Button ID="btnaccount"  style=" border-radius:10px; height:30px; width:10%;margin-left:450px;" runat="server" Text="Create Account" CssClass="auto-style1" />
                                     <asp:Button ID="btnshowP2"  style=" border-radius:10px; height:30px; width:10%;" runat="server" Text="Login" CssClass="auto-style1" OnClick="btnLogin_Click" />
      </div>
    </asp:Panel>

    <%--<==================>--%>

         
    <asp:Panel ID="Panel2" visible="false" style="margin-top:70px;" runat="server">
         <div style="height:230px;">
        <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                  <strong>
                  <asp:Label ID="Label1" runat="server" Text="UserName" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="TextBox1" CssClass="css" runat="server"></asp:TextBox><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong><asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="TextBox2" CssClass="css" TextMode="Password" runat="server"></asp:TextBox><br /></div>
        </div>
        <br />
            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-7">
            <asp:Button ID="btnLogin"  style=" border-radius:10px; height:30px; width:10%;" runat="server" Text="Login" CssClass="auto-style1"  />
            </div></div></div>
            </div>
    </asp:Panel>
       
</asp:Content>


