<section class="container-fluid">
  <%include('./tpl/wireless-repeaters-form.tpl')%>
</section>
<section class="container-fluid" id="wanCfgWrapper">
  <form class="form-horizontal">
    <h2 class="legend">Internet Connection</h2>
    <fieldset>
     

      <%include('./tpl/network-list.tpl')%>
      
      <div id="wan">
        <%include('./tpl/network-pppoe.tpl')%>
        <%include('./tpl/network-dhcp.tpl')%>
        <%include('./tpl/network-static.tpl')%>
      </div>  
        
	  <%include('./tpl/network-info.tpl')%>
    </fieldset>
  </form>
</section>
<section id="apConfigWrapper" class="container-fluid">
  <%include('./tpl/wireless-repeaters-table.tpl')%>
</section>


