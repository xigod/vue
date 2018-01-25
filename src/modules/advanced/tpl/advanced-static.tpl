<form id="staticIPMapping" class="form-horizontal hidden-xs">
  <h2 class="legend">IP-MAC Binding</h2>
  <fieldset>
    <div class="table-responsive form-group">
      <table class="table">
        <thead id="staticHead">
          <tr>
            <th class="col-xs-5">IP Address</th>
            <th class="col-xs-5">MAC Address</th>
            <th class="col-xs-2 align-center">Action</th>
          </tr>
          <tr>
            <td class="span-fixed">
              <input type="text" id="staticIp" class="form-control input-medium" maxLength="15"></td>
            <td>
              <input type="text" id="staticMac" class="form-control input-medium" maxLength="17"></td>
           <!--  <td>
             <input type="text" id="staticRemark" class="form-control input-medium" maxLength="63"></td> -->
            <td class=" align-center"><span class="picture pic-add"></span></td>
          </tr>
        </thead>
        <tbody id="staticTbody"></tbody>
      </table>
    </div>
  </fieldset>
</form>