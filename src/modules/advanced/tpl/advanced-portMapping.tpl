<form id="protMapping" class="form-horizontal hidden-xs hidden-sm">
  <h2 class="legend">Port Forwarding</h2>
  <fieldset>
    <div class="table-responsive form-group">
      <table class="table">
        <thead id="portHead">
          <tr>
            <th class="col-xs-3">Internal IP Address</th>
            <th class="col-xs-3">Internal Port</th>
            <!-- <th class="col-xs-3">External IP</th> -->
            <th class="col-xs-2">External Port</th>
            <th class="col-xs-2">Protocol</th>
            <th class="col-xs-2 align-center">Operation</th>
          </tr>
          <tr>
            <td class="span-fixed">
              <input type="text" id="internalIP" class="form-control input-medium" maxLength="15"></td>
            <td><span id="internalPort" class="dropdown input-medium" maxLength="5"></span></td>
            <!-- <td><span id="externalIP" class="dropdown input-medium" maxLength="5"></span></td> -->
            <td><input type="text" id="externalPort" class="form-control input-small" maxLength="5" /></td>           
            <td>
              <select id="protocol" class="form-control input-small">
                <option value="both">Both</option>
                <option value="tcp">TCP</option>
                <option value="udp">UDP</option>  
              </select>
            </td>
            <td class=" align-center"><span class="picture pic-add"></span></td>
          </tr>
        </thead>
        <tbody id="portTbody"></tbody>
      </table>
    </div>
  </fieldset>
</form>
