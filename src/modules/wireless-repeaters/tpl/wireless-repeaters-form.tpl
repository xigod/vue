<form class="form-horizontal">
  <h2 class="legend">&nbsp;</h2>
  <fieldset>
    <div class ="form-group">
      <div class="col-xs-12 col-sm-10 col-sm-offset-2 col-md-9 col-md-offset-3">
        <label class="radio-inline" for="norepeat">
          <input type="radio" id="norepeat" name="wifiRelayType" value="disabled" />
          Disable</label>
        <label class="radio-inline" for="wisp">
          <input type="radio" id="wisp" name="wifiRelayType" value="wisp" />
          WISP</label>
        <br class="visible-xs">
        <label class="radio-inline" for="clientap">
          <input type="radio" id="clientap" name="wifiRelayType" value="client+ap">Universal Repeater</label>
        <br class="visible-xs">
        <label class="radio-inline" for="ap">
          <input type="radio" id="ap" name="wifiRelayType" value="ap">AP</label>
      </div>
    </div>
    <div id="apInfo" class="none">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label"></label>
        <div class="col-sm-8 help-block">In AP mode, any port of the router can be used to connect to the uplink router. In this mode, some functions are ineffective, including Interent Settings, Parental Control, Bandwidth Control, Virtual Server, and so on.</div>
      </div>
    </div>
    <div id="content" class="none">
    <!--   <div class ="form-group">
      <label class="col-sm-4 col-md-3 control-label">Base Station WiFi Name</label>
      <div class="col-sm-4" id="wifiRelaySSID">
        <p class="form-control-static">Not Selected</p>
      </div>
    </div>
    <div class ="form-group none" id="wifiRelayPwdWrap">
      <label class="col-sm-4 col-md-3 control-label">WiFi Password</label>
      <div class="col-sm-5 col-lg-4">
        <input type="text" name="wifiRelayPwd" id="wifiRelayPwd" maxlength="64" placeholder="Password of the base station WiFi" class="form-control validatebox" data-options='{"type": "ascii"}'/>
      </div>
    </div>
    <div class ="form-group">
      <label class="col-sm-4 col-md-3 control-label">Connection Status</label>
      <div class="col-sm-4 help-block">
        <span id="wifiRelayStatus" class="text-danger">Disconnect</span>
      </div>
    </div> -->
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label">Select WiFi Network</label>
        <div class="col-sm-4">
          <p class="form-control-static"> 
            <i id="refreshTable" class="ico icon-refresh text-primary"></i>
            <img id="loading" class="img-loading none" alt="Loading..." src="../../../common/img/loading.gif"> </p>
        </div>
      </div>
    </div>
  </fieldset>
</form>
