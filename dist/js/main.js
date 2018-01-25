/*import './status/status.tpl';
import './status/js/status.js';*/

import '../common/sass/reasyui/reasyui.scss';
import '../modules/main/sass/index.scss';
/*import '../common/lang/b28n.js';
import '../common/js/j.js';
import '../common/js/reasy-ui-1.0.3.js';*/
//var common =  require('../common/js/common.js');
//import js from '../common/js/common.js'
//搬运不需打包的文件
require('../../build-file.config.js');

//宏控制项
//根据不同打包情况修改一下语言配置项即可
window.CONFIG_HASWPS = false;
window.LANGUAGE = {
      cn:"cn",
      other:"other"
    };
window.CONFIG_HASSYSTIME = false;
window.CONFIG_SUPPORT_LANG = false;
window.CONFIG_LANG = false;

$("body").addClass("index-body");
