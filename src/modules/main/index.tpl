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
	<%include('./tpl/index-header.tpl')%>

	<section class="container">
	  <div class="row main-container">
	  
	    <%include('./tpl/index-navbar.tpl')%>

	    <article class="col-sm-9 col-lg-10 main-content" id="main-content">
	      <div id="iframe"></div>
	    </article>
	  </div>
	</section>

	<%include('./tpl/index-footer.tpl')%>
	<%include('./tpl/index-overlay.tpl')%>
	<div id="progress-overlay" class="modal fade"></div>

  	<%include('./tpl/index-onlineUpgradediagnoseDialog.tpl')%>
  	<%include('./tpl/index-appScanDialog.tpl')%>
  	<%include('./tpl/network-changeModeDialog.tpl')%>
	<%include('./tpl/network-setRelayPwd.tpl')%>


</div>
<%include('../../common/tpl/doc-footer.tpl')%>
