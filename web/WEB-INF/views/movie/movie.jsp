<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/1
  Time: 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- Meta tags -->
    <title>Home</title>
    <meta name="keywords" content="" />
    <meta charset="utf-8">
    <meta name="referrer" content="never">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/piccss/picbootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/piccss/piceasy-responsive-tabs.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/piccss/picchocolat.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/piccss/picfont-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/piccss/picstyle.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/piccss/piclightbox.css">

    <!-- scripts -->
    <script src="${pageContext.request.contextPath}/picjs/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/picjs/picbootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/picjs/easyResponsiveTabs.js"></script>
    <script src="${pageContext.request.contextPath}/picjs/numscroller-1.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/picjs/jquery.chocolat.js"></script>
    <!-- google fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
<div class="w3-start">
    <!-- //Navigation -->
    <!-- Banner -->
    <div class="c">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <!-- Wrapper for slides -->
            <div class="carousel-inner">

                <div class="item active">
                    <img src="${pageContext.request.contextPath}/images/real1.jpg" alt="Los Angeles" style="width:100%;">
                    <div class="carousel-caption">
                        <form action="/" method="post" class="w3ls-mail">
                            <input type="email" name="email" placeholder="Enter Your pic Url" required>
                            <a href="#"><input type="submit" value="Get In"></a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <!-- //Banner -->
        <!-- WELCOME SECTION -->
        <div class="agileits-welcome" id="about">
            <div class="container w3ls w3-welcome">
                <div class="w3-text">

                </div>
            </div>
        </div>
            <!-- //WELCOME SECTION -->

            <!-- Services columns -->
            <div class="container w3ls-service" id="service" style="margin-top: 100px">
                <h3 class="center">正在上映的电影</h3>

                <c:forEach items="${moviepics}" var="moviepic" varStatus="s" begin="0" end="${num}">
                <div class="row-agile">
                    <div class="col-md-4 col-sm-4 col-xs-6 part1">
                        <a onclick="bigger('${moviepic.url}','${movies[s.count-1].moviename}','${movies[s.count-1].movierate}','${movies[s.count-1].movietime}','${movies[s.count-1].movieregion}','${movies[s.count-1].movieactors}','${movies[s.count-1].moviedirector}')">
                        <img class="img-responsive" alt="image" src="${moviepic.url}" style="width: 270px;height: 377px;">
                        </a>
                    </div>
                    </c:forEach>
                    <!--缩放图片代码开始-->
                    <div id="light" class="lightboxOverlay" style="display: none;"></div>
                    <div class="lightbox" style="display: none;left: 0px;">
                        <div class="lb-outerContainer" style="width: 270px; height: 385px;">
                           <div class="lb-container">
                        <img class="img-responsive" id="src1"  style="width: 270px; height: 385px;">
                            </div>
                        </div>
                        <div class="lb-dataContainer" style="width: 648px;">
                            <div class="lb-data">
                                <div class="lb-details">
                                    <span id="info" class="lb-caption" style="display: inline;">
                                    </span>
                                </div>
                                 <div class="lb-closeContainer">
                                     <a class="lb-close" onclick="close1();">
                                     </a>
                                 </div>
                            </div>
                        </div>
                    </div>
                    <!--缩放代码结束-->
                </div>
            </div>
</body>
</html>

<%--通过点击的方法把图片的url传过来传过来--%>
<script>
    function bigger(url,name,rate,time,region,actors,director) {
        var div=document.getElementsByClassName("lightboxOverlay");
        for (var i=0;i<div.length;i++){
            div[i].style.display="block";
        }
        var div2=document.getElementsByClassName("lightbox");
        for (var i=0;i<div2.length;i++){
            div2[i].style.display="block";
        }
        //使用jq原生方法给标签的src赋值  注意用的是id查询
        $("#src1").attr("src",url);
        document.getElementById("info").innerText = "影片："+name+"\n"+"评分："+rate+"\n"+"时长："+time+"\n"+"地区："+region+"\n"+"导演："+director+"\n"+"演员："+actors;
    }
</script>
<%--关闭缩放页面--%>
<script>
    function close1() {
        var div3=document.getElementsByClassName("lightboxOverlay");
        for (var i=0;i<div3.length;i++){
            div3[i].style.display="none";
        }
        var div4=document.getElementsByClassName("lightbox");
        for (var i=0;i<div4.length;i++){
            div4[i].style.display="none";
        }
    }
</script>