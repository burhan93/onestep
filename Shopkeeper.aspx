<%@ Page   Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Shopkeeper.aspx.cs" Inherits="Shopkeeper"   %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .css {
            border-radius: 10px;
            height: 30px;
            width: 50%;
        }

        .auto-style1 {
            background-color: #FFFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br /><br />
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbname" runat="server" Text="Name" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtname" CssClass="css" required="Name" runat="server"></asp:TextBox><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbusername" runat="server" Text="UserName" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtusername" CssClass="css" required="UserName" runat="server"></asp:TextBox><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbEmail" runat="server" Text="Email" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtemail" CssClass="css" placeholder="abc@gmail.com" required="Email" runat="server"></asp:TextBox><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"><strong>
                <asp:Label ID="lbpassword" runat="server" Text="Password" CssClass="auto-style1"></asp:Label></strong></div>
            <div class="col-md-4">
                <asp:TextBox ID="txtpassword" CssClass="css" TextMode="Password" required="Password" runat="server"></asp:TextBox><br />
            </div>
        </div>
    
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbAddress" runat="server" Text="Address" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtaddress" CssClass="css" required="Address" runat="server"></asp:TextBox><br />
            </div>
        </div>
   
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbimg" runat="server" Text="Shop Image" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:FileUpload ID="FileUpload1" CssClass="css" runat="server" />            </div>
        </div>
    
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbcontact" runat="server" Text="Contact-No" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtcontact" CssClass="css" required="Contact" runat="server"></asp:TextBox><br />
            </div>
        </div>
   
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbcnic" runat="server" Text="CNIC" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtcnic" CssClass="css" placeholder="42101-xxxxxxx-X" required="CNIC" runat="server"></asp:TextBox><br />
            </div>
        </div>
   
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbshopname" runat="server" Text="Shop Name" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtshopname" CssClass="css" required="ShopName" runat="server"></asp:TextBox>
            </div>
        </div>
 
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <strong>
                    <asp:Label ID="lbMall" runat="server" Text="Select Mall" required="Mall" CssClass="auto-style1"></asp:Label></strong>
            </div>
            <div class="col-md-4">
                <asp:DropDownList ID="ddlmall" CssClass="css" runat="server">                  
                </asp:DropDownList>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-2">
            <asp:Button ID="btncreate" Style="border-radius: 10px; ;" runat="server" Text="Create Shop" CssClass="auto-style1" OnClick="btncreate_Click" />
</div>
           
            <div class="col-md-4">
                <asp:label id="lbl1" runat="server"></asp:label>
            </div>
        </div>
    </div>
    <br />
    
     <br />
    <br />
</asp:Content>


