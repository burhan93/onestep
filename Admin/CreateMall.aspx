<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage(Admin).master" AutoEventWireup="true" CodeFile="CreateMall.aspx.cs" Inherits="Admin_CreateMall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong><asp:Label ID="lbName" runat="server" Text="Name" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtname" CssClass="form-control"  runat="server" required="required"></asp:TextBox><br /></div>
        </div>     
        <div class="row">     
            <div class="col-md-2"></div>      
            <div class="col-md-2"><strong><asp:Label ID="lbAddress" runat="server" Text="Address" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
    <asp:TextBox ID="txtaddress" CssClass="form-control"  runat="server" TextMode="MultiLine" required="required" placeholder="Address"></asp:TextBox><br /></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong><asp:Label ID="lbpic" runat="server" Text="Picture" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
     <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/><br /></div>
        </div>
     
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong><asp:Label ID="lbadmin" runat="server" Text="Admin" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-4" >
     <%--<asp:DropDownList ID="ddlAdmin_id" runat="server"></asp:DropDownList>--%>
                    <asp:TextBox ID="txtAdmin_id"  ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox><br /></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
                <div class="col-md-4" >
                        <asp:Button ID="btncreate_Mall" runat="server" Text="Create Mall" CssClass="btn btn-success btn-block1,form-control" OnClick="btncreate_Mall_Click" />
      </div>
     </div>         
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
                <div class="col-md-4" >
    <asp:Label ID="lberror" runat="server" Text="Error" Visible="false" CssClass="auto-style1"></asp:Label>
        </div>
     </div>
              </div>  
                        </div></div></div></div>  
</asp:Content>

