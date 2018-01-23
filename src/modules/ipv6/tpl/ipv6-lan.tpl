<div class="form-group">
  <label class="col-sm-4 col-md-3 control-label">LAN IPv6</label>
  <div class="col-sm-4">
    <select class="form-control" id="ipv6LanType">
      <option value="auto">Auto</option>
      <option value="manual">Manual</option>
    </select>
  </div>
  <div class="col-sm-4 control-gap">
    <div id="ipv6LanIPWrap">
      <input type="text" id="ipv6LanIP" class="form-control validatebox" name="ipv6LanIP" required="required" data-options='{"type": "ipv6"}'  maxLength="128"/>
    </div>
  </div>
</div>
<div class="form-group">
  <label class="col-sm-4 col-md-3 control-label">LAN IPv6 Prefix</label>
  <div class="col-sm-4">
    <select class="form-control" id="ipv6LanDhcpPrefixType">
      <option value="auto">Auto</option>
      <option value="manual">Manual</option>
    </select>
  </div>
  <div class="col-sm-4 control-gap">
    <div id="ipv6LanDhcpPrefixWrap">
      <input type="text" id="ipv6LanDhcpPrefix" class="form-control validatebox" name="ipv6LanDhcpPrefix" required="required" data-options='{"type": "ipv6Prefix"}'  maxLength="128"/>
    </div>
  </div>
</div>
