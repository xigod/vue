<section class="container-fluid">
  <form id="wireless" class="form-horizontal">
      <%include('./tpl/wireless-name.tpl')%>
      <div id="allWifiContentWrap">
        <div id="wifiGuestWrap">
          <%include('./tpl/wireless-guest.tpl')%>
        </div>
        <%include('./tpl/wireless-signal.tpl')%>
        <div id="wifiScheduleWrap" class="none">
          <%include('./tpl/wireless-schedule.tpl')%>
        </div>
        <div id="wifiParamWrap">
          <%include('./tpl/wireless-wifiParam.tpl')%>
        </div>
        <%include('./tpl/wireless-beaforming.tpl')%>
        <div id="wpsWrap" class="none">
          <% if(CONFIG_HASWPS == true) { %>
              <%include('./tpl/wireless-wps.tpl')%>
          <% } %>
        </div>
      </div>
  </form>
</section>
