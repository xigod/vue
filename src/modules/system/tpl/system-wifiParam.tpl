<form class="form-horizontal" id="wifiParam">
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
        <select id="wifiChannel" name="wifiChannel" class="form-control" >
          <option value="auto">Auto</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
        </select>
      </div>
      <div class="col-sm-4 col-md-5 help-block">Current channel:<span id="wifiChannelCurrent">7</span> </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="wifiBandwidth">Wireless Bandwidth</label>
      <div class="col-sm-4">
        <select id="wifiBandwidth" name="wifiBandwidth" class="form-control" >
          <option value="auto">Auto</option>
          <option value="40">40MHZ</option>
          <option value="20">20MHZ</option>
        </select>
      </div>
      <div class="col-sm-4 col-md-5 help-block">Current bandwidth:<span id="wifiBandwidthCurrent">20</span>MHZ</div>
    </div>
  </fieldset>
</form>
<!--End Wireless Parameters-->