<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/2
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <meta name="referrer" content="never" onmousewheel="top.document.body.scrollTop-=event.wheelDelta">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
          rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i" rel="stylesheet">
</head>


<body style="background-color:#f4f5f6">
<div clear:both;height:1px;width:100%; overflow:hidden; margin-top:-1px;>
    <div style="position:relative;left: 50%;margin-left: -27rem;margin-top:5rem">
        <div style="margin-top: 10px;margin-bottom: 10px;color: #000;font-weight:600;font-size: 1.5rem;">
            <span>新闻热点</span>
        </div>
        <div style="display: flex; flex-direction: column; width:50rem;height:auto; background-color:#fff;">
            <c:forEach items="${news}" var="new1">
                <ul style="list-style: none;margin:0px;padding: 0; padding-top:1rem;padding-left:1rem;padding-bottom:1rem">
                    <li style="margin-bottom: 20px;height:4rem;margin-bottom: 1rem;padding-top: 1rem">
                        <div style="display: flex;flex-direction:column;margin-left: 10px;margin-right:20px;position: relative;">
                            <div style="font-size:1.5rem;margin-bottom: 0.7rem;margin-top: 1rem">${new1.title}</div>
                            <div style="margin-bottom: 1rem;color:#bbb;">${new1.time}</div>
                            <div style="height:1px; width:auto;background-color: #ddd;margin-right: 1rem;margin-top: 1rem"></div>
                        </div>
                    </li>

                </ul>
            </c:forEach>
        </div>
    </div>
</div>
</div>


</body>
</html>

