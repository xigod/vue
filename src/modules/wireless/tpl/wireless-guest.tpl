<h2 class="legend">Guest Network</h2>
<fieldset>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label" for="guestEnable">Guest Network</label>
    <div class="col-sm-4">
        <label class="radio-inline" for="guestEnable">
          <input type="radio" id="guestEnable" name="guestEn" value="true">Enable</label>
        <label class="radio-inline" for="guestDisable">
          <input type="radio" id="guestDisable" name="guestEn" value="false">Disable</label>
    </div>
  </div> 
  <div id="wifiGuestContent" class="none">
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="guestSSID">2.4 GHz WiFi Name</label>
      <div class="col-sm-4">
        <input type="text" name="guestSSID" id="guestSSID" class="form-control validatebox" maxlength="32" required="required" data-options='{"type":"ssid"}'>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="guestSSID_5G">5 GHz WiFi Name</label>
      <div class="col-sm-4">
        <input type="text" name="guestSSID_5G" id="guestSSID_5G" class="form-control validatebox" maxlength="32" required="required" data-options='{"type":"ssid"}'>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="guestPwd">Guest Network Password</label>
      <div class="col-sm-4">
        <input type="password" name="guestPwd" id="guestPwd" class="form-control validatebox" maxlength="63" data-options='{"type":"ssidPasword","args":[8, 63]}'>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Validity</label>
      <div class="col-sm-4">
        <select id="guestValidTime" class="form-control">
          <option value="4">4 hours</option>
          <option value="8">8 hours</option>
          <option value="always">Always</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Shared Bandwidth for Guests</label>
      <div class="col-sm-4">
        <span id="shareSpeed" class="dropdown validatebox" required="required" maxlength="4"></span>
      </div>
      <div class="col-sm-4 col-md-5 help-inline">
        <span class="help-block">Mbps</span>
      </div>
    </div>
    
  </div>
</fieldset>
<!--End guest network-->