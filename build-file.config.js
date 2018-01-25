//搬运未打包的文件
//
var selfModules = ['advanced','quickset','userManage','ipv6','system','wireless','wireless-repeaters','network','parental-controls','net-control','system','status'];
var files = {
    libs: {
        j: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/j.js'),
        reasyui: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/reasy-ui-1.0.3.js'),
        ajaxupload: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/ajaxupload.js'),
        html5shiv: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/html5shiv.min.js'),
        j_ajaxError: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/j_ajaxError.js'),
        respond: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/respond.min.js'),
        sea: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/sea.js'),
        timezone: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/time-zone.js'),
        common: require('!file-loader?name=js/libs/[name].[ext]!' + __dirname + '/src/common/js/common.js')
    },
    js: {
         
    },
    lang: {
        b28n: require('!file-loader?name=lang/[name].[ext]!' + __dirname + '/src/common/lang/b28n.js'),
        cn: require('!file-loader?name=lang/cn/[name].[ext]!' + __dirname + '/src/common/lang/cn/translate.json')
    },
    fonts: {
        eot: require('!file-loader?name=fonts/[name].[ext]!' + __dirname + '/src/common/fonts/reasyicon.eot'),
        ttf: require('!file-loader?name=fonts/[name].[ext]!' + __dirname + '/src/common/fonts/reasyicon.ttf'),
        woff: require('!file-loader?name=fonts/[name].[ext]!' + __dirname + '/src/common/fonts/reasyicon.woff')
    },
    images: {
        app: require(__dirname + '/src/common/img/app.png'),
        'connect-error': require(__dirname + '/src/common/img/connect-error.png'),
        'connect-success': require(__dirname + '/src/common/img/connect-success.png'),
        hostlogo: require(__dirname + '/src/common/img/hostlogo.png'),
        inport: require(__dirname + '/src/common/img/inport.png'),
        loading: require(__dirname + '/src/common/img/loading.gif'),
        alogopp: require(__dirname + '/src/common/img/logo.png'),
        'logo-inverse': require(__dirname + '/src/common/img/logo-inverse.png'),
        'pic-error': require(__dirname + '/src/common/img/pic-error.png'),
        totalPicture: require(__dirname + '/src/common/img/totalPicture.png'),
        'weixin-er': require(__dirname + '/src/common/img/weixin-er.png'),
        'wifi_strength': require(__dirname + '/src/common/img/wifi_strength.png')
    }
};

selfModules.forEach(function(module) {
    files.js[module] = require('!file-loader?name=js/[name].[ext]!' + __dirname + '/src/modules/'+module+'/js/'+module+'.js')
});

module.exports = files;