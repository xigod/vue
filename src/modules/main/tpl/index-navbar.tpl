
<div class="navbar navbar-default col-sm-3 col-lg-2" id="nav"> 
  <!--TODO:如果需要固定navbar-fixed-top头部，则需要修改#nav > *不需要-->
  <div class="navbar-header" style="background: #ed7020;"> 
  	<img src="../../../common/img/logo-inverse.png" alt="Tenda LOGO"
        class="visible-xs-inline" style="float:left;margin: 5px 0 0 3px">
    <button type="button" id="navbar-button" class="navbar-toggle collapsed" data-toggle="collapse"
    data-target="#navbar" aria-expanded="false" aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </div>
	<nav class="navbar-collapse" id="nav-menu">
    <% if(product == "adsl") { %>
    <%include('./index-nav-adsl.tpl')%>
    <% } else if( product == "mifi" ) {%>
      <%include('./index-nav-mifi.tpl')%>
    <% } else {%>
      <%include('./index-nav-wifi.tpl')%>
    <% }%>
	</nav>
</div>

