<section class="wireless-container none" id="quickWireless">
	<div class="wireless-box">
		<div class="wireless-header">
			<h4>Your WiFi network is not encrypted.</h4>
			<h4>You are recommended to set a WiFi password for network security.</h4>
		</div>
		<div class="wireless-content">
			
			  <div class="control-group clearfix">
			    <label class="control-label" for="quickSSID">WiFi Name</label>
			    <div class="controls">
			      <input type="text" name="wifiSSID" id="quickSSID" class="form-control validatebox longthen" maxlength="32" required="required" data-options='{"type":"ssid"}' placeholder="">
			    </div>
			  </div> 
			  <div class="control-group clearfix">
			    <label class="control-label" for="quickPwd">WiFi Password</label>
			    <div class="controls">
			      <input type="password" name="wifiPwd" id="quickPwd" class="form-control validatebox longthen" maxlength="63" data-options='{"type":"ssidPasword","args":[8,63]}'>
			    </div>
			  </div>
		</div>
		<footer class="wireless-footer">
			<button class="form-control btn-primary" id="sure">OK</button>
		</footer>
	</div>
</section>