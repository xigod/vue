<form class="form-horizontal" id="remoteWeb">
    <h2 class="legend">Remote Web-based Management</h2>
    <fieldset>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="remoteWebEn">Remote Web-based Management</label>
        <div class="col-sm-8 col-md-9">
          <label class="checkbox-inline" for="remoteWebEn" style="float: left;">
            <input type="checkbox" id="remoteWebEn" name="remoteWebEn" value="true">Enable</label>
            <span class="help-block help-out">If this function is enabled, you can manage the router through the internet.</span>
        </div>
      </div>
      <div id="remoteWrap" class="none">
        <div class="form-group">
          <label class="col-sm-4 col-md-3 control-label" for="remoteWebType">Management IP Address</label>
          <div class="col-sm-4">
            <select class="form-control" id="remoteWebType" name="remoteWebType">
              <option value="any">All</option>
              <option value="specified">Specific</option>
            </select>
          </div>
          <div class="col-sm-4 control-gap">
            <input type="text" name="remoteWebIP" id="remoteWebIP"
              class="form-control validatebox" maxLength="15" required="required" data-options='{"type":"ip"}'>
          </div>
        </div>
        <div class="form-group">
          <label class="col-xs-12 col-sm-4 col-md-3 control-label" for="remoteWebPort">Port</label>
          <div class="col-xs-4 col-sm-3 col-md-2">
            <input type="text" id="remoteWebPort" name="remoteWebPort"
             class="form-control validatebox" maxLength="5"
              required data-options='{"type":"num","args":[1024,65534]}'>
          </div>
        </div>
      </div>
    </fieldset>
  </form>
  <!--End Remote Web Management-->