<form class="form-horizontal" id="accessControl">
  <h2 class="legend">Access Restrictions</h2>
  <fieldset>
    <p class="help-block"> Settings below will be applied to all managed devices </p>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Allow access during</label>
      <div class="col-sm-8 col-md-9">
        <select id="startHour" class="form-control input-mini">
          <!-- Leave for js or tpl to create-->
          <option value="00">00</option>
        </select>
        <span>&nbsp;:&nbsp;</span>
        <select id="startMin" class="form-control input-mini">
          <!-- Leave for js or tpl to create-->
          <option value="00">00</option>
        </select>
       <span>&nbsp;~&nbsp;</span>
        <select id="endHour" class="form-control input-mini">
          <!-- Leave for js or tpl to create-->
          <option value="00">00</option>
        </select>
        <span>&nbsp;:&nbsp;</span>
        <select id="endMin" class="form-control input-mini">
          <!-- Leave for js or tpl to create-->
          <option value="00">00</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Repeat</label>
      <div class="col-sm-8 col-md-9">
        <label class="checkbox-inline" for="day0">
          <input type="checkbox" id="day0" value="ALL" />
          Everyday </label>
        <label class="checkbox-inline" for="day1">
          <input type="checkbox" id="day1" value="Mon" />
          Mon </label>
        <label class="checkbox-inline" for="day2">
          <input type="checkbox" id="day2" value="Tue" />
          Tue </label>
        
        <label class="checkbox-inline" for="day3">
          <input type="checkbox" id="day3" value="Wed" />
          Wed </label>
        <label class="checkbox-inline" for="day4">
          <input type="checkbox" id="day4" value="Thu" />
          Thu </label>
        <label class="checkbox-inline" for="day5">
          <input type="checkbox" id="day5"  value="Fri" />
          Fri </label>
       
        <label class="checkbox-inline" for="day6">
          <input type="checkbox" id="day6" value="Sat" />
          Sat </label>
        <label class="checkbox-inline" for="day7">
          <input type="checkbox" id="day7" value="Sun" />
          Sun </label>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label">Website Restrictions</label>
      <div class="col-sm-5 col-md-4">
        <select id="parentCtrlURLFilterMode" class="form-control">
          <option value="disable">Disable</option>
          <option value="permit">Only Permit</option>
          <option value="forbid">Only Forbid</option>
        </select>
      </div>
    </div>
    <div id="urlFilterWrap" class="none">
      <div class="form-group">
        <label class="col-sm-4 col-md-3 control-label" for="urlFilterAllow">Websites Specified</label>
        <div class="col-sm-6">
          <div class="input-group">
            <input type="text" id="urlFilterAllow" name="urlFilterAllow" 
            maxlength="128" 
              class="form-control" data-option="{'type': 'url'}" >
              <span style="cursor: pointer;" class="input-group-addon" id="addUrl"> + <span>Add</span> </span> </div>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-4 col-md-3">&nbsp;</label>
        <div class=" col-sm-6">
          <div class="table-responsive">
            <table class="table table-bordered">
              <tbody id="urlList"></tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </fieldset>
</form>
<!--End Access Control Rules--> 