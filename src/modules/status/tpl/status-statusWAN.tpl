<form id="statusWAN" class="form-horizontal none">
  <h2 class="legend">System Information</h2>
  <fieldset>
    <div class="col-xs-12 col-md-4 mgr100" >
      <div class="form-group" id="conType">
        <label class="col-xs-6 col-sm-5 control-label">Connection Type</label>
        <div class="col-xs-6 col-sm-7">
          <p id="wanType" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group none" id="wanConnectTime-wrapper">
        <label class="col-xs-6 col-sm-5 control-label">Connection Duration</label>
        <div class="col-xs-6 col-sm-7">
          <p id="wanConnectTime" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group">
        <label class="col-xs-6 col-sm-5 control-label">WAN MAC Address</label>
        <div class="col-xs-6 col-sm-7">
          <p id="statusWanMAC" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group">
        <label class="col-xs-6 col-sm-5 control-label">LAN IP Address</label>
        <div class="col-xs-6 col-sm-7">
          <p id="lanIP" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group">
        <label class="col-xs-6 col-sm-5 control-label">Firmware Version</label>
        <div class="col-xs-6 col-sm-7">
          <p id="softVersion" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group none" id="sysTimecurrentTime-wrapper">
        <label class="col-xs-6 col-sm-5 control-label">System Time</label>
        <div class="col-xs-6 col-sm-7">
          <p id="sysTimecurrentTime" class="form-control-static"></p>
        </div>
      </div>
    </div>
    <div class="col-xs-12 col-md-4" id="wanBasic">
      <div class="form-group">
        <label class="col-xs-6 col-sm-5 control-label">WAN IP Address</label>
        <div class="col-xs-6 col-sm-7">
          <p id="statusWanIP" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group">
        <label class="col-xs-6 col-sm-5 control-label">Subnet Mask</label>
        <div class="col-xs-6 col-sm-7">
          <p id="statusWanMask" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group">
        <label class="col-xs-6 col-sm-5 control-label">Default Gateway</label>
        <div class="col-xs-6 col-sm-7">
          <p id="statusWanGaterway" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group">
        <label class="col-xs-6 col-sm-5 control-label">Preferred DNS Server</label>
        <div class="col-xs-6 col-sm-7">
          <p id="statusWanDns1" class="form-control-static"></p>
        </div>
      </div>
      <div class="form-group">
        <label class="col-xs-6 col-sm-5 control-label">Alternate DNS Server</label>
        <div class="col-xs-6 col-sm-7">
          <p id="statusWanDns2" class="form-control-static"></p>
        </div>
      </div>
    </div>
  </fieldset>
</form>