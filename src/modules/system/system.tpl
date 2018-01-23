<section class="container-fluid">

  <%include('./tpl/system-loginPwd.tpl')%>
  <%include('./tpl/system-wanParam.tpl')%>
  <%include('./tpl/system-lanParame.tpl')%>
  <%include('./tpl/system-remoteWeb.tpl')%>
  <% if(CONFIG_HASSYSTIME == true) { %>
  	<%include('./tpl/system-timeSet.tpl')%>
  <% } %>
  <%include('./tpl/system-deviceManage.tpl')%>
</section>
