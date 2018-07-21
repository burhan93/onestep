<%@ Page Title="" Language="C#" MasterPageFile="~/Shopkeeper/MasterPage2(main).master" AutoEventWireup="true" CodeFile="Create_Newshop.aspx.cs" Inherits="Shopkeeper_Create_Newshop" %>

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
                <strong>
                <asp:Label ID="lbShopName" runat="server" Text="Shop Name" CssClass="auto-style1"></asp:Label></strong>   
<%--   <strong>   <asp:Label ID="lbName" runat="server" Text="Name" CssClass="auto-style1"></asp:Label></strong>--%>
            </div>  

                <div class="col-md-3" >
<%--    <asp:TextBox ID="txtName" cssclass="form-control"  runat="server" required="required"></asp:TextBox><br />--%>
                <asp:TextBox ID="txtshopname" cssclass="form-control"  runat="server" required="required"></asp:TextBox><br />
                </div>
          
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbEmail" runat="server" Text="Email" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >   
  <asp:TextBox ID="txtemail" type="email" placeholder="example@abc.com" cssclass="form-control" 
      required="required"  runat="server"></asp:TextBox><br />
        </div>
            </div>

        <div class="row">
            <div class="col-md-2">    
                <strong>
                <asp:Label ID="lbMAll" runat="server" Text="Select Mall" CssClass="auto-style1"></asp:Label></strong>      
<%--         <strong>   <asp:Label ID="LbUserName" runat="server" Text="User Name" CssClass="auto-style1"></asp:Label></strong>--%>
            </div>
                <div class="col-md-3" >
                     <asp:DropDownList ID="ddlmall" CssClass="form-control" required="required" runat="server">
                    </asp:DropDownList><br />
<%--    <asp:TextBox ID="txtUName" cssclass="form-control"  runat="server" required="required"></asp:TextBox><br />--%>
                </div>
        
            <div class="col-md-2"><strong>
                <asp:Label ID="lbaddress" runat="server" Text="Address" CssClass="auto-style1"></asp:Label></strong>
            
<%--      <strong> <asp:Label ID="lbpsswrd" runat="server" Text="Password" CssClass="auto-style1"></asp:Label></strong>--%>
            </div>
                <div class="col-md-3" >
               <asp:TextBox ID="txtaddress" cssclass="form-control"  runat="server"></asp:TextBox><br />
   <%-- <asp:TextBox ID="txtpsswrd" CssClass="form-control" TextMode="Password" 
        required="Password"  runat="server" ></asp:TextBox>--%>
                </div>   
     </div> 
  <div class="row">
            <div class="col-md-2"><strong><asp:Label ID="lbImage" runat="server" Text="Image"
                     CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
                    <asp:FileUpload ID="FileUpload_Nshop" CssClass="btn btn-success btn-block1, form-control" runat="server" /><br />
                    </div>  
            <div class="col-md-2"><strong>
                <asp:Label ID="lbContact" runat="server" Text="Contact" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
                    <asp:TextBox ID="txtcontact" cssclass="form-control"    runat="server"></asp:TextBox><br />
                   </div>
  </div>
        <div class="row">
            <div class="col-md-2"><strong>
                <asp:Label ID="lbCNIC" runat="server" Text="CNIC" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
                       <asp:TextBox ID="txtcnic" cssclass="form-control"    runat="server"></asp:TextBox><br />
   </div>
           <div class="col-md-1"></div>
                <div class="col-md-2"></div>
                <div class="col-md-3" >
                    
                </div>
        </div>
             <div class="row">
            <div class="col-md-2"></div>
                <div class="col-md-3" >
    </div>
                  <div class="col-md-1"></div>
                  <div class="col-md-2"></div>
                <div class="col-md-3" >
 </div>
        </div> 
            <div class="col-md-2"><strong>
                <asp:Label ID="lbadmin_id" runat="server" Visible="false" Text="Admin Id" CssClass="auto-style1"></asp:Label></strong></div>
                <div class="col-md-3" >
    <asp:TextBox ID="txtadmin_id" cssclass="form-control" Visible="false" ReadOnly="true"  runat="server"></asp:TextBox><br /></div>
       

        
 </div>
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <asp:Button ID="btnCreateShop" OnClientClick="Shop Created"  runat="server" Text="Create Shop" 
                CssClass="btn btn-success btn-block1 , form-control" OnClick="btnCreateShop_Click"   />
            </div>
        <div class="col-md-2"></div>
    </div>
                    </div></div></div>
</asp:Content>

