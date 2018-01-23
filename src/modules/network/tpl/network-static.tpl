<div id="static-set" class="connect-type none">
  <div class="form-group" style="margin-bottom: 4px;">
    <label class="col-sm-4 col-md-3 control-label"></label>
    <div class="col-sm-8 help-block">This type is applicable if a static IP address is required for setting up an internet connection.</div>
  </div>
  <p class="col-sm-offset-3 help-block"></p>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">IP Address</label>
    <div class="col-sm-7 col-md-6 col-lg-5"> <span id="wanIP" name="wanIP" class="textboxs-ip validatebox" required="required" data-options='{"type": "ip"}'></span> </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Subnet Mask</label>
    <div class="col-sm-7 col-md-6 col-lg-5"> <span id="wanMask" name="wanMask" class="textboxs-mask validatebox" required="required" data-options='{"type": "mask"}'></span> </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Default Gateway</label>
    <div class="col-sm-7 col-md-6 col-lg-5"> <span id="wanGateway" name="wanGateway" class="textboxs-ip validatebox" required="required" data-options='{"type": "ip"}'></span> </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Preferred DNS</label>
    <div class="col-sm-7 col-md-6 col-lg-5"> <span id="wanDns1" name="wanDns1" class="textboxs-ip validatebox" required="required" data-options='{"type": "ip"}'></span> </div>
  </div>
  <div class="form-group">
    <label class="col-sm-4 col-md-3 control-label">Alternate DNS</label>
    <div class="col-sm-7 col-md-6 col-lg-5"> <span id="wanDns2" name="wanDns2" class="textboxs-ip validatebox" data-options='{"type": "ip"}'></span>
    <span class="help-block" style="display: inline-block;">(Optional)</span>
    </div>
  </div>
</div>