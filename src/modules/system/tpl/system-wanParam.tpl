<form class="form-horizontal" id="wanParam">
  <h2 class="legend">WAN Parameters</h2>
  <fieldset>
    <div id="serverNameWrap" class="none">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="wanServer">Server Name</label>
        <div class="col-sm-4">
	        <select id="wanServer" name="wanServer" class="form-control" style="margin-bottom:10px;">
	          <option value="default">Default</option>
	          <option value="manual">Manual</option>
	        </select>
	    </div>
		<div class="col-sm-4">
			<p id="wanServerInfoWrap" class="help-block none">Do not change if unnecessary.</p>
			<input type="text" class="validatebox form-control none" id="wanServerName" required="required" maxlength="64" data-options='{"type":"ascii"}'>
		</div>
      </div>      
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="wanServiceName">Service Name</label>
        <div class="col-sm-4">
	        <select id="wanService" name="wanService" class="form-control" style="margin-bottom:10px;">
	          <option value="default">Default</option>
	          <option value="manual">Manual</option>
	        </select>
	    </div>
		<div class="col-sm-4">
			<p id="wanServiceInfoWrap" class="help-block none">Do not change if unnecessary.</p>
			<input type="text" class="validatebox form-control none" id="wanServiceName" required="required" maxlength="64" data-options='{"type":"ascii"}'>
		</div>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wanMTU">MTU</label>
      <div class="col-sm-4">
        <span id="wanMTU" class="dropdown validatebox" required="required" data-options='{"type":"num", "args":[576, 1500]}'>
        </span>
      </div>
      <div class="col-sm-4 col-md-5 help-block"><span>Do not change if unnecessary.</span></div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="macClone">Clone MAC Address</label>
      <div class="col-sm-4">
        <select id="macClone" name="macClone" class="form-control" style="margin-bottom:10px;">
          <option value="default">Restore Default MAC</option>
          <option value="clone">Clone Local Host MAC</option>
          <option value="manual">Manual</option>
        </select>
      </div>
      <div class="col-sm-4">
        <p id="macCurrenWrap" class="help-block none">Local Host MAC Address: C8:C8:C8:C8:C8:C8</p>
        <input type="text" class="validatebox form-control none" id="macCurrentWan" required="required" maxlength="17" data-options='{"type":"mac"}'>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wanSpeed">WAN Speed</label>
      <div class="col-sm-4">
        <select id="wanSpeed" name="wanSpeed" class="form-control">
          <option value="Auto">Auto-negotiation</option>
          <option value="100">100 Mbps full duplex</option>
          <option value="-100">100 Mbps half duplex</option>
          <option value="10">10 Mbps full duplex</option>
          <option value="-10">10 Mbps half duplex</option>
        </select>
      </div>
      <div class="col-sm-4 col-md-5 help-block">Current speed:<span id="wanSpeedCurrent">100 Mbps full duplex</span> </div>
    </div>
  </fieldset>
</form>
<!--End WAN Parameters-->