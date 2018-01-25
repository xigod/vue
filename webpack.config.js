const HtmlWebpackPlugin = require('html-webpack-plugin');
const webpack = require('webpack');
//清理dist目录插件
const CleanWebpackPlugin = require('clean-webpack-plugin');
//分离sass插件
const ExtractTextPlugin = require("extract-text-webpack-plugin");
var fs = require('fs');

const extractSass = new ExtractTextPlugin({
    filename: "[name].css",
    disable: process.env.NODE_ENV === "development"
});

var option = {
    devtool: 'eval-source-map',
    entry: {
        index: __dirname + "/src/modules/main.js"/*,
        vendor: [
                __dirname + "/src/common/js/j.js", 
                __dirname + "/src/common/lang/b28n.js", 
                __dirname + "/src/common/js/common.js" 
            ]*/
    },
    output: {
        path: __dirname + "/dist",//打包后的文件存放的地方
        publicPath: 'dist/',
        filename: "[name].js"//打包后输出文件的文件名
    },
    devServer: {
        contentBase: "./dist",//本地服务器所加载的页面所在的目录
        historyApiFallback: true,//不跳转
        inline: true//实时刷新
    },
    module: {
        rules: [
            {
                test: /(\.jsx|\.js)$/,
                use: [
                    {
                        loader: "babel-loader"
                    }
                ],
                exclude: /node_modules/
            },
            {
                test: /\.scss$/,
                use: extractSass.extract({
                    use: [{
                        loader: "css-loader"
                    }, {
                        loader: "sass-loader"
                    }],
                    // 在开发环境使用 style-loader
                    fallback: "style-loader"
                })
            },
            {
              // 专供iconfont方案使用的，后面会带一串时间戳，需要特别匹配到
              test: /\.((woff|woff2|svg|eot|ttf)\??.)*$/,
              
              loader: 'file-loader?name=fonts/[name].[ext]',
            },
            /*{ 
                test: /\.css$/,
                use: ['style-loader','css-loader']
            },*/
            {
                test: /\.(png|jpg|gif)$/,
                use: [
                  {
                    loader: 'file-loader',
                    options: {
                        name: '[name].[ext]',
                        outputPath: 'img/',
                        publicPath: '/'
                    }
                  }
                ],
                exclude: /node_modules/
            },
            {
                test: /\.(tpl)$/,
                loader: 'art-template-loader'
            }
        ]
    },
    plugins: [
       new HtmlWebpackPlugin({
            title: 'ahhhhhhh',
            filename: 'index.html',
            template: './src/modules/main/index.tpl'
        }),
        /* new HtmlWebpackPlugin({
            title: 'ahhhhhhh',
            filename: 'status.html',
            template: './src/modules/status/status.tpl',
            chunks: ['status']
        }),
        new HtmlWebpackPlugin({
            title: 'ahhhhhhh',
            filename: 'system.html',
            template: './src/modules/system/system.tpl',
            chunks: ['system']
        }),*/
        extractSass/*,
        new webpack.ProvidePlugin({
            $: "jquery",
            jQuery: "jquery",
            "window.jQuery": "jquery"
        })*//*,
        new webpack.optimize.CommonsChunkPlugin({
            name: 'vendor',
            filename: 'vendor.js'
        })*/
    ]
}
var selfModules = ['advanced','quickset','userManage','ipv6','system','wireless','wechart','wireless-repeaters','network','parental-controls','net-control','system','status'];
var a = ['main'];

selfModules.forEach((element) => {
  const chunksArray = [element];

  const newPlugin = new HtmlWebpackPlugin({
    filename: element + '.html',
    template: './src/modules/'+element+'/'+element+'.tpl',   // 获取最初的html末班
    hash: true,               // 在生成的文件后面增加一个hash，防止缓存
    chunks: chunksArray
  });
  option.plugins.push(newPlugin);
});


module.exports = option;    