<%include('../../common/tpl/doc-header.tpl')%>
<noscript>
  <div id="testJs" class="test-tips">
    <p>Error! The browser does not support JavaScript. </p>
    <p>Please enable JavaScript or try another browser compatible with JavaScript to 
      experience more features of the device.
    </p>
  </div>
</noscript>
<div id="main_content" class="none">
<section class="container">
  <form name="Login" method="post" action="/login/Auth" class="form-horizontal">
  <input type="hidden" name="password" id="password">
    <div class="row">
      <div class="center-block col-sm-7 col-md-5 col-lg-4 pull-none">
        <article class="login box-shadow" id="loginWrap">
          <%include('./tpl/login-header.tpl')%>
          <%include('./tpl/login-form.tpl')%>
          <%include('./tpl/login-btn.tpl')%>
          <%include('./tpl/login-footer.tpl')%>
        </article>
        <article id="overUserWrap" class="box-shadow over-user none">
          <%include('./tpl/login-header.tpl')%>
          <%include('./tpl/login-overUser.tpl')%>
        </article>
      </div>
    </div>
  </form>
</section>
</div>
<%include('../../common/tpl/doc-footer.tpl')%>

