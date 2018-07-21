<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Shop_Products.aspx.cs" Inherits="Shop_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        .grow { transition: all .2s ease-in-out; }
        .grow:hover { transform: scale(1.1); }
    </style>
    <div id="dv_forshp_Product" runat="server"></div>
        <asp:TextBox ID="txtid" runat="server" Visible="false" ></asp:TextBox>

</asp:Content>

