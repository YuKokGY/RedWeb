<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/15
  Time: 1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="referrer" content="never">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/newscss/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/newscss/style.css" rel="stylesheet">
</head>

<body id="page-top">
<section id="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>最新优秀摄影作品</h2>
                </div>
            </div>
        </div>
        <div class="row row-0-gutter">
            <!-- start portfolio item -->
            <c:forEach items="${pics}" var="pic">
                <div class="col-md-6 col-0-gutter">
                    <a id="bigurl" onclick="checkUrl('${pic.bigurl}')">
                        <figure class="effect-bubba">
                            <img src="${pic.url}" alt="img02" style="width: 400px;height: 300px"/>
                            <figcaption>
                                <h2>YuKok & YuKie</h2>
                                <p>RedWebTeam.Design</p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </c:forEach>
            <!-- end portfolio item -->
            <!-- start portfolio item -->
            <!-- end portfolio item -->
        </div>
    </div><!-- container -->
</section>

<script>
    function checkUrl(url) {
        jQuery.support.cors = true;
        $.ajax({
            type: "GET",
            url: url,
            dataType: "jsonp",
            success: function (xhr) {
                alert(xhr.status)
                url1=url;
                window.location.href = url1;
            },
            error: function (xhr) {
                alert(xhr.readyState+"==="+xhr.status)
                var index = url.lastIndexOf("-");
                bigurl = url.substring(0, index) + "-sd2.jpg"
                window.location.href = bigurl;
            }
        });
    }
</script>

<!-- Bootstrap core JavaScript
	================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/newsjs/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/newsjs/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/newsjs/SmoothScroll.js"></script>
<script src="${pageContext.request.contextPath}/newsjs/theme-scripts.js"></script>
</body>
</html>
