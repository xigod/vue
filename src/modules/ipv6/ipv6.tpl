<section class="container-fluid">
  <form class="form-horizontal">
    <h2 class="legend">&nbsp;</h2>
    <fieldset>
      <div class="form-group">
        <label class="col-xs-5 col-sm-4 col-md-3 control-label" for="wifiEn">IPv6</label>
        <div class="col-xs-9 col-sm-8 col-md-9"> 
          <span id="ipv6En" class="switch icon-toggle-on"></span> 
        </div>
      </div>
    </fieldset>
    <div id="ipv6Wrap" class="none">
      <h2 class="legend">WAN Setup</h2>
      <fieldset>
        <div id="ipv6Wan">
          <%include('./tpl/ipv6-list.tpl')%>
          <%include('./tpl/ipv6-pppoe.tpl')%>
          <%include('./tpl/ipv6-dhcp.tpl')%>
          <%include('./tpl/ipv6-static.tpl')%>
          <%include('./tpl/ipv6-way.tpl')%>
        </div>
      </fieldset>
      <h2 class="legend">LAN Setup</h2>
      <fieldset>
        <%include('./tpl/ipv6-lan.tpl')%>
        <%include('./tpl/ipv6-lan-dhcp.tpl')%>
      </fieldset>
      <%include('./tpl/ipv6-status.tpl')%>
    </div>
  </form>
</section>
