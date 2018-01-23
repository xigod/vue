<script src="/js/libs/j.js"></script> 
<script src="/js/libs/reasy-ui-1.0.3.js"></script> 
<script src="/js/libs/common.js"></script>

<script src="/js/libs/ajaxupload.js"></script> 
<script src="/js/libs/sea.js"></script> 
<script src="/js/index.js"></script>

<%if (scripts){%>
    <%for (var i = 0;i < scripts.length; i++) {%>
<script src="<%=scripts[i] %>"></script>
    <%}%>
<%}%>
</body>
</html>