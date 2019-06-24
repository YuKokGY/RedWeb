<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/24
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--弹出提示并回到登录界面-->
    <script>
        alert("请确认是否填写信息为空或者用户名已经存在或者两次密码不一致");
        window.location.href="${pageContext.request.contextPath}/user/toLogin.do";
    </script>
</head>
<body>

</body>
</html>

