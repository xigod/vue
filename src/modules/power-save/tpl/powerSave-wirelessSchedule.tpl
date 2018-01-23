<section id="wifiScheduleWrap" class="none">
  <form class="form-horizontal">
    <div class="">
      <h2 class="legend">WiFi Schedule</h2>
      <fieldset>
        <div class="form-group">
          <label class="col-sm-4 col-md-3 control-label" for="wifiTimeEnable">WiFi Schedule</label>
          <div class="col-sm-8">
            <label class="radio-inline" for="wifiTimeEnable">
         <input type="radio" id="wifiTimeEnable" name="wifiTimeEn" value="true" />
             Enable 
        </label>
            <label class="radio-inline" for="wifiTimeDisable">
        <input type="radio" id="wifiTimeDisable" name="wifiTimeEn" value="false" />
             Disable 
        </label>
          </div>
        </div>
        <!--Show when Wi-Fi Schedule is Enabled-->
        <div id="wifiScheduleCfg" class="none">
          <div class="form-group">
            <label class="col-sm-4 col-md-3 control-label">Turn WiFi Off At</label>
            <div class="col-sm-8 col-md-9">
              <select id="startHour" class="form-control input-mini">
          <!-- Leave for js or tpl to create-->
          <option value="00">00</option>
        </select>
              <span>&nbsp;:&nbsp;</span>
              <select id="startMin" class="form-control input-mini">
          <!-- Leave for js or tpl to create-->
          <option value="00">00</option>
        </select>
              <span>&nbsp;~&nbsp;</span>
              <select id="endHour" class="form-control input-mini">
          <!-- Leave for js or tpl to create-->
          <option value="00">00</option>
        </select>
              <span>&nbsp;:&nbsp;</span>
              <select id="endMin" class="form-control input-mini">
          <!-- Leave for js or tpl to create-->
          <option value="00">00</option>
        </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-4 col-md-3 control-label">Turn WiFi Off On</label>
            <div class="col-sm-8 col-md-9">
              <label class="checkbox-inline" for="day0">
          <input type="checkbox" id="day0" value="ALL">Everyday</label>
              <label class="checkbox-inline" for="day1">
          <input type="checkbox" id="day1" value="Mon">Mon.</label>
              <label class="checkbox-inline" for="day2">
          <input type="checkbox" id="day2" value="Tue">Tue.</label>
              <label class="checkbox-inline" for="day3">
          <input type="checkbox" id="day3" value="Wed">Wed.</label>
              <br class="visible-xs">
              <label class="checkbox-inline" for="day4">
          <input type="checkbox" id="day4" value="Thu">Thu.</label>
              <label class="checkbox-inline" for="day5">
          <input type="checkbox" id="day5" value="Fri">Fri.</label>
              <label class="checkbox-inline" for="day6">
          <input type="checkbox" id="day6" value="Sat">Sat.</label>
              <label class="checkbox-inline" for="day7">
          <input type="checkbox" id="day7" value="Sun">Sun.</label>
            </div>
          </div>
        </div>
      </fieldset>
    </div>
  </form>
  <fieldset id="tendaApp">
    <label class="col-xs-12" style="margin-bottom: 25px;padding-left: 0;">How to enable WiFi?</label>
    <img src="../../../common/img/app.png" class="app">
    <div class=" col-xs-12 col-md-9">
      <div class=" col-xs-5 control-label top40">
        To enable/disable your WiFi anywhere and anytime, scan the QR code to download the Tenda WiFi app, register an account and bind it to the router.
      </div>
      <span class="col-md-1 col-xs-1 top40 or">or</span>
      <div class="col-xs-6  control-label top40">
        Use an Ethernet cable to connect your router to your computer, enter tendawifi.com in the address bar of a web browser on the computer, and enable WiFi on the WiFi Settings page.
      </div>
    </div>
  </fieldset>
</section>

<!--End Wi-Fi Schedule-->