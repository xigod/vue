<div class="form-group">
  <label class="col-sm-4 col-md-3 control-label">IPv6 DHCP</label>
  <div class="col-sm-4">
    <select class="form-control" id="ipv6LanDhcpEn">
      <option value="true">Enable</option>
      <option value="false">Disable</option>
    </select>
  </div>
</div>
<div id="ipv6LanDhcpWrap">
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">LAN IPv6 Type</label>
    <div class="col-sm-4">
      <select class="form-control" id="ipv6LanDhcpType">
        <option value="auto">Auto</option>
        <option value="manual">Manual</option>
      </select>
    </div>
  </div>
  <div id="ipv6DhcpIDWrap">
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Start ID</label>
      <div class="col-sm-4">
        <input type="text" id="ipv6LanDhcpStartID" class="form-control validatebox" name="ipv6LanDhcpStartID" required="required" data-options='{"type": "ipv6Postfix"}'  maxLength="128"/>
      </div>
      <div class="col-sm-3"> <span class="help-block">::xx or a:b:c:d </span> </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">End ID</label>
      <div class="col-sm-4">
        <input type="text" id="ipv6LanDhcpEndID" class="form-control validatebox" name="ipv6LanDhcpEndID" required="required" data-options='{"type": "ipv6Postfix"}'  maxLength="128"/>
      </div>
      <div class="col-sm-3"> <span class="help-block">::xx or a:b:c:d </span> </div>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">LAN IPv6 DNS</label>
    <div class="col-sm-4">
      <select class="form-control" id="ipv6LanDnsType">
        <option value="auto">Auto</option>
        <option value="manual">Manual</option>
      </select>
    </div>
  </div>
  <div id="ipv6LanDnsTypeWrap">
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Preferred DNS</label>
      <div class="col-sm-4">
        <input type="text" id="ipv6LanDns1" class="form-control validatebox" name="ipv6LanDns1" required="required" data-options='{"type": "ipv6"}'  maxLength="128"/>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Alternate DNS</label>
      <div class="col-sm-4">
        <input type="text" id="ipv6LanDns2" class="form-control validatebox" name="ipv6LanDns2" required="required" data-options='{"type": "ipv6"}'  maxLength="128"/>
      </div>
    </div>
  </div>
</div>
