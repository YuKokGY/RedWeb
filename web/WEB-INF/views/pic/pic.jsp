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

        //ajax问题还未解决  使用以下方法可以解决辨别404
        // $.ajax({
        //     type: "GET",
        //     url: url,
        //     success: function (response) {
        //         alert(response.status)
        //         url1=url;
        //         window.location.href = url1;
        //     },
        //     error: function (response) {
        //         alert(response.readyState+"==="+response.status)
        //         var index = url.lastIndexOf("-");
        //         bigurl = url.substring(0, index) + "-sd2.jpg"
        //         window.location.href = bigurl;
        //     }
        // });


        //调用检测方法  如果返回的异步结果成功 执行这个操作
        isRunUrl(url).then(function (data) {
                url1 = url;
                window.location.href = url1;
            },
            //如果异步操作失败执行以下操作
            function (error) {
                var index = url.lastIndexOf("-");
                bigurl = url.substring(0, index) + "-sd2.jpg";
                window.location.href = bigurl;
            }
        )
    }

    var isRunUrl = function (url) {
        return new Promise(function (resolve, reject) {
            // 测试链接连通性, 主要检测404错误
            // 由于AJAX通常无法区分404和跨域问题
            // 所以只能用script 或者 link标签
            // link比script更容易捕获错误
            var dom = document.createElement('link');
            dom.href = url;
            dom.rel = 'stylesheet';
            document.head.appendChild(dom);
            dom.onload = function () {
                document.head.removeChild(dom);
                resolve();
            };
            dom.onerror = reject;
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
