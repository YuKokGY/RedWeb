<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/25
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        alert("用户名已经存在");
        window.location.href="${pageContext.request.contextPath}/user/toLogin.do";
    </script>
</head>
<body>

</body>
</html>
