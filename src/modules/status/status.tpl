<section class="container-fluid">

  <%include('./tpl/status-internet.tpl')%>
  <%include('./tpl/status-statistic.tpl')%>
  <%include('./tpl/status-statusWAN.tpl')%>
  <% if(product == "adsl") { %>
    <%include('./tpl/status-linkStatus.tpl')%>
  <% } %>
</section>
