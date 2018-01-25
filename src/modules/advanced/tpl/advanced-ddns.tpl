<form class="form-horizontal" id="ddnsConfig">
    <h2 class="legend">DDNS</h2>
    <fieldset>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="ddnsEnable">DDNS</label>
        <div class="col-sm-6">
          <label class="radio-inline" for="ddnsEnable">
            <input type="radio" id="ddnsEnable" name="ddnsEn" value="true" />
            Enable </label>
          <label class="radio-inline" for="ddnsDisable">
            <input type="radio" id="ddnsDisable" name="ddnsEn" value="false" />
            Disable</label>
        </div>
      </div>
      <!--Show when Wi-Fi Schedule is Enabled-->
      <div id="ddnsWrap" class="none">
        <div class="form-group">
          <label class="col-sm-4 col-md-3 control-label" for="ddnsServiceName">Service Provider</label>
          <div class="col-sm-4">
            <select class="form-control" id="ddnsServiceName" name="ddnsServiceName">
              <!-- Leave for js or tpl to create-->
              <!-- <option value="dyn.com">dyn.com</option> -->
              <option value="oray.com">oray.com</option>
              <% if(CONFIG_LANG == "cn") { %>
              <option value="88ip.com">88ip.com</option>
              <% } %>
              <% if(CONFIG_LANG == "other") { %>
              <option value="no-ip.com">no-ip.com</option>
              <% } %>
              <option value="dyn.com">dyn.com</option>
              <!-- <option value="noip.com">noip.com</option> -->
            </select>
          </div>
          <div class="col-sm-4 col-md-5 help-block"> <a href="#" style="color:#0099FF" id="register">Register Now</a></div>
        </div>
        <div class="form-group">
          <label class="col-sm-4 col-md-3 control-label" for="ddnsUser">DDNS Username</label>
          <div class="col-sm-4">
            <input type="text" name="ddnsUser" id="ddnsUser" class="form-control validatebox" maxlength="64"
              data-options='{"type": "ddns"}' required="required">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-4 col-md-3 control-label" for="ddnsPwd">DDNS Password</label>
          <div class="col-sm-4">
            <input type="password" name="ddnsPwd" id="ddnsPwd" class="form-control validatebox" data-options='{"type": "ddns"}' required="required" maxlength="64">
          </div>
        </div>
        <div class="form-group" id="ddnsDomain">
          <label class="col-sm-4 col-md-3 control-label" for="ddnsServer">DDNS Host Name</label>
          <div class="col-sm-4">
            <input type="text" name="ddnsServer" id="ddnsServer" class="form-control validatebox" maxlength="64"
              data-options='{"type": "domain"}' required="required">
          </div>
        </div>

        <div class="form-group">
          <label class="col-sm-4 col-md-3 control-label" for="ddnsStatus" id="ddnsConnectionStatusInfo">Connection Status</label>
          <div class="col-sm-4 form-control-static"> <span id="ddnsStatus">Disconnected</span> </div>
        </div>
      </div>
    </fieldset>
  </form>
