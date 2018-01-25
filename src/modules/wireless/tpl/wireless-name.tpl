
<h2 class="legend">WiFi Name and Password</h2>
<fieldset>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label" for="wifiSSID">WiFi Name</label>
    <div class="col-sm-4">
      <input type="text" name="wifiSSID" id="wifiSSID" class="form-control validatebox" maxlength="32" required="required" data-options='{"type":"ssid"}' placeholder="WiFi Name">
    </div>
    <div class="col-sm-4 col-md-5 help-inline">
      <label class="checkbox-inline">
        <input type="checkbox" name="wifiHideSSID" id="wifiHideSSID" value="true">Hide WiFi</label>
      <label class="radio-inline" style="padding-left:0px">(<span id="helpTips" class="icon-help-circled"></span>)</label>
      <div style="position:relative;">
        <div id="hideSSIDTips" class="wifi-tips none">
          <span>If a WiFi network is hidden, wireless devices cannot detect the signal of the network.</span>
        </div>
      </div>
    </div>
    
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Security Mode</label>
    <div class="col-sm-4">
      <select id="wifiSecurityMode" class="form-control">
        <option value="none">None</option>
        <option value="wpa-psk">WPA-PSK</option>
        <option value="wpa2-psk">WPA2-PSK</option>
        <option value="wpa&wpa2">WPA/WPA2-PSK Mixed</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label" for="wifiPwd">WiFi Password</label>
    <div class="col-sm-4">
      <input type="password" name="wifiPwd" id="wifiPwd" class="form-control validatebox" required maxlength="63" placeholder="WiFi Password" data-options='{"type":"ssidPasword","args":[8, 63]}'>
    </div>
  </div>
</fieldset>
<!--End Wi-Fi Name and Password-->