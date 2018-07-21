<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Mycart.aspx.cs" Inherits="Mycart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <br /><br />
   
    <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-9"> 
                <div  id="dvEmptyCart" runat="server" visible="false">
                    <img src="https://www.protectabed.com/wp/wp-content/uploads/2017/07/empty-cart-icon-1.jpg" />
                </div>
            
            </div>
            <div class="col-md-2"></div>
        </div>
        
        <asp:GridView ID="gvMyCart" CssClass="mydatagrid" Width="100%" runat="server" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True"
            AutoGenerateColumns="false" GridLines="None" PageSize="5">

            <Columns>
                <%--<asp:ImageField DataImageUrlField="M_Image" HeaderText="Item Image" ItemStyle-Width="30" ItemStyle-Height="20" ControlStyle-CssClass="imgStyle1" />--%>
                <asp:BoundField DataField="Name" HeaderText="Item Name" ItemStyle-Width="15%" />
                <asp:BoundField DataField="Price" HeaderText="Price" ItemStyle-Width="15%" />
                <asp:BoundField DataField="ImageURL" HeaderText="Image" ItemStyle-Width="15%" />
                <asp:TemplateField>

                    <%--<ItemTemplate>
                        <asp:Button ID="btnRemoveFromCart" runat="server" Text="Remove from Cart"
                            CssClass="btn btn-default btn-md"
                            CausesValidation="false" />
                    </ItemTemplate>--%>
                    <ItemStyle Width="20%" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnRemoveFromCart" runat="server" Text="Remove from Cart" CommandArgument='<%# Eval("ProductId") %>'
                            OnClick="btnRemoveFromCart_Click" CssClass="btn btn-default btn-md"
                            CausesValidation="false" />
                    </ItemTemplate>
                    <ItemStyle Width="20%" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>

