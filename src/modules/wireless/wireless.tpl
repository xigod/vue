<section class="container-fluid">
  <h2 class="legend">&nbsp;</h2>
  <form id="wireless" class="form-horizontal">
    <fieldset>
      <div class="form-group">
        <label class="col-xs-5 col-sm-4 col-md-3 control-label" for="wifiEn">WiFi On/Off</label>
        <div class="col-xs-9 col-sm-8 col-md-9">
        <span id="wifiEn" class="switch icon-toggle-on"></span>
        </div>
      </div>
    </fieldset>
    <div id="wifiWrap" class="none">
      <%include('./tpl/wireless-name.tpl')%>
      <%include('./tpl/wireless-signal.tpl')%>
      <div id="wifiScheduleWrap" class="none">
        <%include('./tpl/wireless-schedule.tpl')%>
      </div>
      <div id="wpsWrap" class="none">
        <% if(CONFIG_HASWPS == true) { %>
            <%include('./tpl/wireless-wps.tpl')%>
        <% } %>
      </div>
      <div id="wifiParamWrap">
        <%include('./tpl/wireless-wifiParam.tpl')%>
      </div>
    </div>
  </form>
</section>
