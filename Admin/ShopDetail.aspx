<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage(Admin).master" AutoEventWireup="true" CodeFile="ShopDetail.aspx.cs" Inherits="Admin_ShopDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
    <div class="container">
        <div class="row">
            <div class="col-md-2"><strong><asp:Label ID="lbShopName" runat="server" Text="Shop Name" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
    <asp:TextBox ID="txtshopname"  CssClass="form-control"  runat="server" required="required"></asp:TextBox></div>
            <div class="col-md-2"><strong><asp:Label ID="lbEmail" runat="server" Text="Email" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >             
  <asp:TextBox ID="txtemail" type="email" placeholder="example@abc.com" CssClass="form-control" required="required"  runat="server"></asp:TextBox></div>
        </div>
     </div>   
    <div class="container">
        <div class="row">           
            <div class="col-md-2"><strong><asp:Label ID="lbMAll" runat="server" Text="Select Mall" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
                    <asp:DropDownList ID="ddlmalls" required="required" placeholder="PleaseSelect" CssClass="form-control" runat="server"></asp:DropDownList></div>
            <div class="col-md-2"><strong><asp:Label ID="lbaddress" runat="server" Text="Address" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
    <asp:TextBox ID="txtaddress" CssClass="form-control" required="required" runat="server"></asp:TextBox></div>
        </div></div>
              <div class="container">
        <div class="row">         
            <div class="col-md-2"><strong><asp:Label ID="lbImage" runat="server" Text="Image" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
                    <asp:FileUpload ID="FileUpload_shop" required="required" CssClass="form-control" runat="server" /><br /></div>
            <div class="col-md-2"><strong>
                <asp:Label ID="lbstatus" runat="server" Text="IsDeleted" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
    <asp:TextBox ID="txtStatus"  CssClass="form-control"  runat="server" ></asp:TextBox></div>
                
                </div>
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <strong><asp:Label ID="lbadmin_id" Visible="false" runat="server" Text="Admin Id" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
    <asp:TextBox ID="txtadmin_id" CssClass="form-control" ReadOnly="true" Visible="false" runat="server"></asp:TextBox></div>
        </div>
            <div class="col-md-2"><strong>
                <asp:Label ID="lbCreatedOn" Visible="false" runat="server" Text="CreaetedOn" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >             
  <asp:TextBox ID="txtCreatdOn"  CssClass="form-control" Visible="false" required="required"  runat="server"></asp:TextBox></div>
        </div>
     </div>  
    <div class="container">
        <div class="row">
            <div class="col-md-2"><strong><asp:Label ID="lbMoifdBy" Visible="false" runat="server" Text="ModifeidBy" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
    <asp:TextBox ID="txtmodBy"  CssClass="form-control"  runat="server" Visible="false" required="required"></asp:TextBox></div>
            <div class="col-md-2"><strong><asp:Label ID="lbmodifdOn" Visible="false" runat="server" Text="ModifiedOn" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >             
  <asp:TextBox ID="txtmodfOn"  CssClass="form-control" required="required" Visible="false"  runat="server"></asp:TextBox></div>
            <asp:TextBox ID="txtIsactive" Visible="false" runat="server"></asp:TextBox>
        </div>
     </div>   
    <br />
<div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <asp:Button ID="btnEdit" runat="server" OnClientClick="return confirm('Are you sure');" cssclass="btn btn-success btn-block" Text="Submitt" OnClick="btnEdit_Click1" />
           </div>
        </div>
      </div>    <br />
    <div class="container">
        <div class="row">           
             <div class="col-lg-12">
    <asp:GridView ID="GvShops" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" AllowPaging="True" OnSelectedIndexChanged="GvShops_SelectedIndexChanged" OnRowDataBound="GvShops_RowDataBound" OnRowDeleting="GvShops_RowDeleting" OnRowCommand="GvShops_RowCommand" OnPageIndexChanging="GvShops_PageIndexChanging" Height="16px" Width="981px" BackColor="White" BorderColor="#999999"
         BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" PageSize="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true" SortExpression="ID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="true" ReadOnly="true" SortExpression="UserId" />
            <asp:BoundField DataField="MallID" HeaderText="MallID" InsertVisible="true" ReadOnly="true" SortExpression="MallID" />
            <asp:BoundField DataField="ShopName" HeaderText="ShopName" InsertVisible="true" ReadOnly="true" SortExpression="ShopName" />
           <%-- <asp:BoundField DataField="Email" HeaderText="Email" InsertVisible="true" ReadOnly="true" SortExpression="Email" />
            <asp:BoundField DataField="Address" HeaderText="Address" InsertVisible="true" ReadOnly="true" SortExpression="Address" />--%>
            <asp:ImageField DataImageUrlField="Image" HeaderText="Preview Image"  >
<ControlStyle Width="48%" Height="12%"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="IsDeleted" HeaderText="IsDeleted" InsertVisible="true" ReadOnly="true" SortExpression="IsDeleted" />
            <asp:BoundField DataField="Created_On" HeaderText="Created_On" SortExpression="Created_On" />
            <asp:BoundField DataField="Created_By" HeaderText="Created_By" SortExpression="Created_By" />
            <asp:BoundField DataField="Modified_On" HeaderText="Modified_On" SortExpression="Modified_On" />
            <asp:BoundField DataField="Modified_By" HeaderText="Modified_By" SortExpression="Modified_By" />
            <asp:BoundField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
           <asp:CommandField ShowSelectButton="true" />
            <%-- <asp:TemplateField>
                <ItemTemplate>
<asp:LinkButton ID="btndelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete');" CausesValidation="false" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' />                    
               </ItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
                 </div>
                </div>
    </div>
                        </div></div></div></div>
</asp:Content>

