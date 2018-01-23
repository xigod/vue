<div id="wps">
    <h2 class="legend">WPS</h2>
    <fieldset>
        <div class="form-group">
            <label class="col-sm-4 col-md-3 control-label" for="wpsEnable">WPS</label>
            <div class="col-sm-8">
                <label class="radio-inline" for="wpsEnable">
                    <input type="radio" id="wpsEnable" name="wpsEn" value="true" /> Enable
                </label>
                <label class="radio-inline" for="wpsDisable">
                    <input type="radio" id="wpsDisable" name="wpsEn" value="false" /> Disable
                </label>
            </div>
        </div>
        <div id="wpsCfg">
            <div class="form-group">
                <label class="col-sm-4 col-md-3 control-label" for="wpsPBC">PBC Mode</label>
                <div class="col-sm-2">
                    <button type="button" id="wpsPBC" class="btn">PBC</button>
                </div>
                <div class="col-sm-6 col-md-7 col-lg-7 help-block">
                    Click this button or press the WPS/RESET button.
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 col-md-3 control-label">PIN Mode</label>
                <div class="col-sm-2 form-control-static">
                 <span>PIN:</span>
                   <span id="wpsPIN"></span>
                </div>
                <div class="col-sm-5 col-md-6 col-lg-7 help-block">
                    Enter this PIN on the device to be connected.
                </div>
            </div>
        </div>
    </fieldset>
</div>