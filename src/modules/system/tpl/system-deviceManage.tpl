<div class="form-horizontal" id="deviceManage">
  <h2 class="legend">Device Management</h2>
  <div class="fieldset">
    <form name="rebootfrm" method="post" action="/goform/sysReboot">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="reboot">Reboot Router</label>
        <div class="col-sm-4 col-md-3">
          <button type="button" name="reboot" id="reboot" class="btn btn-block">Reboot</button>
        </div>
      </div>
    </form>
    <form name="restorefrm" method="post" action="/goform/sysRestore">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="restore">Restore Factory Settings</label>
        <div class="col-sm-4 col-md-3">
          <button type="button" name="reboot" id="restore"  class="btn  btn-block">Reset</button>
        </div>
      </div>
    </form>
    <form name="exportCfgfrm" method="post" action="/goform/exportConfig">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="exportConfig">Backup/Restore Configuration</label>
        <div class="col-sm-4 col-md-3">
          <button type="button" name="exportConfig" id="exportConfig" class="btn btn-block">Backup</button>
        </div>
        <div class="col-sm-4 col-md-3 file">
          <button type="button" name="inport" id="inport" class="btn btn-block">Restore</button>
        </div>
      </div>
    </form> 
    <!-- <form name="inportfrm" id="inportfrm" method="post" action="cgi-bin/inport" enctype="multipart/form-data">
         <div class="form-group">
           <label class="col-sm-4 col-md-3 control-label" for="inport">Restore a Configuration File</label>
           <div class="col-sm-4 col-md-3 file">
             <button type="button" name="inport" id="inport" class="btn btn-block">Restore</button>
           </div>
         </div>
       </form>  -->   
    <form name="restorefrm" method="post" action="/goform/exportSysLog">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="export">Export System Log</label>
        <div class="col-sm-4 col-md-3">
          <button type="button" name="export" id="export" class="btn btn-block">Export</button>
        </div>
      </div>
    </form>
    <form name="upgradefrm" id="upgradefrm" method="post" action="cgi-bin/upgrade" enctype="multipart/form-data">
      <div class="form-group" style="margin-bottom:0px;">
        <label class="col-sm-4 col-md-3 control-label" for="upgrade">Upgrade Firmware</label>
        <div class="col-sm-4 col-md-3 file">
          <button type="button" name="upgrade" id="upgrade" class="btn btn-block">Local Upgrade</button>
        </div>
        <div class="col-sm-4 col-md-3 file">
          <button type="button" name="onlineUpgradeBtn" id="onlineUpgradeBtn" class="btn btn-block">Online Upgrade</button>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label"></label>
        <div class="col-sm-8 col-md-8 help-block">Current Firmware Version:<span id="firmwareVision"></span> </div>
      </div>
    </form>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="autoMaintenanceEn">Automatic Maintenance</label>
      <div class="col-sm-8 col-md-8">
        <label class="checkbox-inline" for="autoMaintenanceEn" style="float: left;">
          <input type="checkbox" name="autoMaintenanceEn"
              id="autoMaintenanceEn" value="true">
              Enable</label>
              <span class="help-block help-out" id="reminder"></span>
      </div>
    </div>
  </div>
</div>
<!--End Device Management--> 