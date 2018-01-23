<!-- <section id="upgradeDianoseWrapper" class="dialog col-xs-10 col-sm-8 col-lg-6 col-xs-offset-1 col-lg-offset-3 col-sm-offset-2 none">
	<div class="dialog-header">
		<div class="dialog-title">
			<span>Firmware Upgrade</span>
			<span class="dialog-close">×</span>
		</div>
	</div>
	<div class="dialog-container" style="padding:14px 24px; overflow-y: auto;"> -->
	<!--当前已经是最新版本时-->
		<!-- <div id="curNewVersionMsg" style="margin-top:65px;" class="none">
			<div class="center-block" style="width:70px;"><p class="pic-success"></p></div>
			<p class="text-center">Detection complete</p>
			<p class="text-center help-block">No later version</p> 
		</div>-->
	<!--升级配置过程-->
		<!-- <div id="upgradeConfig" class="none">
			<div class="upgrade-header" >
				<div class="center-block" style="width:67px; margin-bottom:10px"><div class="picture pic-upgrade" ></div></div>
				<div id="upgradeRemind">
				</div>
			</div>
		   
			<div class="upgrade-body">
				<div class="col-lg-8 col-lg-offset-2 col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-2 none" id="newVersionContent"></div>
				<div class="col-lg-8 col-lg-offset-2 col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-2 none" id="waitDownload" style="margin-top:40px;">
					<p class="text-center">Waiting for download...</p>
				</div>
				<div id="progress" style="margin-top:77px;">
					<div style="height:auto; display:inline-block; width:100%;">
						<p class="text-center help-block " id="progress-msg">Upgrading...</p>
					</div>
					<div class="progress" style="padding:0px;">
						<div class="progress-bar"></div>
					</div>
				</div>
			</div>

			<div class="upgrade-footer">
				<div class="btn-group none" id="upgradeBtnGroup">
					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 text-center text-danger" style="margin-bottom:10px;" id="upgradeErrorMsg"></div>
	                <input type="button" value="Upgrade" class="btn btn-primary col-xs-10 col-lg-3 col-sm-4 col-sm-offset-3 col-lg-offset-3 col-xs-offset-1 col-md-3 col-md-offset-2 upgradeBtnImmediatelyBtn" id="upgradeBtnImmediatelyBtn">
	                <input type="button" value="Not Now" class="btn btn-first col-xs-10 col-lg-3 col-sm-4 col-md-3 col-xs-offset-1 notUpgradeBtn" id="notUpgradeBtn">
	            </div>
	            <div class="footer-msg text-center none" id="upgradeWarn">
	            	<p class="text-primary">Do not power off the router during the upgrade.</p>
	            	<p class="help-block">If you power off the router, it may not work properly.</p>
	            </div>
			</div> 
		</div>
    </div>
</section>

 -->
<div id="upgradeDianoseWrapperTitle" class="none">Firmware Upgrade</div>
 <section id="upgradeDianoseWrapper" class="none">
	<div class="dialog-container" style="padding:14px 24px;">
	<!--当前已经是最新版本时-->
		<div id="curNewVersionMsg" style="margin-top:65px;" class="none">
			<div class="center-block" style="width:70px;"><p class="pic-success"></p></div>
			<p class="text-center">Detection complete</p>
			<p class="text-center help-block">No later version</p>
		</div>
	<!--升级配置过程-->
		<div id="upgradeConfig" class="none">
			<div class="upgrade-header" >
				<div class="center-block" style="width:67px; margin-bottom:10px"><div class="picture pic-upgrade" ></div></div>
				<div id="upgradeRemind">
				</div>
			</div>
		   
			<div class="upgrade-body clearfix">
				<div class="col-lg-10 col-lg-offset-1 col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 none" id="newVersionContent"></div>
				<div class="col-lg-10 col-lg-offset-1 col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 none" id="waitDownload" style="margin-top:40px;">
					<p class="text-center">Waiting for download...</p>
				</div>
				<div id="progress" style="margin-top:77px;">
					<div style="height:auto; display:inline-block; width:100%;">
						<p class="text-center help-block " id="progress-msg">Upgrading...</p>
					</div>
					<div class="progress" style="padding:0px;">
						<div class="progress-bar"></div>
					</div>
				</div>
			</div>

			<div class="upgrade-footer">
				<div class="btn-group none" id="upgradeBtnGroup">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center text-danger" style="margin-bottom:10px;" id="upgradeErrorMsg"></div>
					<div style="text-align: center; width: 50%; float:left;">
	                <input type="button" value="Upgrade" class="btn btn-primary upgradeBtnImmediatelyBtn" id="upgradeBtnImmediatelyBtn"/>
	                </div>
	                <div style="text-align: center;">
	                <input type="button" value="Not Now" class="btn btn-first notUpgradeBtn" id="notUpgradeBtn"/>
	                </div>
	            </div>
	            <div class="footer-msg text-center none" id="upgradeWarn">
	            	<p class="text-primary">Do not power off the router during the upgrade.</p>
	            	<p class="help-block">If you power off the router, it may not work properly.</p>
	            </div>
			</div> 
		</div>
    </div>
</section>