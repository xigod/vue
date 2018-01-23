<form id="macFilterWrap" class="form-horizontal">
  <h2 class="legend">MAC Address Filter</h2>
  <fieldset>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="curFilterMode">Filter Mode</label>
        <div class="col-sm-8 col-md-9">
          <label class="radio-inline" for="macDeny">
              <input type="radio" id="macDeny" name="curFilterMode" value="deny" />
              Blacklist<span class="help-block" style="display:inline; padding-left: 5px;">(Disallow only listed MAC addresses.)</span>
            </label>
            <label class="radio-inline" for="macPass">
              <input type="radio" id="macPass" name="curFilterMode" value="pass" />
              Whitelist<span class="help-block" style="display:inline; padding-left: 5px;">(Allow only listed MAC addresses.)</span>
            </label>
        </div>
      </div>
      <div class="table-responsive form-group">
      <table class="table">
        <thead id="macFilterHead">
          <tr style="background:#f6f6f6; border-top:1px solid #e4e4e4;">
            <th id="filterModeDesc" class="col-xs-5">MAC Address</th>
            <th class="col-xs-5 hidden-xs">Remark (Optional)</th>
            <th class="col-xs-2 align-center">Operation</th>
          </tr>
          <tr>
            <td>
              <input type="text" id="filterMac" class="form-control input-medium" maxLength="17" />
            </td>
            <td class="hidden-xs">
              <input type="text" id="filterRemark" class="form-control input-medium" maxLength="63"></td>
            <td class=" align-center"><span class="picture pic-add"></span></td>
          </tr>
        </thead>
        <tbody id="macFilterBody"></tbody>
      </table>
    </div>
  </fieldset>
</form>