<form class="form-horizontal">
  <h2 class="legend">Operating Mode</h2>
  <fieldset>
    <div class ="form-group">
      <div class="col-xs-12 col-sm-10 col-md-9">
        <label class="radio-inline" for="norepeat">
          <input type="radio" id="norepeat" name="wifiRelayType" value="disabled">Router</label>
        <br class="visible-xs">
        <label class="radio-inline" for="wisp">
          <input type="radio" id="wisp" name="wifiRelayType" value="wisp">WISP</label>
        <br class="visible-xs">
        <label class="radio-inline" for="clientap">
          <input type="radio" id="clientap" name="wifiRelayType" value="client+ap">Universal Repeater</label>
        <br class="visible-xs">
        <label class="radio-inline" for="ap">
          <input type="radio" id="ap" name="wifiRelayType" value="ap">AP</label>
      </div>
    </div>
    <div id="modeIntro">
      <div class="form-group">
        <div class="col-sm-12 help-block none" id="routerInfo">In this mode, the router connects to an ISP in a wired manner and meanwhile provides WiFi signals, enabling clients to wirelessly access the internet.</div>
        <div class="col-sm-12 help-block none" id="wispInfo">In this mode, the router extends the WiFi signals of ISPs like CMCC, China Unicom, and ChinaNet.</div>
        <div class="col-sm-12 help-block none" id="clientApInfo">In this mode, the router can extend any WiFi signals.</div>
        <div class="col-sm-12 help-block none" id="apInfo">In this mode, the router functions as an AP, which is often used for wireless network coverage in hotels and SMEs.</div>
      </div>
    </div>
  </fieldset>
</form>
