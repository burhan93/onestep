<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage(Admin).master" AutoEventWireup="true" CodeFile="ManageCategory.aspx.cs" Inherits="Admin_ManageCategory" %>

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
            <div class="col-md-2"></div>
                <div class="col-md-4" >
                    <asp:Button ID="btnCategory" runat="server" Text="Add Category" OnClick="btnCategory_Click" />  <asp:Button ID="btnsub_Cate" runat="server" Text="Add Sub-Category" OnClick="btnsub_Cate_Click" />
                  </div>
        </div></div>
    <asp:Panel ID="CategoryPanel" Visible="false" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
                <div class="col-md-4" >
                    <asp:RadioButtonList ID="catType" runat="server">
                        <asp:ListItem Value="Men">Men</asp:ListItem>
                         <asp:ListItem Value="Women">Women</asp:ListItem>
                        <asp:ListItem Value="Child">Child</asp:ListItem>
                    </asp:RadioButtonList></div>
        </div></div>
    <asp:Label ID="lbmsg" runat="server"  Text="Please Enter Cateogry" Visible="False"></asp:Label>
            
    
    
     <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong><asp:Label ID="lbadminId" runat="server" Text="admin" CssClass="auto-style1" Visible="False"></asp:Label></strong></div>
                <div class="col-md-4" >
                    <asp:TextBox ID="txtadminID" ReadOnly="true" runat="server" CssClass="form-control" Visible="False"></asp:TextBox></div>
        </div></div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
                <div class="col-md-4" >
    <asp:Button ID="btnaddCategory" runat="server" float="right" Text="Add" OnClick="btnaddCategory_Click" />
</div>        </div></div>
    <br />  
    <asp:GridView ID="grid_Category" runat="server" BackColor="White" AllowPaging="true" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="759px" OnPageIndexChanging="grid_Category_PageIndexChanging" PageSize="4">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
     </asp:GridView>
        </asp:Panel>


    <asp:Panel ID="Sub_categoryPanel" Visible="false" runat="server">
         <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
                <div class="col-md-4" >
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                  </div>
        </div></div>
         <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><asp:Label ID="lbcategory" runat="server" Text="Category"></asp:Label></div>
                <div class="col-md-4" >
                    <asp:TextBox ID="txtadsubCate"  CssClass="form-control" runat="server" ></asp:TextBox>
                  </div>
        </div></div>
         <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong><asp:Label ID="lbaminID" runat="server" Text="admin" CssClass="auto-style1" Visible="False"></asp:Label></strong></div>
                <div class="col-md-4" >
                  </div>
        </div></div>
        <br />
        <asp:GridView ID="grid_SubCategory" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="771px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
         </asp:GridView>
                <asp:Button ID="btnAddCategroy"  runat="server" margin-left="20px" float="right" Text="Add Sub-Category"  OnClick="btnAddCategroy_Click" />

    </asp:Panel>
                        </div></div></div></div>
</asp:Content>

