<section id="quickSetStaticWrap" class="none">
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label"></label>
    <div class="controls col-sm-7 col-md-6 col-lg-9 quickset-connect-info">This type is applicable if you are assigned a fixed IP address for accessing the internet.</div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">IP Address</label>
    <div class="controls col-sm-7 col-md-6 col-lg-7">
      <input type="text" id="wanIP" name="wanIP" class="form-control validatebox" maxlength="15" required="required" data-options='{"type":"ip"}' placeholder="IP">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Subnet Mask</label>
    <div class="controls col-sm-7 col-md-6 col-lg-7">
      <input type="text" id="wanMask" name="wanMask" class="form-control validatebox" maxlength="15" required="required" data-options='{"type":"mask"}' placeholder="Subnet Mask">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Default Gateway</label>
    <div class="controls col-sm-7 col-md-6 col-lg-7">
      <input type="text" id="wanGateway" name="wanGateway"
           class="form-control validatebox" maxlength="15"
           required="required" data-options='{"type":"ip"}' placeholder="Default Gateway">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Preferred DNS</label>
    <div class="controls col-sm-7 col-md-6 col-lg-7">
      <input type="text" id="wanDns1" name="wanDns1"
           class="form-control validatebox" maxlength="15"
           required="required" data-options='{"type":"ip"}' placeholder="Preferred DNS Server" />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Alternate DNS</label>
    <div class="controls col-sm-7 col-md-6 col-lg-7">
      <input type="text" id="wanDns2" name="wanDns2"
           class="form-control validatebox" maxlength="15"
           data-options='{"type":"ip"}' placeholder="Alternate DNS Server">
    </div>
  </div>
</section>
