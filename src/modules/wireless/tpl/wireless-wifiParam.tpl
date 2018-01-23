<h2 class="legend">Wireless Parameters</h2>
<fieldset>
    <!-- 2.4G -->
    <div class="wifiWrap_24" style="margin-bottom: 30px;">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label">2.4 GHz Network</label>
        <div class="col-sm-4"></div>
      </div>
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
        <div class="col-sm-4 col-md-5 help-block cur-channel">Current Channel:<span id="wifiChannelCurrent"></span> </div>
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
    </div>

    <!-- 5G -->
    <div class="wifiWrap_5">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label">5 GHz Network</label>
        <div class="col-sm-4"></div>
      </div>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="wifiMode5">Network Mode</label>
        <div class="col-sm-4">
          <select id="wifiMode_5G" name="wifiMode_5G" class="form-control">
            <option value="ac">11a/n/ac</option>
            <option value="ac_only">11ac</option>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="wifiChannel5">Wireless Channel</label>
        <div class="col-sm-4"> 
          <!--此部分JS应控制最大长度-->
          <select id="wifiChannel_5G" name="wifiChannel_5G" class="form-control"> </select>
        </div>
        <div class="col-sm-4 col-md-5 help-block cur-channel">Current Channel:<span id="wifiChannelCurrent_5G"></span> </div>
      </div>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="wifiBandwidth5">Wireless Bandwidth</label>
        <div class="col-sm-4">
          <select id="wifiBandwidth_5G" name="wifiBandwidth_5G" class="form-control" >
            <option value="Auto">Auto</option>
            <option value="20">20MHz</option>
            <option value="40">40MHz</option>
            <option value="40">80MHz</option>
          </select>
        </div>
        <div class="col-sm-4 col-md-5 help-block cur-bandWidth">Current bandwidth:<span id="wifiBandwidthCurrent_5G"></span></div>
      </div>
    </div>

    <!-- 抗干扰 -->
    <div class="form-group none" id="wifiAntijamWrap">
      <label class="col-sm-4 col-md-3 control-label" for="wifiAntijamEn">Anti-interference</label>
      <div class="col-sm-8">
        <label class="checkbox-inline" for="wifiAntijamEn">
          <input type="checkbox" id="wifiAntijamEn" name="wifiAntijamEn" value="true">Enable<span class="help-block" style="display:inline; margin-left:10px;">If there are many wireless networks nearby, you can enable this function to improve the anti-interference capability of the router.</span></label>
      </div>
    </div>
</fieldset>
<!--End Wireless Parameters-->
