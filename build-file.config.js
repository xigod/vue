//搬运未打包的文件
//
var selfModules = ['advanced','quickset','userManage','ipv6','system','wireless','wireless-repeaters','network','parental-controls','net-control','system','status'];
var lang = ['cn','de','es','fr','hu','it','ko','pl','pt','ro','tr','zh']
var files = {
    lang: {
        b28n: require('!file-loader?name=lang/[name].[ext]!' + __dirname + '/src/common/lang/b28n.js')
    },
    js: {
    }

};

selfModules.forEach(function(module) {
    //console.log("aaaaaaaaaaaaaaaaaaaaaaaaaannnnnnnnnnnnnnnnnnnnn  "+module)
    files.js[module] = require('!file-loader?name=js/[name].[ext]!' + __dirname + '/src/modules/'+module+'/js/'+module+'.js')
});




module.exports = files;