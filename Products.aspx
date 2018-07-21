<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        .grow { transition: all .2s ease-in-out; }
        .grow:hover { transform: scale(1.1); }
    </style>
    <div id="dv_forProducts" runat="server"></div>
</asp:Content>

