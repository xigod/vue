define(function (require, exports, module) {

	var pageModule = new PageLogic({
		getUrl: "goform/getNAT",
		modules: "staticIPList,portList,ddns,dmz,upnp,lanCfg,macFilter,localhost,wifiRelay,onlineList",
		setUrl: "goform/setNAT"
	});

	pageModule.initEvent = function () {
		pageModule.update("ddns", 2e3, updateDDNSStatus);
	};

	function updateDDNSStatus(obj) {
		showConnectStatus(obj.ddns.ddnsStatus);
	}
	pageModule.modules = [];
	module.exports = pageModule;

	/*page control*/
	var pageModuleInit = new PageModuleInit();
	pageModule.modules.push(pageModuleInit);

	function PageModuleInit() {

		this.initValue = function () {
			var wifiRelayObj = pageModule.data.wifiRelay;
			if (wifiRelayObj.wifiRelayType == "ap" || wifiRelayObj.wifiRelayType == "client+ap") {
				$("#staticIPMapping, #protMapping, #ddnsConfig, #dmzHost, #upnp").addClass("none");

			}
		}
	}


	var macFilter = new MacFilterModule();
	pageModule.modules.push(macFilter);

	function MacFilterModule() {

		var firstInit;

		var _this = this;

		this.moduleName = "macFilter";

		this.initValue = function (macFilterObj) {
			//当前模式
			this.curFilterMode = "";
			//本机数据
			this.localhostObj = pageModule.data.localhost;
			//获取到的白名单列表是否为空
			this.passListEmpty = true;
			//在线列表数据
			this.onlineList = [];
			//选择白名单模式时列表（包含增删数据）
			this.passMacList = [];
			//选择白名单时，列表数据中在否包含了本机
			this.passMacListHasNative = false;
			//选择黑名单模式时的列表数据（包含增删数据）
			this.denyMacList = [];
			//是否已经添加过在线列表数据
			this.hasAddedOnlinelist = false;

			//对数据进行转换
			this.transDataList(macFilterObj);

			//模式赋值
			inputValue(macFilterObj);
			this.changeFilterMode();
		};

		this.transDataList = function (obj) {
			var i = 0;
			this.curFilterMode = obj.curFilterMode;
			this.localhostObj.mac = this.localhostObj.localhostMAC.toUpperCase();
			this.localhostObj.hostname = "";
			this.localhostObj.remark = "";
			//将在线列表数据
			this.onlineList = this.getOnlineList();

			//将获取到的黑白名单区分开来;
			for (i = 0; i < obj.macFilterList.length; i++) {
				if (obj.macFilterList[i].filterMode == "pass") {
					//获取到的白名单列表不为空;
					this.passListEmpty = false;
					//判断白名单中是否含有本机;
					if (obj.macFilterList[i].mac.toUpperCase() == this.localhostObj.mac.toUpperCase()) {
						_this.passMacListHasNative = true;
						obj.macFilterList[i].isNative = true;
					}
					this.passMacList.push(obj.macFilterList[i]);
				} else {
					this.denyMacList.push(obj.macFilterList[i]);
				}
			}

			if (!_this.passMacListHasNative) {
				_this.passMacList.unshift(_this.localhostObj);
			}
		}
		this.init = function () {
			this.initEvent();
		};

		this.initEvent = function () {
			$("input[name=curFilterMode]").on("click", _this.changeFilterMode);

			$("#macFilterHead").delegate(".pic-add", "click", _this.addMacFilterList);
			$("#macFilterBody").delegate(".pic-del", "click", _this.delMacFilterList);

			$("#macFilterBody").delegate(".addOnline", "click", function () {
				//表示已经点击过“添加在线列表功能
				_this.hasAddedOnlinelist = true;
				_this.passMacList = _this.passMacList.concat(_this.onlineList);
				_this.createMacFilterTable();
				$(this).parent().parent().remove();
			});
			//去掉备注栏
			$("#macFilterHead").delegate("#filterRemark", "keyup", function () {
				var deviceVal = this.value,
					len = deviceVal.length, //输入总字符数
					totalByte = getStrByteNum(deviceVal); //输入总字节数

				if (totalByte > 63) {
					for (var i = len - 1; i > 0; i--) {
						totalByte = totalByte - getStrByteNum(deviceVal[i]); //每循环一次，总字节数就减去最后一个字符的字节数，

						if (totalByte <= 63) { //直到总字节数小于等于63，i值就是边界值的下标
							this.value = deviceVal.slice(0, i);
							break;
						}
					}
				}
			});
		};

		//删除MAC地址
		this.delMacFilterList = function () {
			var mac = $(this).parent().parent().find(".mac").html(),
				i, key;
			var renderList = _this.curFilterMode == "pass" ? _this.passMacList : _this.denyMacList;

			for (i = 0; i < renderList.length; i++) {
				for (key in renderList[i]) {
					if (renderList[i]["mac"].toUpperCase() == mac) {
						renderList.splice(i, 1);
						break;
					}
				}
			}
			_this.createMacFilterTable();
		};

		this.changeFilterMode = function () {
			$("#filterMac").val('');
			$("#filterRemark").val('');

			var curFilterMode = $("[name=curFilterMode]:checked").val();
			if (curFilterMode == "deny") {
				$("#filterModeDesc").html(_("Blacklisted MAC Address"));
			} else {
				$("#filterModeDesc").html(_("Whitelisted MAC Address"));
			}
			_this.curFilterMode = curFilterMode;
			_this.createMacFilterTable();
		};

		this.checkData = function () {
			return;
		};

		this.getSubmitData = function () {
			var i = 0,
				data = {},
				tmpList = _this.curFilterMode == "pass" ? _this.passMacList : _this.denyMacList,
				tmpListLen = tmpList.length,
				tmpStr = "";

			//字符串组装
			for (i = 0; i < tmpListLen; i++) {
				tmpStr += tmpList[i].hostname + "\t";
				tmpStr += tmpList[i].remark + "\t";
				tmpStr += tmpList[i].mac + "\n";
			}
			tmpStr.replace(/[\n]$/, "");

			//提交对象
			var data = {
				module6: _this.moduleName,
				filterMode: _this.curFilterMode,
				macFilterList: tmpStr
			}
			return objToString(data);

		};

		this.createMacFilterTable = function () {

			//如果白名单列表中有本机，则将本机放在第一条
			for (var k = 0; k < _this.passMacList.length; k++) {
				if (_this.passMacList[k].mac.toUpperCase() == _this.localhostObj.mac.toUpperCase()) { //本机
					var tmp = _this.passMacList[k];
					_this.passMacList.splice(k, 1);
					_this.passMacList.unshift(tmp);
					break;
				}
			}

			var renderList = _this.curFilterMode == "deny" ? _this.denyMacList : _this.passMacList,
				len = renderList.length,
				i = 0,
				k = 0,
				renderStr;

			//表格重置
			$("#macFilterBody").html("");

			//数据渲染表格
			for (i = 0; i < len; i++) {
				renderStr = "";
				renderStr += "<tr class='listContent'>";
				renderStr += '<td class="span-fixed mac">' + renderList[i].mac.toUpperCase() + "</td>";
				renderStr += '<td class="span-fixed remark hidden-xs"></td>';

				//白名单中本机不能被删除；
				if (renderList[i].mac.toUpperCase() == _this.localhostObj.mac.toUpperCase()) {
					renderStr += "<td class='align-center'>" + _("Local") + "</td>";
				} else {
					renderStr += "<td class='align-center'><div class='picture pic-del'></div></td>";
				}

				renderStr += "</tr>";
				$("#macFilterBody").append(renderStr);
				$("#macFilterBody").find(".remark").text(renderList[i].remark);
				$("#macFilterBody").find(".remark").removeClass("remark");
			}

			//选择白名单模式&&获取的白名单列表为空&&未点击过添加在线列表时，显示“将当前在线设备...”
			if (_this.curFilterMode == "pass" && _this.passListEmpty && !_this.hasAddedOnlinelist) {
				$("#macFilterBody").append("<tr class='align-center'><td colspan='3' style='text-decoration:underline; color:#0070C9; cursor:pointer;'><span class='addOnline'>" + _("Whitelist all the online devices") + "</span></td></tr >");
			}
			top.mainLogic.initModuleHeight();

		};

		this.addMacFilterList = function () {
			var msg = macFilterValidate();
			if (msg) {
				mainLogic.showModuleMsg(msg);
				return;
			}
			var tmpObj = {
					"hostname": "",
					"remark": $("#filterRemark").val(),
					"mac": $("#filterMac").val().toUpperCase().replace(/\-/g, ":"),
					"filterMode": _this.curFilterMode
				},
				str;

			if (_this.localhostObj.mac.toUpperCase() == tmpObj.mac.toUpperCase() && _this.curFilterMode == "deny") {
				mainLogic.showModuleMsg(_("The MAC address of the local device cannot be blacklisted."));
				return;
			}

			$("#filterMac").val('');
			$("#filterRemark").val('');
			var renderList = _this.curFilterMode == "pass" ? _this.passMacList : _this.denyMacList;
			renderList.push(tmpObj);
			_this.createMacFilterTable();
			top.mainLogic.initModuleHeight();
		};

		this.getOnlineList = function () {
			var onlineList = pageModule.data.onlineList,
				tmpObj = {},
				tmpList = [];

			//对在线列表值进行转换
			for (var i = 0; i < onlineList.length; i++) {
				tmpObj = {
					"hostname": onlineList[i].qosListHostname,
					"mac": onlineList[i].qosListMac.toUpperCase(),
					"remark": onlineList[i].qosListRemark,
					"filterMode": "pass"
				};

				//在线列表中是否包含本机，找到本机并将本机从在线列表中剔除
				if (tmpObj.mac == pageModule.data.localhost.mac) {
					_this.localhostObj = tmpObj;
					continue;
				}
				tmpList.push(tmpObj);
			}
			//在线列表（未包含本机）
			return tmpList;
		};

		function macFilterValidate() {
			var mac = $("#filterMac").val();

			if (!(/^([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}$/).test(mac) && !(/^([0-9a-fA-F]{2}-){5}[0-9a-fA-F]{2}$/).test(mac)) {
				$("#filterMac").focus();
				return _("Please enter a valid MAC address.");
			}
			mac = mac.replace(/[-]/g, ":");
			var subMac1 = mac.split(':')[0];

			if (subMac1.charAt(1) && parseInt(subMac1.charAt(1), 16) % 2 !== 0) {
				$("#filterMac").focus();
				return _('The second character must be even number.');
			}
			if (mac === "00:00:00:00:00:00") {
				$("#filterMac").focus();
				return _('MAC can not be 00:00:00:00:00:00.');
			}

			var $listArry = $("#macFilterBody").find(".listContent"),
				len = $listArry.length,
				i = 0,
				listMac;

			for (i = 0; i < len; i++) {
				listMac = $listArry.eq(i).find(".mac").html();

				if (listMac.toUpperCase() == mac.toUpperCase()) {
					$("#filterMac").focus();
					return _("This MAC address is used. Please try another.");
				}
			}

			var maxItems = 10;
			if (_this.curFilterMode == "pass") {
				maxItems = 20;
			}
			if ($("#macFilterBody").find(".listContent").length >= maxItems) {
				return (_("A maximum of %s entries can be added.", [maxItems]));

			}
			return;
		}
	}
	/*
	 * @method staticModule [显示及设置静态IP地址]
	 */
	var staticModule = new StaticModule();
	pageModule.modules.push(staticModule);

	function StaticModule() {
		var that = this;

		this.moduleName = "staticIPList";

		this.init = function () {
			this.initEvent();
		};
		this.initEvent = function () {
			$("#staticHead").delegate(".pic-add", "click", addStaticList);
			$("#staticTbody").delegate(".pic-del", "click", delStaticList);
		};
		this.initValue = function (staticIPListArray) {
			var i = 0,
				len = staticIPListArray.length;

			//重置
			$("#staticIp, #staticMac").val("");
			$("#staticTbody").html("");

			//表格初始化
			for (i = 0; i < len; i++) {
				listStr = "";
				listStr += "<tr>";
				listStr += '<td class="span-fixed">' + staticIPListArray[i].staticIP + "</td>";
				listStr += '<td class="span-fixed">' + staticIPListArray[i].staticMac.toUpperCase() + "</td>";
				//listStr += '<td class="span-fixed remark"></td>';
				listStr += "<td class='align-center'><div class='picture pic-del'></div></td>";
				listStr += "</tr>";
				$("#staticTbody").append(listStr);
				//$("#staticTbody").find(".remark").text(staticIPListArray[i].staticRemark);
				//$("#staticTbody").find(".remark").removeClass("remark");
			}
		};

		this.checkData = function () {
			return;
		};
		this.getSubmitData = function () {
			//ap模式下与client+ap模式下不需要传wan值;
			if (pageModule.data.wifiRelay.wifiRelayType == "ap" || pageModule.data.wifiRelay.wifiRelayType == "client+ap") {
				return "";
			}

			var data = {
				module1: that.moduleName,
				staticList: getStaticValue()
			}
			return objToString(data);
		};

		function checkAddStaticValidate() {
			var staticIP = $("#staticIp").val(),
				mac = $("#staticMac").val(),
				lanCfgObj = pageModule.data.lanCfg,
				startIP = lanCfgObj.lanDhcpStartIP,
				endIP = lanCfgObj.lanDhcpEndIP,
				lanIP = lanCfgObj.lanIP,
				lanMask = lanCfgObj.lanMask;

			if (!(/^([1-9]|[1-9]\d|1\d\d|2[0-1]\d|22[0-3])\.(([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.){2}([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])$/).test(staticIP)) {
				$("#staticIp").focus();
				return _("Please enter a valid IP address.");
			}
			if (!checkIpInSameSegment(staticIP, lanMask, lanIP, lanMask)) {
				$("#staticIp").focus();
				return _("%s and %s must be in the same network segment.", [_("Static IP"), _("LAN IP")]);
			}

			var msg = checkIsVoildIpMask(staticIP, lanMask, _("Static IP Address"));
			if (msg) {
				$("#staticIp").focus();
				return msg;
			}

			if (staticIP == lanIP) {
				$("#staticIp").focus();
				return _("%s cannot be the same as the %s (%s).", [_("Static IP Address"), _("LAN IP Address"), lanIP]);
			}

			var ipArry = staticIP.split("."),
				sipArry = startIP.split("."),
				eipArry = endIP.split("."),
				ipNumber,
				sipNumber,
				eipNumber;
			ipNumber = parseInt(ipArry[0], 10) * 256 * 256 * 256 + parseInt(ipArry[1], 10) * 256 * 256 + parseInt(ipArry[2], 10) * 256 + parseInt(ipArry[3], 10);
			sipNumber = parseInt(sipArry[0], 10) * 256 * 256 * 256 + parseInt(sipArry[1], 10) * 256 * 256 + parseInt(sipArry[2], 10) * 256 + parseInt(sipArry[3], 10);
			eipNumber = parseInt(eipArry[0], 10) * 256 * 256 * 256 + parseInt(eipArry[1], 10) * 256 * 256 + parseInt(eipArry[2], 10) * 256 + parseInt(eipArry[3], 10);
			if (ipNumber < sipNumber || ipNumber > eipNumber) {
				$("#staticIp").focus();
				return _("The IP address must be included in the address pool of DHCP.");
			}

			if (!(/^([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}$/).test(mac) && !(/^([0-9a-fA-F]{2}-){5}[0-9a-fA-F]{2}$/).test(mac)) {
				$("#staticMac").focus();
				return _("Please enter a valid MAC address.");
			}
			mac = mac.replace(/[-]/g, ":");
			var subMac1 = mac.split(':')[0];

			if (subMac1.charAt(1) && parseInt(subMac1.charAt(1), 16) % 2 !== 0) {
				$("#staticMac").focus();
				return _('The second character must be even number.');
			}
			if (mac === "00:00:00:00:00:00") {
				$("#staticMac").focus();
				return _('MAC can not be 00:00:00:00:00:00.');
			}

			var $listArry = $("#staticTbody").children(),
				len = $listArry.length,
				i = 0,
				listMac,
				listIp;
			for (i = 0; i < len; i++) {
				listIp = $listArry.eq(i).children().eq(0).html();
				listMac = $listArry.eq(i).children().eq(1).html();
				if (staticIP == listIp) {
					$("#staticIp").focus();
					return _("This IP address is used. Please try another.");
				}
				if (listMac.toUpperCase() == mac.toUpperCase()) {
					$("#staticMac").focus();
					return _("This MAC address is used. Please try another.");
				}
			}
			if ($("#staticTbody").children().length >= 20) {
				return (_("A maximum of %s entries can be added.", [20]));

			}
			return;
		}

		function delStaticList() {
			$(this).parent().parent().remove();
			top.mainLogic.initModuleHeight();
		}

		function addStaticList() {
			var msg = checkAddStaticValidate(),
				str;
			if (msg) {
				mainLogic.showModuleMsg(msg);
				return;
			}
			str = "<tr>";
			str += '<td class="span-fixed">' + $("#staticIp").val() + "</td>";
			str += '<td class="span-fixed">' + $("#staticMac").val().replace(/[-]/g, ":").toUpperCase() + "</td>";
			//str += '<td class="span-fixed">' + $("#staticRemark").val() + "</td>";
			str += "<td class='align-center'><div class='picture pic-del'></div></td>";
			str += "</tr>";
			$("#staticTbody").append(str);
			$("#staticIp").val('');
			$("#staticMac").val('');
			//$("#staticRemark").val('');
			top.mainLogic.initModuleHeight();
		}

		function getStaticValue() {
			var str = "",
				i = 0,
				$staticArry = $("#staticTbody").children(),
				length = $staticArry.length;


			for (i = 0; i < length; i++) {
				str += $staticArry.eq(i).children().eq(0).html() + "\t";
				str += $staticArry.eq(i).children().eq(1).html().toUpperCase() + "\t";
				str += $staticArry.eq(i).children().eq(2).text() + "\t";
				str += "\n";
			}
			str = str.replace(/[\n]$/, "");

			var msg = checkAddStaticValidate();
			//判断没有错误时
			if (!msg) {
				if (str != "") {
					str += "\n" + $("#staticIp").val() + "\t";
				} else {
					str += $("#staticIp").val() + "\t";
				}
				str += $("#staticMac").val().replace(/[-]/g, ":");
				//str += $("#staticRemark").val();

				$("#staticIp").val('');
				$("#staticMac").val('');
				//$("#staticRemark").val('');
			} else { //验证添加数据错误时
				$("#staticIp")[0].blur();
				$("#staticMac")[0].blur();
			}
			return str;
		}
	}

	/**********END static IP***********/

	/*
	 * 显示及设置端口映射列表数据的模块
	 * @method portMap
	 * @param {Array} portListArray 从后台获取的端口映射列表数据
	 * @return {无}
	 */
	var portMap = new PortMapModule();
	pageModule.modules.push(portMap);

	function PortMapModule() {
		var that = this;

		this.moduleName = "portList";
		this.init = function () {
			this.initHtml();
			this.initEvent();
		};
		this.initHtml = function () {
			var selectObj = {
				"initVal": "21",
				"editable": "1",
				"size": "small",
				"seeAsTrans": true,
				"options": [{
					"21": "21 (FTP)",
					"23": "23 (TELNET)",
					"25": "25 (SMTP)",
					"53": "53 (DNS)",
					"80": "80 (HTTP)",
					"1723": "1723 (PPTP)",
					"3389": _("3389 (Remote Desktop)"),
					"9000": "9000",
					"9001": "9001",
					".divider": ".divider",
					".hand-set": _("Manual")
				}]
			};
			$("#internalPort").toSelect(selectObj);
			$("#externalPort").val("21");
			/*var selectObj1 = {
				"initVal": _("All IP Addresses"),
				"editable": "1",
				"seeAsTrans": true,
				"size": "small",
				"options": [{
					"All": _("All IP Addresses"),
					".divider": ".divider",
					".hand-set": _("Manual")
				}]
			};
			$("#externalIP").toSelect(selectObj1);*/
		}
		this.initEvent = function () {

			$.validate.valid.ddns = function (str) {
				var ret;
				ret = $.validate.valid.ascii(str);
				if (ret) {
					return ret;
				}
				ret = $.validate.valid.remarkTxt(str, ";");
				if (ret) {
					return ret;
				}
			};
			$("#portHead").delegate(".pic-add", "click", addPortList);
			$("#portTbody").delegate(".pic-del", "click", delPortList);

			/******添加事件，只能输入数字******/
			$("#internalPort .input-box, #externalPort").on("keyup", function () {
				this.value = (parseInt(this.value, 10) || "")
			});

			$("#internalPort .input-box, #externalPort").on("blur", function () {
				this.value = (parseInt(this.value, 10) || "")
			});

			/*******添加事件，选择下拉框时，将外网端口与内网端口相同*******/
			$("#internalPort.input-append ul li").on("click", function (e) {

				$("#externalPort")[0].value = $(this).attr("data-val") == ".hand-set" ? $("#externalPort").val() : $(this).attr("data-val");
			});
		};

		//初始化数据列表
		this.initValue = function (portListArray) {
			//inputValue(obj);
			var listArry = portListArray,
				len = listArry.length,
				i = 0,
				str = "";

			//重置;
			$("#internalIP").val("");
			$("#internalPort input[type=text]").val("21");
			$("#internalPort input[type=hidden]").val("21");
			$("#externalPort").val("21");
			$("#protocol").val("both");
			$("#portTbody").html("");

			//初始化表格
			for (i = 0; i < len; i++) {
				//outIp = listArry[i].portListExtranetIP;
				//if (outIp == "0.0.0.0" || outIp == "All") {
				//outIp = _("All IP Addresses");
				//}
				str += "<tr>";
				str += "<td>" + listArry[i].portListIntranetIP + "</td>";
				str += "<td>" + listArry[i].portListIntranetPort + "</td>";
				//str += "<td>" + outIp + "</td>";
				str += "<td>" + listArry[i].portListExtranetPort + "</td>";
				str += "<td data-val='" + listArry[i].portListProtocol + "'>" + $("#protocol [value='" + listArry[i].portListProtocol + "']").html() + "</td>";
				str += "<td class='align-center'><div class='picture pic-del' title='" + _("Delete") + "'></div></td>";
				str += "</tr>";
			}
			$("#portTbody").html(str);
		};

		this.checkData = function () {
			return;
		};

		this.getSubmitData = function () {
			//ap模式下与client+ap模式下不需要传值;
			if (pageModule.data.wifiRelay.wifiRelayType == "ap" || pageModule.data.wifiRelay.wifiRelayType == "client+ap") {
				return "";
			}

			var data = {
				module2: that.moduleName,
				portList: getPortListValue()
			};
			return objToString(data);
		}

		/*******检查添加时的数据合法性*******/
		function checkAddListValidate() {
			var inIp = $("#internalIP").val(),
				inPort = $("#internalPort")[0].val(),
				//outIp = $("#externalIP")[0].val(),
				outPort = $("#externalPort").val(),
				lanIP = pageModule.data.lanCfg.lanIP,
				lanMask = pageModule.data.lanCfg.lanMask;
			var i = 0,
				k = 0,
				portArry = $("#portTbody").children(),
				length = portArry.length,
				existExternalPort = "";

			for (k = 0; k < length; k++) {
				existExternalPort = portArry.eq(k).children().eq("2").html();
				if (outPort == existExternalPort) {
					return _("The external port %s already exists.", [outPort]);
				}
				//existExternalPortArr.push(portArry.eq(k).children().eq("2").html());
			}


			//判断IP地址合法性
			if (!(/^([1-9]|[1-9]\d|1\d\d|2[0-1]\d|22[0-3])\.(([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.){2}([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])$/).test(inIp)) {
				$("#internalIP").focus();
				return _("Please enter a valid IP address.");
			}

			if (!checkIpInSameSegment(inIp, lanMask, lanIP, lanMask)) {
				$("#internalIP").focus();
				return _("%s and %s must be in the same network segment.", [_("Internal IP Address"), _("LAN IP Address")]);
			}

			var msg = checkIsVoildIpMask(inIp, lanMask, _("Internal IP Address"));
			if (msg) {
				$("#internalIP").focus();
				return msg;
			}

			if (inIp == lanIP) {
				return (_("The internal IP address cannot be the same as the login IP address (%s).", [lanIP]));
			}

			if (inPort == "" || parseInt(inPort, 10) > 65535 || parseInt(inPort, 10) < 1) {
				$("#internalPort").find(".input-box").focus();
				return (_("Internal port range: 1-65535"));

			}

			/*if ($.trim(outIp) == _("All IP Addresses")) {
				outIp = "All";
			}

			//判断IP地址合法性
			if (outIp == "All") {

			} else {
				if (!(/^([1-9]|[1-9]\d|1\d\d|2[0-1]\d|22[0-3])\.(([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.){2}([0-9]|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])$/).test(outIp)) {
					$("#externalIP").find(".input-box").focus();
					return _("Please enter a valid IP address.");
				}
			}*/

			if (outPort == "" || parseInt(outPort, 10) > 65535 || parseInt(outPort, 10) < 1) {
				$("#externalPort").focus();
				return (_("External Port Range: 1-65535"));
			}

			if ($("#portTbody").children().length >= 16) {
				return (_("A maximum of %s entries can be added.", [16]));

			}

			return;
		}

		function addPortList() {
			var str = "";
			var inIp = $("#internalIP").val(),
				inPort = $("#internalPort")[0].val(),
				//outIp = $("#externalIP")[0].val(),
				outPort = $("#externalPort").val(),
				protocol = $("#protocol").val();
			var msg = checkAddListValidate();
			if (msg) {
				mainLogic.showModuleMsg(msg);
				return;
			}

			/*if ($.trim(outIp) == "All") {
				outIp = _("All IP Addresses");
			}*/

			str += "<tr>";
			str += "<td>" + inIp + "</td>";
			str += "<td>" + inPort + "</td>";
			//str += "<td>" + $.trim(outIp) + "</td>";
			str += "<td>" + outPort + "</td>";
			str += "<td data-val='" + protocol + "'>" + $("#protocol option:selected").html() + "</td>";
			str += "<td class='align-center'><div class='picture pic-del'></div></td>";
			str += "</tr>";
			$("#portTbody").append(str);
			$("#internalIP").val('');
			top.mainLogic.initModuleHeight();
		}

		/******获取table表格提交的字符串*********/
		function getPortListValue() {
			var str = "",
				i = 0,
				$portArry = $("#portTbody").children(),
				length = $portArry.length;

			var inIp = $("#internalIP").val(),
				inPort = $("#internalPort")[0].val(),
				//outIp = $("#externalIP")[0].val(),
				outPort = $("#externalPort").val(),
				protocol = $("#protocol").val();

			for (i = 0; i < length; i++) {
				str += $portArry.eq(i).children().eq(0).html() + ";";
				str += $portArry.eq(i).children().eq(1).html() + ";";
				//exclude External IP
				/*if ($portArry.eq(i).children().eq(2).html() == _("All IP Addresses")) {
					str += "All" + ";";
				} else {
					str += $portArry.eq(i).children().eq(2).html() + ";";
				}*/

				str += $portArry.eq(i).children().eq(2).html() + ";";
				str += $portArry.eq(i).children().eq(3).attr("data-val");
				str += "~";
			}
			str = str.replace(/[~]$/, "");

			var msg = checkAddListValidate();

			/*if ($.trim(outIp) == _("All IP Addresses")) {
				outIp = "All";
			}*/
			//判断合法时
			if (!msg) {
				if (str != "") {
					str += "~" + inIp + ";" + inPort + ";" + /*outIp + ";" + */ outPort + ";" + protocol;
				} else {
					str += inIp + ";" + inPort + ";" + /*outIp + ";" +*/ outPort + ";" + protocol;
				}
				$("#internalIP").val('');
			} else {
				$("#internalIP")[0].blur();
				//$("#externalIP").find(".input-box")[0].blur();
				$("#externalPort")[0].blur();
				$("#internalPort").find(".input-box")[0].blur();
			}

			return str;
		}

		function delPortList() {
			$(this).parent().parent().remove();
			top.mainLogic.initModuleHeight();
		}
	}

	/********END  Port Forwarding******************/



	/*
	 * 显示及设置DMZ数据的模块
	 * @method dmzModule
	 * @param {Object} dmzObj 从后台获取的端口映射列表数据
	 * @return {无}
	 */
	var dmzModule = new DmzModule();
	pageModule.modules.push(dmzModule);

	function DmzModule() {
		var that = this;
		this.moduleName = "dmz";

		this.init = function () {
			this.initEvent();
		};
		this.initEvent = function () {
			$("input[name='dmzEn']").on("click", changeDmzEn);
		};
		this.initValue = function (dmzObj) {

			//重置
			$("#dmzHostIP").removeValidateTipError(true);

			$("input[name='dmzEn'][value='" + dmzObj.dmzEn + "']")[0].checked = true;
			$("#dmzHostIP").val(dmzObj.dmzHostIP || "");
			changeDmzEn();
		};
		this.checkData = function () {
			//client+ap模式及ap模式下没有DMZ功能，不需要进行验证；
			if (pageModule.data.wifiRelay.wifiRelayType == "ap" || pageModule.data.wifiRelay.wifiRelayType == "client+ap") {
				return;
			}

			var dmzIP = $("#dmzHostIP").val(),
				lanIP = pageModule.data.lanCfg.lanIP,
				lanMask = pageModule.data.lanCfg.lanMask;
			if ($("input[name='dmzEn']")[0].checked) {
				//判断IP地址合法性
				if (!checkIpInSameSegment(dmzIP, lanMask, lanIP, lanMask)) {
					$("#dmzHostIP").focus();
					return _("%s and %s must be in the same network segment.", [_("Host IP Address"), _("LAN IP Address")]);
				}

				var msg = checkIsVoildIpMask(dmzIP, lanMask, _("Host IP Address"));
				if (msg) {
					$("#dmzHostIP").focus();
					return msg;
				}

				if (dmzIP == lanIP) {
					return _("The DMZ host IP address cannot be the same as the login IP address (%s).", [lanIP]);
				}
			}
			return;
		};
		this.getSubmitData = function () {
			//ap模式下与client+ap模式下不需要传wan值;
			if (pageModule.data.wifiRelay.wifiRelayType == "ap" || pageModule.data.wifiRelay.wifiRelayType == "client+ap") {
				return "";
			}

			var data = {
				module3: that.moduleName,
				dmzEn: $("input[name='dmzEn']:checked").val(),
				dmzHostIP: $("#dmzHostIP").val()
			}
			return objToString(data);
		};

		function changeDmzEn() {
			var dmzEn = $("input[name='dmzEn']:checked").val();
			if (dmzEn == "true") {
				$("#dmzWrap").removeClass("none");
			} else {
				$("#dmzWrap").addClass("none");
			}
			top.mainLogic.initModuleHeight();
		}
	}

	/*********END dmz*****/

	/*
	 * 显示及设置DDNS模块的数据
	 * @method ddnsModule
	 * @param {Object} ddnsObj 从后台获取的ddns数据
	 * @return {无}
	 */
	var ddnsModule = new DdnsModule();
	pageModule.modules.push(ddnsModule);

	function DdnsModule() {
		var that = this;
		this.moduleName = "ddns";
		this.data = {};
		this.init = function () {
			this.initEvent();
		};
		this.initEvent = function () {
			$("input[name='ddnsEn']").on("click", this.changeDdnsEn);
			$("#ddnsServiceName").on("change", this.changeDdnsServiceName);
			$("#register").on("click", function () {
				var url = $("#ddnsServiceName").val();
				window.open("http://" + url);
			});

			this.addInputEvent = false;
		};
		this.initValue = function (ddnsObj) {

			$("#ddnsUser, #ddnsPwd, #ddnsServer").removeValidateTipError(true);
			this.data = ddnsObj;
			//连接状态与联网状态的英文表述一致
			if ($('html').hasClass("lang-cn")) {
				$("#ddnsConnectionStatusInfo").html("连接状态");
			}

			//设置密码框为聚焦明文，失去焦点密文形式
			if (!this.addInputEvent) {
				$("#ddnsPwd").initPassword();
				this.addInputEvent = true;
			}

			inputValue(this.data);
			showConnectStatus(ddnsObj.ddnsStatus);
			this.changeDdnsEn();

			var ddnsServiceName = $("#ddnsServiceName").val();

			if (ddnsServiceName == "3322.org" || ddnsServiceName == "no-ip.com" || ddnsServiceName == "dyn.com") {
				$("#ddnsDomain").removeClass("none");
			} else {
				$("#ddnsDomain").addClass("none");
			}
		};
		this.checkData = function () {
			return;
		};
		this.getSubmitData = function () {
			//ap模式下与client+ap模式下不需要传wan值;
			if (pageModule.data.wifiRelay.wifiRelayType == "ap" || pageModule.data.wifiRelay.wifiRelayType == "client+ap") {
				return "";
			}

			var data = {
				module4: that.moduleName,
				ddnsEn: $("input[name='ddnsEn']:checked").val(),
				ddnsServiceName: $("#ddnsServiceName").val(),
				ddnsServer: $("#ddnsServer").val(),
				ddnsUser: $("#ddnsUser").val(),
				ddnsPwd: $("#ddnsPwd").val()
			}
			return objToString(data);
		};

		this.changeDdnsServiceName = function () {
			var domainName = $("#ddnsServiceName").val();
			$("#ddnsUser, #ddnsPwd, #ddnsServer").removeValidateTipError(true);

			if (domainName == that.data.ddnsServiceName) {
				$("#ddnsUser").val(that.data.ddnsUser);
				$("#ddnsPwd").val(that.data.ddnsPwd);
				$("#ddnsServer").val(that.data.ddnsServer);
			} else {
				$("#ddnsUser").val("");
				$("#ddnsPwd").val("");
			}

			if (domainName == "3322.org" || domainName == "no-ip.com" || domainName == "dyn.com") {
				$("#ddnsDomain").removeClass("none");
			} else {
				$("#ddnsDomain").addClass("none");
			}
			top.mainLogic.initModuleHeight();
		};

		this.changeDdnsEn = function () {
			var ddnsEn = $("input[name='ddnsEn']:checked").val();
			if (ddnsEn == "true") {
				$("#ddnsWrap").removeClass("none");
			} else {
				$("#ddnsWrap").addClass("none");
			}
			top.mainLogic.initModuleHeight();
		}
	}

	function showConnectStatus(status) {
		var str = "",
			strArr;
		if ($('html').hasClass("lang-cn")) {
			stArr = {
				Disconnected: "未连接",
				Connectting: "连接中",
				Connected: "已连接"
			};
		} else {
			stArr = {
				Disconnected: _("Disconnected"),
				Connectting: _("Connecting"),
				Connected: _("Connected")
			};
		}

		if (status == "Connected") {
			str = "text-success";
		} else if (status == "Connectting") {
			str = "text-primary";
		} else {
			str = "text-danger";
		}

		$("#ddnsStatus").attr("class", str).html(stArr[status]);
	}

	/******END ddns*******/

	/*
	 * 显示及设置UPNP模块的数据
	 * @method upnpModule
	 * @param {Object} upnpObj 从后台获取的ddns数据
	 * @return {无}
	 */
	var upnpModule = new UpnpModule();
	pageModule.modules.push(upnpModule);

	function UpnpModule() {
		var that = this;

		this.moduleName = "upnp";
		this.init = function () {
			this.initEvent();
		};
		this.initEvent = function () {

		};
		this.initValue = function (upnpObj) {
			inputValue(upnpObj);
		};
		this.checkData = function () {
			return;
		}
		this.getSubmitData = function () {
			//ap模式下与client+ap模式下不需要传wan值;
			if (pageModule.data.wifiRelay.wifiRelayType == "ap" || pageModule.data.wifiRelay.wifiRelayType == "client+ap") {
				return "";
			}

			var data = {
				module5: that.moduleName,
				upnpEn: $("input[name='upnpEn']:checked").val()
			};
			return objToString(data);
		}
	}

	/*********END upnp*******/
})
