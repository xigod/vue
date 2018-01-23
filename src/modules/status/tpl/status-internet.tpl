<form class="form-horizontal" id="statusInternet">
<h2 class="legend">Internet Connection Status</h2>
<fieldset>
  <div class="col-xs-8 col-sm-5 pic-wan" id="internetPicWrapper">

    <div class="col-xs-6 col-sm-6 text-center">
      <i id="internetPic" class="picture" style="height:84px;"></i>
      <p class="help-block text-center" id="superDeviceDesc"></p>
      <p class="text-center" id="wifiRelaySSID"></p>
    </div>

    <div class="col-xs-4 col-sm-4 col-sm-offset-1 col-xs-offset-1 col-lg-offset-0" style="padding:0;margin-top: 35px;">
          <span class="hidden-xs hidden-sm text-center text-primary" id="connectStatus"></span>
          <div class="connect-ui"></div>
    </div>
  </div>

  <!--DUT-->
  <div class="col-xs-5 col-sm-2 row text-center" style="padding:0; max-width: 108px">
    <i class="pic picture pic-router"></i>
    <p class="help-block text-center">My Router</p>
    <p class="text-center" id="wifiSSID"></p>
  </div>
  
  <div class="hidden-xs col-sm-5 pic-lan" id="devicePicWrapper">
    <div class="col-sm-4 col-xs-offset-1" style="padding:0; margin-top:54px;">
      <div class="line bottom-line">&nbsp;</div>
    </div>
    <div class="col-sm-6 text-center">
      <i class="pic picture pic-device"></i>
      <p class="help-block text-center">Devices</p>
      <p class="text-center" id="devices"></p>
    </div>
  </div>

  <!--路由状态下wan口信息-->
  <p class="col-xs-12 col-sm-10" >
    <span class="text-danger" id="wan-connect-status"></span>
  </p>
</fieldset>
</form>
