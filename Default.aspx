<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="carousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="header/1.jpg" style="width:100%;height:480px;" alt="Abdullah Garments">
    </div>
    <div class="item">
      <img src="header/2.jpg" style="width:100%;height:480px;" alt="Baby Collection">
    </div>
    <div class="item">
      <img src="header/3.jpg" style="width:100%;height:480px;" alt="Pehcahn Garments">
    </div>
    <div class="item">
      <img src="header/4.jpg" style="width:100%;height:480px;" alt="T-Shirts">
    </div>
     <hr />

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#carousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
</div>

    <style>
        .grow { transition: all .2s ease-in-out; }
        .grow:hover { transform: scale(1.1); }
    </style>
    <div id="dvmain" runat="server"> </div>
   

   <%-- <div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">HYDERI MARKET</div>
        <div class="panel-body"><img src="Malls/karachi-hyderi-market-online-670.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">ANARKALI BAZAR(water pump)</div>
        <div class="panel-body"><img src="Malls/waterpump.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">CTC MARKET(clifton)</div>
        <div class="panel-body"><img src="Malls/ctc.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">MADNI MALL(Hyderi)</div>
        <div class="panel-body"><img src="Malls/madnimall.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">HAROON MALL(Buffer Zone)</div>
        <div class="panel-body"><img src="Malls/Haroon.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">ERUM MALL(Buffer Zone)</div>
        <div class="panel-body"><img src="Malls/Erum.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div></div>--%> 
</asp:Content>