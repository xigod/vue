<%if (multiLang){%>
<div class="form-group ico-groups country none" id="loginLangWrap">
  <label class="sr-only">Language</label>
  <label class="ico icon-lang"></label>
  <div id="country" name="country" class="form-control ico-text">
  </div>
</div>
<%}%>

<div class="form-group ico-groups" id="loginPwdWrap">
  <label class="sr-only">Password</label>
  <label class="ico icon-lock" style="margin-left: 14px"></label>
  <input id="login-password" type="password" class="form-control ico-text" maxlength="32">
  <div id="errMsg" class="text-warning">&nbsp;</div>
</div>
