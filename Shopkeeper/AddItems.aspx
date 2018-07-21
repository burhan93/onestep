<%@ Page Title="" Language="C#" MasterPageFile="~/Shopkeeper/MasterPage2(main).master" AutoEventWireup="true" CodeFile="AddItems.aspx.cs" Inherits="Shopkeeper_AddItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
     <div class="container">
        <div class="row">
            <div class="col-md-2">                                   
            <asp:Label ID="lbShopId" runat="server" CssClass="auto-style1"  Text="Shop Name"> </asp:Label>
            </div>  
                <div class="col-md-2" >
                   <asp:DropDownList ID="ddlShp_ID" cssclass="form-control" runat="server"></asp:DropDownList>  
                </div>
             <div class="col-md-2"></div>
            <div class="col-md-1">
                Color
            </div>
            <div class="col-md-2">
               <asp:TextBox ID="txtcolr" cssclass="form-control" runat="server"></asp:TextBox>  
            </div>
            </div>
         <br />
         <div class="row">
             
             <div class="col-md-2">
              Type </div>
             <div class="col-md-2">
                  <asp:RadioButton ID="RadioButton1" Text="Formal" runat="server" />
              <asp:RadioButton ID="RadioButton2" Text="Casual" runat="server" />
                      </div>
              <div class="col-md-2"></div>
            <div class="col-md-1">
                Size 
            </div>
            <div class="col-md-2">
        <asp:DropDownList ID="ddlSize" cssclass="form-control" runat="server">
            <asp:ListItem>-Select-</asp:ListItem>
            <asp:ListItem>Small</asp:ListItem>
            <asp:ListItem>Medium</asp:ListItem>
            <asp:ListItem>Large</asp:ListItem>
            <asp:ListItem>X-Large</asp:ListItem>
        </asp:DropDownList>   
                </div>
         </div>
        
          <br />
        <div class="row">
            <div class="col-md-2">      
<asp:Label ID="lbName" runat="server" CssClass="auto-style1"  Text="Item Name"></asp:Label> 
            </div>  
                <div class="col-md-2" >
                     <asp:TextBox ID="txtName" cssclass="form-control" runat="server"></asp:TextBox>            
                </div> 
            <div class="col-md-2"></div>
            <div class="col-md-1">
                Sub-Category
              </div>                
                <div class="col-md-2" >   
        <asp:DropDownList ID="ddlsbucat" cssclass="form-control" runat="server"></asp:DropDownList>   
       </div>         
            </div>
            <br />
            <div class="row">
              <div class="col-md-2">
                <asp:Label ID="lbCat_id" runat="server" CssClass="auto-style1"  Text="Category"></asp:Label> 
              </div>                
                <div class="col-md-2" >   
        <asp:DropDownList ID="ddl_Cat_id" cssclass="form-control" runat="server"></asp:DropDownList>   
       </div> 
                <div class="col-md-2"></div>
                <div class="col-md-5">
                    Main Image
                <asp:FileUpload ID="M_img" runat="server" /> 
                    </div>
                </div>
         <div class="row">
             <div class="col-md-6">
         </div>
                <div class="col-md-2">
                    Second Image
                  <asp:FileUpload ID="S_img" runat="server" />    
                    </div>        
            </div>
         <br />
         <div class="row">
              <div class="col-md-3">  
              </div>                
                <div class="col-md-4" >
                    <asp:Button ID="btnadd" CssClass="btn btn-success btn-block1 btn-block"  runat="server" Text="Add Item" OnClick="btnadd_Click" />
       </div>                
            </div>
         <div class="row">         
             <br />
             <div class="col-md-1"></div>
             <div class="col-md-11">
                 <asp:GridView ID="gridItems" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
             </div>
             <asp:TextBox ID="txtLoginId" Visible="false" runat="server"></asp:TextBox>
                          </div>
         </div>
                        </div></div></div></div>
</asp:Content>

