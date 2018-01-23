
<h2 class="legend">WiFi Name and Password</h2>
<fieldset>
  <!-- 2.4G -->
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label" for="enable24">2.4 GHz Network</label>
    <div class="col-sm-4">
        <label class="radio-inline" for="enable24">
          <input type="radio" id="enable24" name="wifiEn" value="true">Enable</label>
        <label class="radio-inline" for="disable24">
          <input type="radio" id="disable24" name="wifiEn" value="false">Disable</label>
    </div>
  </div> 
  <div class="wifiWrap_24">
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wifiSSID">WiFi Name</label>
      <div class="col-sm-4">
        <input type="text" name="wifiSSID" id="wifiSSID" class="form-control validatebox" maxlength="32" required="required" data-options='{"type":"ssid"}'>
      </div>
      <div class="col-sm-4 col-md-5 help-inline">
        <label class="checkbox-inline">
          <input type="checkbox" name="wifiHideSSID" id="wifiHideSSID" value="true">Hide WiFi</label>
        <!-- <label class="radio-inline" style="padding-left:0px">(<span id="helpTips" class="icon-help-circled"></span>)</label> -->
        <label class="radio-inline" style="padding-left:0px">(<span id="helpTips">?</span>)</label>
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
          <option value="NONE">None</option>
          <option value="WPA/AES">WPA-PSK</option>
          <option value="WPA2/AES">WPA2-PSK</option>
          <option value="WPAWPA2/AES">WPA/WPA2-PSK Mixed</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wifiPwd">WiFi Password</label>
      <div class="col-sm-4">
        <input type="password" name="wifiPwd" id="wifiPwd" class="form-control validatebox" required maxlength="63" data-options='{"type":"ssidPasword","args":[8, 63]}'>
      </div>
    </div>
  </div>

  <!-- 5G -->
  <div class="form-group" style="margin-top: 30px;">
    <label class="col-sm-4 col-md-3 control-label" for="enable5">5 GHz Network</label>
    <div class="col-sm-4">
        <label class="radio-inline" for="enable5">
          <input type="radio" id="enable5" name="wifiEn_5G" value="true">Enable</label>
        <label class="radio-inline" for="disable5">
          <input type="radio" id="disable5" name="wifiEn_5G" value="false">Disable</label>
    </div>
  </div> 
  <div class="wifiWrap_5">
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wifiSSID_5G">WiFi Name</label>
      <div class="col-sm-4">
        <input type="text" name="wifiSSID_5G" id="wifiSSID_5G" class="form-control validatebox" maxlength="32" required="required" data-options='{"type":"ssid"}'>
      </div>
      <div class="col-sm-4 col-md-5 help-inline">
        <label class="checkbox-inline">
          <input type="checkbox" name="wifiHideSSID_5G" id="wifiHideSSID_5G" value="true">Hide WiFi</label>
        <!-- <label class="radio-inline" style="padding-left:0px">(<span id="helpTips5" class="icon-help-circled"></span>)</label> -->
        <label class="radio-inline" style="padding-left:0px">(<span id="helpTips5">?</span>)</label>
        <div style="position:relative;">
          <div id="hideSSIDTips5" class="wifi-tips none">
            <span>If a WiFi network is hidden, wireless devices cannot detect the signal of the network.</span>
          </div>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Security Mode</label>
      <div class="col-sm-4">
        <select id="wifiSecurityMode_5G" class="form-control">
          <option value="NONE">None</option>
          <option value="WPA/AES">WPA-PSK</option>
          <option value="WPA2/AES">WPA2-PSK</option>
          <option value="WPAWPA2/AES">WPA/WPA2-PSK Mixed</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wifiPwd_5G">WiFi Password</label>
      <div class="col-sm-4">
        <input type="password" name="wifiPwd_5G" id="wifiPwd_5G" class="form-control validatebox" required maxlength="63" data-options='{"type":"ssidPasword","args":[8, 63]}'>
      </div>
    </div>
  </div>
</fieldset>
<!--End Wi-Fi Name and Password-->
