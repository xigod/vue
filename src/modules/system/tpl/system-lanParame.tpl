<form class="form-horizontal" id="lanParame">
 <h2 class="legend">LAN Parameters</h2>
  <fieldset>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="lanIP">LAN IP Address</label>
      <div class="col-sm-4">
      <input type="text" id="lanIP" name="lanIP" class="form-control validatebox"
          maxlength="15" required="required" data-options='{"type":"ip"}'>
      </div>
    </div>
     <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="lanMask">Subnet Mask</label>
      <div class="col-sm-4">
      <input type="text" id="lanMask" name="lanMask" class="form-control validatebox"
          maxlength="15" required="required" data-options='{"type":"lanMaskExt"}'>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="dhcpEn">DHCP Server</label>
      <div class="col-sm-8 col-md-9">
       <label class="checkbox-inline" for="dhcpEn" style="float: left;">
        <input type="checkbox" id="dhcpEn" name="dhcpEn" value="true">Enable
       </label>
       <span class="help-block help-out">If this function is disabled, the router stops assigning IP addresses to clients.</span>

      </div>
    </div>
    <div id="dnsWrap" class="none">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="lanDhcpStartIP">Start IP Address</label>
        <div class="col-sm-4">
          <span class="ipNet">192.168.0.</span><input type="text" id="lanDhcpStartIP" name="lanDhcpStartIP" class="form-control validatebox input-mini"
            maxlength="15" required="required" data-options='{"type":"num", "args":[1,254]}'>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="lanDhcpEndIP">End IP Address</label>
        <div class="col-sm-4">
        <span class="ipNet">192.168.0.</span><input type="text" id="lanDhcpEndIP" name="lanDhcpEndIP" class="form-control validatebox input-mini"
            maxlength="15" required="required" data-options='{"type":"num", "args":[1,254]}'>
        </div>
      </div>
      <!-- <div class="form-group none">
        <label class="col-sm-4 col-md-3 control-label">Lease Time</label>
        <div class="col-sm-4">
          <select id="lanDhcpLeaseTime" name="lanDhcpLeaseTime" class="form-control">
            <option value="1">1 Hour</option>
            <option value="6">6 Hours</option>
            <option value="12">12 Hours</option>
            <option value="24">1 Day</option>
            <option value="168">7 Days</option>
          </select>
        </div>
      </div> -->
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="lanDns1">Preferred DNS Server</label>
        <div class="col-sm-4">
          <input type="text" id="lanDns1" name="lanDns1" class="form-control validatebox"
            maxlength="15" required="required" data-options='{"type":"ip"}'>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="lanDns2">Alternate DNS Server</label>
        <div class="col-sm-4">
      <input type="text" id="lanDns2" name="lanDns2" class="form-control validatebox"
            maxlength="15" data-options='{"type":"ip"}'>
        </div>
      </div>
    </div>             
  </fieldset>
</form>