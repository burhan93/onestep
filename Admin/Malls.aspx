<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage(Admin).master" AutoEventWireup="true" CodeFile="Malls.aspx.cs" Inherits="Admin_Malls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
    <asp:Panel ID="p1" Visible="true" runat="server">
        <asp:TextBox ID="txtId" Visible="false" runat="server"> </asp:TextBox>
        <asp:TextBox ID="txtModi_By" Visible="false" runat="server"></asp:TextBox>
    <br />
   <div class="container">
        <div class="row">            
            <div class="col-md-2">Name:</div>
            <div class="col-md-2"> <asp:TextBox ID="txtname" CssClass="form-control" runat="server" Width="209px"></asp:TextBox></div>
           <div class="col-md-2"></div>
             <div class="col-md-2">Address:</div>
            <div class="col-md-2"> <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server" Width="209px"></asp:TextBox></div>
            </div>
       </div>
        <div class="clearfix"></div>
     <div class="container">
        <div class="row">
            <div class="col-md-2">Image:</div>
            <div class="col-md-2"> <asp:FileUpload ID="upload"  runat="server" /></div>
        <div class="col-md-2"></div>
            <div class="col-md-2">IsDeleted:</div>
                        <div class="col-md-2"> <asp:TextBox ID="txtstatus"  CssClass="form-control" runat="server" Width="209px"></asp:TextBox></div>
            </div>
         </div>
  <div class="clearfix"></div>
        <div class="container">
         <div class="row">
            <div class="col-md-2">CreatedOn:</div>
            <div class="col-md-2"> <asp:TextBox ID="txtCreatedOn" CssClass="form-control" runat="server" Width="209px">
                                   </asp:TextBox></div>
             <div class="col-md-2"></div>
            <div class="col-md-2">CreatedBy:</div>
            <div class="col-md-2"> <asp:TextBox ID="txtCreated_By" CssClass="form-control" runat="server" Width="209px">
                                   </asp:TextBox></div>
        </div>
      </div>
        <div class="clearfix"></div>
        <br />
        
        <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"> <asp:Button ID="btnEdit" OnClientClick="return confirm('Are you sure');" runat="server" 
                cssclass="btn btn-success btn-block" Text="Submit" OnClick="btnEdit_Click" /></div>
        </div>
      </div>
        </asp:Panel>
    <br />
    <div class="container">
        <div class="row">
             <div class="col-md-11">
                    <asp:GridView ID="GridView1" runat="server"  BackColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                        BorderColor="#999999" BorderStyle="Solid" AutoGenerateColumns="false" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                        GridLines="Vertical" Height="238px" Width="90%" PageSize="4" AllowPaging="true" OnRowCommand="GridView1_RowCommand" 
                        OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="ID"
                         OnPageIndexChanging="GridView1_PageIndexChanging"  CellSpacing="3">
            <Columns>
                <asp:BoundField datafield="ID" HeaderText="ID" InsertVisible="False"  ReadOnly="false" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" InsertVisible="true" ReadOnly="true" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" InsertVisible="true" ReadOnly="true" SortExpression="Address" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Preview Image" ControlStyle-CssClass="product-card__image" 
                    ControlStyle-width="30%" ></asp:ImageField>
                <asp:BoundField DataField="IsDeleted" HeaderText="IsDeleted" InsertVisible="true" ReadOnly="true" SortExpression="IsDeleted" />
                <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" SortExpression="CreatedOn" />
                <asp:BoundField DataField="Created_By" HeaderText="Created_By" SortExpression="Created_By" />
                <asp:BoundField DataField="Modified_By" HeaderText="Modified_By" SortExpression="Modified_By" />
                <asp:BoundField DataField="Modified_On" HeaderText="Modified_On" SortExpression="Modified_On" />
                <asp:BoundField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                <asp:CommandField ShowSelectButton="true" />
          <asp:TemplateField>
                <ItemTemplate>
<asp:LinkButton ID="btndelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete');" 
    CausesValidation="false" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' />                    
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
             </div>
             

        </div>
    </div>
 </div></div></div></div>
</asp:Content>

