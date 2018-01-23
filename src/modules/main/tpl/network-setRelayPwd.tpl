<section id="setRelayWrapper" class="none">
  <div class="dialog-container" style="padding:10px 50px 20px;max-width: 400px;">
      <div id="hasRelayPwd" class="">
        <div style="text-align:center;white-space: pre-wrap;word-wrap: break-word;" id="wifiRelaySSID"><p class="form-control-static" data-title="windy">Enter the password of "windy".</p></div>
        <div class="form-group" id="wifiRelayPwdWrap">
              <input type="password" name="wifiRelayPwd" id="wifiRelayPwd" maxlength="64" class="form-control validatebox" data-options='{"type": "ascii"}'>
        </div>
        <div class="form-group">
              <input class="form-control btn-primay" type="button" id="connectRelay" value="Connect">
        </div>
        <div class="form-group help-block">When you click Connect, the router reboots to make the settings effective. Use<span style="color:#ed7020; padding: 0 5px;">tendawifi.com</span>to log in to the web UI.</div>
      </div>
      <div id="noRelayPwd" class="none" style="margin-top: 30px;text-align: center;">
        <p>The select WiFi network requires no password. Do you want to connect?</p>
          <p class="help-block">When you click OK, the router reboots to make the settings effective. Use<span style="color:#ed7020; padding: 0 5px;"> tendawifi.com</span>to log in to the web UI.</p>

        <div class="btn-wrap clearfix">
          <input type="button" value="OK" style="position: static;" class="btn btn-first btn-primary col-xs-10 col-xs-offset-1 col-lg-4 col-lg-offset-1 col-sm-4 col-sm-offset-1 col-md-3 col-md-offset-2 " id="sure">
          <input type="button" value="Cancel" style="position: static;" class="btn btn-first btn-quit  col-xs-10 col-lg-4 col-lg-offset-2 col-sm-4 col-sm-offset-2 col-md-3 col-md-offset-2 col-xs-offset-1" id="cancel-model">
        </div>
      </div>
    </div>
</section>