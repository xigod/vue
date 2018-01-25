<form id="dmzHost" class="form-horizontal">
  <h2 class="legend">DMZ Host</h2>
  <fieldset>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="dmzEnable">DMZ Host</label>
      <div class="col-sm-6">
        <label class="radio-inline" for="dmzEnable">
          <input type="radio" id="dmzEnable" name="dmzEn" value="true" />
          Enable </label>
        <label class="radio-inline" for="dmzDisable">
          <input type="radio" id="dmzDisable" name="dmzEn" value="false" />
          Disable </label>
      </div>
    </div>
    <!--Show when dmz is Enabled-->
    <div id="dmzWrap" class="form-group none">
      <label class="col-sm-4 col-md-3 control-label" for="dmzHostIP">Host IP</label>
      <div class="col-sm-4">
        <input type="text" class="form-control validatebox" id="dmzHostIP" name="dmzHostIP" data-options='{"type": "ip"}' required="required" maxlength="15">
      </div>
    </div>
  </fieldset>
</form>
