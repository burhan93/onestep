<%@ Page Title="" Language="C#" MasterPageFile="~/Shopkeeper/MasterPage2(main).master" AutoEventWireup="true" CodeFile="Shpkr_Shops.aspx.cs" Inherits="Shopkeeper_Shpkr_Shops" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    
    <asp:TextBox ID="txtid" runat="server" Visible="false" ReadOnly="true"></asp:TextBox>
                    <div class="col-md-11">
    <asp:GridView ID="grd_shpkrshop" runat="server" BackColor="White" OnSelectedIndexChanged="grd_shpkrshop_SelectedIndexChanged"
         BorderColor="#999999" BorderStyle="Solid" AutoGenerateColumns="false" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
          GridLines="Vertical" Height="238px" Width="90%" PageSize="4" AllowPaging="true" OnRowCommand="grd_shpkrshop_RowCommand" 
          OnRowDeleting="grd_shpkrshop_RowDeleting" OnRowDataBound="grd_shpkrshop_RowDataBound" DataKeyNames="ID"
                         OnPageIndexChanging="grd_shpkrshop_PageIndexChanging"  CellSpacing="3"> 
        <Columns>
             <asp:BoundField datafield="Id" HeaderText="Id" InsertVisible="False"  ReadOnly="false" SortExpression="ID" />
            <asp:BoundField datafield="UserId" HeaderText="UserId" InsertVisible="False"  ReadOnly="false" SortExpression="UserId" />
            <asp:BoundField datafield="MallId" HeaderText="MallId" InsertVisible="False"  ReadOnly="false" SortExpression="MallId" />
             <asp:BoundField datafield="ShopName" HeaderText="ShopName" InsertVisible="False"  ReadOnly="false" SortExpression="ShopName" />
            <asp:BoundField datafield="CNIC" HeaderText="CNIC" InsertVisible="False"  ReadOnly="false" SortExpression="CNIC" />
            <asp:ImageField DataImageUrlField="Image" HeaderText="Preview Image" ControlStyle-CssClass="product-card__image" 
                    ControlStyle-width="30%" ></asp:ImageField>
             <asp:BoundField DataField="IsDeleted" HeaderText="IsDeleted" InsertVisible="true" ReadOnly="true" SortExpression="IsDeleted" />
                <asp:BoundField DataField="Created_On" HeaderText="CreatedOn" SortExpression="CreatedOn" />
                <asp:BoundField DataField="Created_By" HeaderText="Created_By" SortExpression="Created_By" />
                <asp:BoundField DataField="Modified_By" HeaderText="Modified_By" SortExpression="Modified_By" />
                <asp:BoundField DataField="Modified_On" HeaderText="Modified_On" SortExpression="Modified_On" />
                <asp:BoundField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                <asp:CommandField ShowSelectButton="true" />
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btndelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete');" 
    CausesValidation="false" CommandName="Delete" CommandArgument='<%# Eval("Id") %>' />                    
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
                        </div></div></div></div>
</asp:Content>

