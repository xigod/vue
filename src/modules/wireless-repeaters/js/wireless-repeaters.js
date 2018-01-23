define(function (require, exports, module) {
    var pageModule = new PageLogic({
        getUrl: "goform/getWifiRelay",
        modules: "wifiBasicCfg,wifiRelay",
        setUrl: "goform/setWifiRelay"
    });
    pageModule.modules = [];
    pageModule.rebootIP = location.host;
    module.exports = pageModule;
    pageModule.preMode = "";
    pageModule.currentMode = "disabled";



    /************wireless repeating************************/
    var wifiRepeatModule = new WifiRepeatModule();
    pageModule.modules.push(wifiRepeatModule);

    function WifiRepeatModule() {
        var subObj = {};

        this.moduleName = "wifiRelay";

        this.init = function () {
            this.initEvent();
        }
        this.initEvent = function () {
            $("#refreshTable").on("click", scanWifi);
            $("#wifiScan").delegate(".selectSSID", "click", changeSSID);
            $("input[name='wifiRelayType']").on("click", changeMode);
        };
        this.initValue = function (wifiRelayobj) {
            pageModule.preMode = wifiRelayobj.wifiRelayType;
            inputValue(wifiRelayobj);
            $("#wifiRelaySSID").html("<p class='form-control-static'></p>");
            $("#wifiRelaySSID p").text(wifiRelayobj.wifiRelaySSID);

            if (!(pageModule.data.wifiBasicCfg.wifiEn == "true" || pageModule.data.wifiBasicCfg.wifiEn_5G == "true")) { //未启用无线
                $("[name='wifiRelayType']")[0].checked = true;
                $("[name='wifiRelayType']").attr("disabled", true);
            }
            showConnectStatus(wifiRelayobj.wifiRelayConnectStatus);

            subObj = { //初始化
                wifiRelaySSID: wifiRelayobj.wifiRelaySSID,
                wifiRelayMAC: wifiRelayobj.wifiRelayMAC,
                wifiRelaySecurityMode: wifiRelayobj.wifiRelaySecurityMode,
                wifiRelayChannel: wifiRelayobj.wifiRelayChannel
            };
            changeMode();
            showWifiPwd(wifiRelayobj.wifiRelaySecurityMode);
        }
        this.checkData = function () {
            var workMode = $("input[name='wifiRelayType']:checked").val() || "disabled",
                wifiPwd = $("#wifiRelayPwd").val();
            var ssid = $("#wifiRelaySSID").children(0).val() || $("#wifiRelaySSID").children(0).text();

            if (!ssid && workMode != "disabled" && workMode != "ap") {
                return _("Please select a WiFi name.");
            }

            if (workMode != "disabled" && workMode != "ap" && !$.isHidden($("#wifiRelayPwd")[0])) {
                if (wifiPwd != "") {
                    if (!(/^[0-9a-fA-F]{8,64}$/.test(wifiPwd) || /^[ -~]{8,63}$/.test(wifiPwd))) {
                        $("#wifiRelayPwd").focus();
                        return _("The password of base station router must contain 8~63 ASCII, or 64 HEX.");
                    }
                } else {
                    $("#wifiRelayPwd").focus();
                    return _("The password of base station router must contain 8~63 ASCII, or 64 HEX.");
                }
            }
            return;
        };

        this.getSubmitData = function () {

            var ssid = $("#wifiRelaySSID").children(0).val();
            subObj.module1 = this.moduleName;
            if (ssid) {
                subObj.wifiRelaySSID = $("#wifiRelaySSID").children().val();
            }

            subObj.wifiRelayPwd = $("#wifiRelayPwd").val();
            subObj.wifiRelayType = $("input[name='wifiRelayType']:checked").val();

            //转换传后台的值
            if (subObj.wifiRelaySecurityMode == _("None")) {
                subObj.wifiRelaySecurityMode = "none";
            } else {
                subObj.wifiRelaySecurityMode = subObj.wifiRelaySecurityMode.toLowerCase();
            }
            return objToString(subObj);
        };

        /********扫描初始化***********/
        function scanWifi() {
            var list = [];
            $("#refreshTable").addClass("none");
            $("#loading").removeClass("none");

            $("#wifiScan").find("table").addClass("none"); //扫描时隐藏表格
            $.getJSON("goform/getWifiRelay" + getRandom() + "&modules=wifiScan", function (obj) {
                try {
                    var test = obj.wifiScan.length;
                } catch (e) {
                    obj.wifiScan = [];
                }
                $("#loading").addClass("none");
                $("#refreshTable").removeClass("none");
                list = reSort(obj.wifiScan);
                createTable(list);
                $("#wifiScan").find("table").removeClass("none");
                top.mainLogic.initModuleHeight();
            });

            //扫描时增加2s遮盖层
            addOverLay(1000);
        }


        function showConnectStatus(status) {
            var str = "",
                stObj = {
                    "disconnect": _("Disconnected"),
                    "bridgeSuccess": _("Bridged successfully."),
                    "pwdError": _("Password error.")
                };

            if (status == "disconnect") { //未连接
                str = "text-primary";
            } else if (status == "bridgeSuccess") { //中继成功
                str = "text-success";
            } else { //错误; pwdError
                str = "text-danger";
            }

            $("#wifiRelayStatus").attr("class", str).html(stObj[status]);
        }

        function sortNumber(a, b) {
            return a - b;
        }

        function reSort(arry) {
            var listArry = arry,
                len = listArry.length,
                i = 0,
                strength,
                propArry = [], //临时存放信号强度数组
                sortArry = [], //最后返回的数组
                newArry = []; //存放排序后的数组

            for (i = 0; i < len; i++) {
                if ((+listArry[i].wifiScanSignalStrength) > 0) {
                    listArry[i].wifiScanSignalStrength = 0 - (+listArry[i].wifiScanSignalStrength);
                }
                propArry.push(listArry[i].wifiScanSignalStrength);
            }

            newArry = propArry.sort(sortNumber);
            for (i = 0; i < len; i++) {
                for (var j = 0; j < listArry.length; j++) {
                    if (newArry[i] == listArry[j].wifiScanSignalStrength) { // 排序好的元素中寻找原obj元素
                        sortArry.push(listArry[j]); //重新排序后的obj
                        listArry.splice(j, 1); //  去掉已经找到的；
                        break;
                    }
                }
            }
            return sortArry.reverse();
        }

        /**********初始化ssid表格**************/
        function createTable(arry) {
            var trElem, tdElem,
                i = 0,
                len = arry.length,
                signal,
                signalClass,
                prop;
            if (!pageModule.pageRunning) {
                return;
            }
            if (len == 0) {
                $("#wifiScanTbody").html('<tr><td colspan="3" class="text-danger">' + _("SSID scanning timed out.") + '</td></tr>');
                return;
            }

            $("#wifiScanTbody").html("");
            for (i = 0; i < len; i++) {
                trElem = document.createElement("tr");
                tdElem = document.createElement("td");
                tdElem.innerHTML = "<input type='radio' name='selectSSID' class='selectSSID'>";
                trElem.appendChild(tdElem);
                for (prop in arry[i]) {
                    tdElem = document.createElement("td");

                    if (prop == "wifiScanMAC" || prop == "wifiScanChannel" ||
                        prop == "wifiScanSecurityMode") {
                        tdElem.className = "span-fixed hidden-xs";
                    } else {
                        tdElem.className = "span-fixed";
                    }

                    if (prop != "wifiScanSignalStrength") {
                        var secuModeText = arry[i][prop];
                        if (prop == "wifiScanSecurityMode") {
                            //none时需要翻译
                            if (arry[i][prop].toLowerCase() == "none") {
                                secuModeText = _("None");
                            } else { //转换成大写显示
                                secuModeText = arry[i][prop].toUpperCase();
                            }
                        }

                        if (typeof tdElem.innerText != "undefined") {
                            tdElem.innerText = secuModeText;
                        } else { //firefox
                            tdElem.textContent = secuModeText;
                        }

                        if (prop == "wifiScanSSID") {
                            $(tdElem).attr("data-title", arry[i][prop]);
                        }

                    } else {
                        signal = (+arry[i][prop]);
                        if (signal > -60) {
                            signalClass = "signal_4";
                        } else if (signal <= -60 && signal > -70) {
                            signalClass = "signal_3";
                        } else if (signal <= -70 && signal > -80) {
                            signalClass = "signal_2"
                        } else {
                            signalClass = "signal_1"
                        }

                        tdElem.innerHTML = "<div class='signal " + signalClass + "'><span style='position:relative;left:21px;top:3px;'>" + translatSignal(signal) + "</span></div>";

                    }
                    trElem.appendChild(tdElem);
                }
                if (document.getElementById("wifiScanTbody")) {
                    document.getElementById("wifiScanTbody").appendChild(trElem);
                }
            }
        }

        /***********信号转换函数***********/
        function translatSignal(percent) {
            var newPer = 0;
            if (percent >= -30) {
                newPer = "100%";
            } else if (percent >= -45) {
                newPer = Math.round(100 - (-30 - percent) / 1.5) + "%";
            } else if (percent >= -55) {
                newPer = 90 - (-45 - percent) * 2 + "%";
            } else if (percent >= -70) {
                newPer = 70 - (-55 - percent) * 2 + "%";
            } else if (percent >= -85) {
                newPer = 40 - (-70 - percent) * 2 + "%";
            } else if (percent >= -95) {
                newPer = 10 - (-85 - percent) + "%"
            } else {
                newPer = "0%"
            }
            return newPer;
        }


        /******是否显示密码框*******/
        function showWifiPwd(security) {
            if (security == _("None") || security.toLowerCase() == "none") {
                $("#wifiRelayPwdWrap").addClass("none");
            } else {
                $("#wifiRelayPwdWrap").removeClass("none");
            }
            top.mainLogic.initModuleHeight();
        }



        /*******选择ssid******/
        function changeSSID() {
            var $parent = $(this).parent().parent();
            var ssid = $parent.children().eq(1).attr("data-title"),
                mac = $parent.children().eq(2).html(),
                channel = $parent.children().eq(3).html(),
                security = $parent.children().eq(4).html(),
                signalStrength = $parent.children().eq(5).find('span').html();

            if (+(signalStrength.replace(/[%]/, "")) < 40) {
                top.mainLogic.showModuleMsg(_("The signal strength of the remote wireless network is weak and the wireless bridge may be stopped. Place the router at a location with better signal strength."));
            }

            $("#wifiRelayPwd").val("");
            if (ssid == "") {
                $("#wifiRelaySSID").html('<input type="text" maxlength="32" placeholder="' + _("WiFi name of the upstream router") + '" class="form-control validatebox" data-options="{\'type\': \'ssid\'}" />');
                $("#wifiRelaySSID input").val(ssid);
            } else {

                $("#wifiRelaySSID").html('<p class="form-control-static"></p>');
                $("#wifiRelaySSID p").text(ssid).attr("data-title", ssid);
            }

            subObj = { //选择时更新提交数据
                wifiRelaySSID: ssid,
                wifiRelayMAC: mac,
                wifiRelaySecurityMode: security,
                wifiRelayChannel: channel
            }
            showWifiPwd(security);

            window.scrollTo(0, 0);
            if (security !== _("None")) {
                $("#wifiRelayPwd").focus();
            }

        }

        /*********改变模式************/
        function changeMode() {
            var securityMode = $("input[name='wifiRelayType']:checked").val() || "disabled";

            $("#apInfo").addClass("none");
            if (securityMode === "disabled" || securityMode === "ap") {
                $("#content").hide();
                $("#wifiScan").hide();
                if (securityMode == "ap") {
                    $("#apInfo").removeClass("none");
                }
            } else {
                scanWifi();
                $("#content").show();
                $("#wifiScan").show();
            }
            top.mainLogic.initModuleHeight();
        }
    }
    /************END wireless repeating************************/
})