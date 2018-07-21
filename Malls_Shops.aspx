<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Malls_Shops.aspx.cs" Inherits="Malls_Shops" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        .grow { transition: all .2s ease-in-out; }
        .grow:hover { transform: scale(1.1); }
    </style>
    <div id="dvmain" runat="server"></div>
    <asp:Label  ID="lblMessage" runat="server"></asp:Label>
    <asp:TextBox ID="txtid" runat="server" Visible="false" ></asp:TextBox>
<%--    <asp:Label ID="lb1" runat="server" Visible="false" Text="Label"></asp:Label>--%>
</asp:Content>

