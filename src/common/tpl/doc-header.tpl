<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title><%=title%></title>
<link rel="shortcut icon" href="/common/favicon.ico">
<!-- <link rel="stylesheet" href="/common/sass/reasyui/reasyui.scss"> -->
<%if (stylesheets){%>
    <%for (var i = 0;i < stylesheets.length; i++) {%>
<link rel="stylesheet" href="<%=stylesheets[i] %>">
    <%}%>
<%}%>

<!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 
HTML5SHIV需放在头部，RESPOND.JS需要服务器--> 
<!--[if lt IE 9]>
<script src="/js/respond.min.js"></script>
<script src="/js/html5shiv.min.js"></script>
<![endif]--> 
<script src="/lang/b28n.js"></script>
</head>
<body <%=text%>>