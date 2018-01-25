<div id="wifiParam">
  <h2 class="legend">Wireless Parameters</h2>
  <fieldset>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wifiMode">Network Mode</label>
      <div class="col-sm-4">
        <select id="wifiMode" name="wifiMode" class="form-control">
          <option value="bgn">11b/g/n</option>
          <option value="bg">11b/g</option>
          <option value="g">11g</option>
          <option value="b">11b</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wifiChannel">Wireless Channel</label>
      <div class="col-sm-4"> 
        <!--此部分JS应控制最大长度-->
        <select id="wifiChannel" name="wifiChannel" class="form-control"> </select>
      </div>
      <div class="col-sm-4 col-md-5 help-block cur-channel">Current channel:<span id="wifiChannelCurrent">7</span> </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wifiBandwidth">Wireless Bandwidth</label>
      <div class="col-sm-4">
        <select id="wifiBandwidth" name="wifiBandwidth" class="form-control" >
          <option value="Auto">Auto</option>
          <option value="20">20MHz</option>
          <option value="40">40MHz</option>
        </select>
      </div>
      <div class="col-sm-4 col-md-5 help-block cur-bandWidth">Current bandwidth:<span id="wifiBandwidthCurrent">20 MHz</span></div>
    </div>
    <div class="form-group none" id="wifiAntijamWrap">
      <label class="col-sm-4 col-md-3 control-label" for="wifiAntijamEn">Anti-interference</label>
      <div class="col-sm-8">
        <label class="checkbox-inline" for="wifiAntijamEn">
          <input type="checkbox" id="wifiAntijamEn" name="wifiAntijamEn" value="true">Enable<span class="help-block" style="display:inline; margin-left:10px;">If there are many wireless networks nearby, you can enable this function to improve the anti-interference capability of the router.</span></label>
      </div>
    </div>
  </fieldset>
</div>
<!--End Wireless Parameters-->