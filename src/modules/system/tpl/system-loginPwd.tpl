<form class="form-horizontal" id="loginPwd">
  <h2 class="legend">Login Password</h2>
  <fieldset>
    <div class="form-group none" id="oldPwdWrap">
      <label class="col-sm-4 col-md-3 control-label" for="oldPwd">Old Password</label>
      <div class="col-sm-6 col-md-5 col-lg-4">
        <input type="password" id="oldPwd" name="oldPwd" 
          	class="form-control" maxlength="32"
            data-options='{"type": "pwd", "args":[5,32]}'>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="newPwd">New Password</label>
      <div class="col-sm-6 col-md-5 col-lg-4">
        <input type="password" id="newPwd" name="newPwd" 
          	class="form-control validatebox" maxlength="32"
            data-options='{"type": "pwd", "args":[5,32]}'>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="cfmPwd">Confirm Password</label>
      <div class="col-sm-6 col-md-5 col-lg-4">
        <input type="password" id="cfmPwd" name="cfmPwd"
          class="form-control validatebox" maxlength="32"
          data-options='{"type": "pwd", "args":[5,32]}'>
      </div>
    </div>
  </fieldset>
</form>
<!--End Login Password-->