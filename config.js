var fs = require("fs"),
    filePath = "./src/langSet.js";

//多国语言配置项
//根据不同打包情况修改一下语言配置项即可
var LANGUAGE = {
      cn:"cn",
      other:"other"
    },
    //是否包含WPS功能
    // CONFIG_HASWPS = true,
    CONFIG_HASWPS = false,
    //是否包含时区设置功能
    // CONFIG_HASSYSTIME = true,
    CONFIG_HASSYSTIME = false,
    //编译版本所支持语言项，数组
    // CONFIG_SUPPORT_LANG = '["en","zh","de","es","fr","hu","it","ko","pl","pt","ro","tr"]',
    CONFIG_SUPPORT_LANG = '["cn"]',
    //编译的语言包版本，针对于中英文对应不同的select选项
    // CONFIG_LANG = LANGUAGE.other;
    CONFIG_LANG = LANGUAGE.cn;

//加载配置项写入语言信息
try{
  var wOption = {
    flags: 'a',
    encoding: 'utf-8'
  }

  var data = 'b28Cfg.supportLang = ' + CONFIG_SUPPORT_LANG + ';';
  data += 'b28Cfg.defaultLang = "en";';
  data += 'window.CONFIG_HASWPS = ' + CONFIG_HASWPS + ';';
  data += 'window.CONFIG_HASSYSTIME = ' + CONFIG_HASSYSTIME + ';';

  fs.writeFileSync(filePath, data, wOption, function(err){
    if (err) {
         return console.error(err);
     }
    console.log("数据写入成功！");
  });
}
catch(e){
    console.log('\r\n', e, '\r\n', e.stack);
}

//配置需要编译的目录
var cfg = {
    exclude: ['**/_*.scss', '**/tpl/**'],
    define: {
        "tplExt": "html",
        "product": "wifi",
        "brand": "Tenda",
        "CONFIG_HASWPS": CONFIG_HASWPS,
        "CONFIG_HASSYSTIME": CONFIG_HASSYSTIME,
        //编译版本语言
        "CONFIG_LANG":CONFIG_LANG,
        "website": "http://tenda.com.cn/",

        "modules/": {
            "login/login.tpl": {
                "multiLang": true,
                "title": "Tenda | LOGIN",
                "stylesheets": [
                    "./sass/login.scss"
                ],
                "scripts": [
                    "./js/login.js"
                ]
            },

            "diagnose/network-diagnose.tpl": {
                "title": "Tenda | diagnose",
                "stylesheets": [
                    "../login/sass/login.scss", "../main/sass/index.scss"
                ],
                "scripts": [
                    "./js/network-diagnose.js"
                ]
            },
            "quickset/quickset.tpl": {
                "title": "Tenda Wizard",
                "stylesheets": ["./sass/quickset.scss"],
                "scripts": ["./js/quickset.js", "/common/js/time-zone.js"]
            },

            "wechart/wechart.tpl": {
                "title": "Tenda wechart",
                "stylesheets": ["./sass/wechart.scss"]
            },

            "main/index.tpl": {
                "title": "Tenda Wireless Router",
                "text": "class=index-body",
                "stylesheets": [
                    "./sass/index.scss"
                ],
                "scripts": [
                    "./js/libs/ajaxupload.js",
                    "./js/libs/sea.js",
                    "./js/index.js"
                ]
            }
        }
    }
};

module.exports = cfg;
