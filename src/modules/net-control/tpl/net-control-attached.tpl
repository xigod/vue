<form class="form-horizontal" id="attachedDevices">
  <h2 class="legend">Online Devices<span id="qosDeviceCount"></span></h2>
  <fieldset>
    <div class="table-responsive form-group">
      <table class="table" style="table-layout: fixed;">
        <thead>
          <tr>
            <th class="col-xs-3">Device Name</th>
            <th class="col-xs-2 hidden-max-sm">Download Speed</th>
            <th class="col-xs-2 hidden-max-md">Upload Speed</th>
            <th class="col-xs-2 hidden-max-xs">Download Limit</th>
            <th class="col-xs-2 hidden-max-md">Upload Limit</th>
            <th id="accessCtrl" class="col-sm-2 col-xs-2" style="text-align: center;">Internet Access</th>
          </tr>
        </thead>
        <tbody id="qosList"></tbody>
      </table>
    </div>
  </fieldset>
</form>
<!--End Attached Devices-->