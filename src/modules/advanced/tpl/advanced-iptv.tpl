<form id="iptv" class="form-horizontal">
  <h2 class="legend">IPTV</h2>
  <fieldset>

    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="iptvEnable">IPTV</label>
      <div class="col-sm-6 col-md-5">
        <label class="radio-inline col-sm-4" for="iptvEnable">
          <input type="radio" id="iptvEnable" name="iptvEnable" value="true" />
          Enable </label>
        <label class="radio-inline  col-sm-4" for="iptvDisable">
          <input type="radio" id="iptvDisable" name="iptvEnable" value="false" />
          Disable </label>
      </div>
    </div>

    <div id="iptvEn">
      <div class="form-group">
        <label class="col-sm-offset-4 col-md-offset-3 col-sm-6 control-label">
          Connect the IPTV STB to the IPTV port of the router.
          </label>
      </div>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="VLANArea">VLAN</label>
        <div class="col-sm-3">
          <select name="" id="VLANArea" class="form-control ">
        <option value="0">Default</option>
        <option value="1">Shanghai VLAN</option>
        <option value="2">Manual VLAN</option>
      </select>
        </div>
      </div>

      <div class="form-group" id="shVLAN">
        <label class="col-sm-4 col-md-3 control-label" for="VLANID">VLAN ID</label>
        <div class="col-sm-6 col-md-5">
          <label for="VLAN-51" class="col-sm-4 radio-inline">
            <input type="radio" id="VLAN-51" name="shVLAN">
            51
         </label>
          <label for="VLAN-85" class="col-sm-4 radio-inline">
            <input type="radio" id="VLAN-85" name="shVLAN">
            85
         </label>
        </div>
      </div>

      <div id="customVLAN">
        <div class="form-group">
          <label class="col-xs-12 col-sm-4 col-md-3 control-label" for="VLANID">VLAN ID</label>
          <div class="col-xs-9 col-sm-3">
            <input type="text" id="customVLANID"  class="validatebox form-control" data-options = '{"type":"num","args":[4,4096]}'>
          </div>
          <div class="col-xs-2 col-sm-1 radio-inline">
            <span class="picture pic-add" id="addVLAN"> </span>
          </div>
        </div>

        <div class="form-group">
          <div class=" col-sm-offset-4 col-md-offset-3 col-sm-7 col-md-7">
            <table class="table">
              <thead>
                <tr id="iptvHead">
                  <th class="col-xs-4">VLAN for Uplink Packets</th>
                  <th class="col-xs-4">VLAN ID</th>
                  <th class="col-xs-4">Delete</th>
                </tr>
                <tr id="vlanEmpty">
                  <th colspan="3" id="emptyVlan" class="text-center">
                    No Data
                  </th>
                </tr>
              </thead>
              <tbody id="macFilterBody"></tbody>
            </table>
          </div>
        </div>

      </div>
    </div>
  </fieldset>
</form>