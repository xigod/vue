<%include('../../common/tpl/doc-header.tpl')%>
<noscript>
  <div id="testJs" class="test-tips">
    <p>Error! The browser does not support JavaScript. </p>
    <p>Please enable JavaScript or try another browser compatible with JavaScript to 
      experience more features of the device.
    </p>
  </div>
</noscript>
<div id="main_content">
  <section class="container container-notinport container-fluid none" id="normalSet">
    <header class="center-block pull-none col-sm-9 col-md-8 col-lg-8 logo-wrap">
        <img src="../../common/img/logo.png" class="img-responsive" style="width:130px; height:30px; float:left; margin-right:12px">
        <div style="display:inline; text-align:left;" class="col-xs-12 col-sm-12 logo-text">You can access the internet after completing settings on this page.</div>
    </header>
    <article class="quickSet box-shadow center-block pull-none col-sm-9 col-md-8 col-lg-8" style="padding:0px; margin-bottom:20px;" id="quickSetWrap">

      <form class="form-horizontal">
      <div class="quickContent text-center">
        <div class="text-center net-status" style="border-bottom: 1px solid #E4E4E4;padding-bottom: 23px;padding-top: 13px;margin-bottom: 10px;"><img id="loading" class="img-loading" alt="Loading..." src="../../common/img/loading.gif"><span style="margin-left:12px;">Detecting your internet connection type...</span></div>
        <div class="network-wrapper">
          <div class="network-pic-wrapper hidden-xs hidden-sm"><span class="icon-internet quickSet-net-icon"></span><br /><div style="padding:10px 0;"><span data-lang="internetSetup">Internet</span></div></div>
          <div class="network-config-wrapper">
            <%include('../network/tpl/network-list.tpl')%>
            <%include('./tpl/quickset-StaticWrap.tpl')%>
            <%include('./tpl/quickset-DHCPWrap.tpl')%>
            <%include('./tpl/quickset-PPPoEWrap.tpl')%>
          </div>
        </div>
        <div style="clear:both"></div><hr style="border-top:1px solid #f2f2f2;" />
        <div class="wireless-wrapper">
          <div class="wireless-pic-wrapper hidden-xs hidden-sm">
          <span class="icon-wireless quickSet-wireless-icon"></span><div>Wireless</div>
          </div>
          <%include('./tpl/quickset-WiFiWrap.tpl')%>
        </div><br /><br /><br /><br />
      </div>
      </form>
      <footer class="quickset-footer">
        <div class="col-md-4 col-sm-6 col-lg-3 col-sm-offset-3 col-md-offset-5">
          <input class="form-control btn-primary" type="button" id="save" value="OK" style="margin-top:15px;" />
        </div>
      </footer>
    </article>
    <%include('./tpl/quickset-DoneWrap.tpl')%>
    <%include('./tpl/quickset-wanInportDialog.tpl')%>
    <div id="progress-overlay" class="modal fade"></div>
  </section>
  <%include('./tpl/quickset-hasPPPOE.tpl')%>
</div>
  <%include('../../common/tpl/doc-footer.tpl')%>

