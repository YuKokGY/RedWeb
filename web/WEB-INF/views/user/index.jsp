<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/24
  Time: 15:37
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
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet" media="all">
    <link href=".${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lightbox.css">
    <!--//Custom Theme files-->
    <!-- js -->
    <script src='${pageContext.request.contextPath}/js/jquery-2.2.3.min.js'></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
          rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i" rel="stylesheet">
    <!-- //web-fonts -->

    <!--页面加载时调用的方法-->
    <script>
        window.onload = function checklogin() {
            //获取后台传过来的参数
            var name = "${user.username}";
            //如果不是空，就显示当前登录的用户名
            if (name + "" != "") {
                var unlogin = document.getElementsByClassName("unlogin");
                for (var i = 0; i < unlogin.length; i++) {
                    unlogin[i].style.display = "none";
                }
                var login = document.getElementsByClassName("login");
                for (var i = 0; i < login.length; i++) {
                    login[i].style.display = "block";
                }
                var outlogin = document.getElementsByClassName("outlogin");
                for (var i = 0; i < outlogin.length; i++) {
                    outlogin[i].style.display = "block";
                }
            }
            //实现页面加载完成调用后台爬取功能
            $.ajax({
                type: "Post",
                url: "http://localhost:8080/user/go.do",
            });
        }
    </script>
    <%--检测是否已经登录 如果已经登录 则跳转到电影界面--%>
    <script>
        function checkMovieLogin(name) {
            if (name!=""){
                $("#movie").attr("href", "${pageContext.request.contextPath}/movie/showMovie.do");
            }
            else {
                alert("请先登录");
            }
        }
    </script>

    <script>
        function checkPicLogin(name) {
            if (name!=""){
                $("#pic").attr("href","${pageContext.request.contextPath}/pic/getPic.do");
            }
            else {
                alert("请先登录");
            }
        }
    </script>


</head>
<body>
<!-- banner -->
<div id="home" class="banner">
    <div class="banner-agileinfo">
        <!-- header -->
        <div class="header">
            <div class="container">
                <div class="logo">
                    <h1><a href="index.html">RedWeb</a></h1>
                </div>
                <div class="menu">
                    <a href="" id="menuToggle"> <span class="navClosed"></span> </a>
                    <nav>
                        <a href="#home" class="active scroll">主页</a>
                        <div class="unlogin" style="display: block">
                            <a href="${pageContext.request.contextPath}/user/toLogin.do">登录/注册</a>
                        </div>
                        <div class="login" style="display: none">
                            <a href="${pageContext.request.contextPath}/user/toLogin.do">当前在线：${user.username}</a>
                        </div>
                        <a id="movie" href=""  onclick="checkMovieLogin('${user.username}')">电影</a>
                        <a id="pic" href=""  onclick="checkPicLogin('${user.username}')">最新摄影图</a>
                        <a id="news1" href="${pageContext.request.contextPath}/news/get.do"
                           onclick="checkPicLogin('${user.username}')">新闻</a>
                        <div class="outlogin" style="display: none">
                            <a href="${pageContext.request.contextPath}/user/toMain.do">退出登录</a>
                        </div>
                    </nav>
                    <script>
                        (function ($) {
                            // Menu Functions
                            $(document).ready(function () {
                                $('#menuToggle').click(function (e) {
                                    var $parent = $(this).parent('.menu');
                                    $parent.toggleClass("open");
                                    var navState = $parent.hasClass('open') ? "hide" : "show";
                                    $(this).attr("title", navState + " navigation");
                                    // Set the timeout to the animation length in the CSS.
                                    setTimeout(function () {
                                        console.log("timeout set");
                                        $('#menuToggle > span').toggleClass("navClosed").toggleClass("navOpen");
                                    }, 200);
                                    e.preventDefault();
                                });
                            });
                        })(jQuery);
                    </script>

                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //header -->
        <div class="banner-text">
            <div class="container">
                <h2>WE OFFER THE BEST <span>RedWeb</span></h2>
                <a href="#about" class="buy btn-wayra scroll"> 关于我们</a>
            </div>
        </div>
    </div>
</div>
<!-- //banner -->
<!-- slid -->
<div class="slid jarallax">
    <div class="slid-text">
        <h4>24/7 Customer Service Support</h4>
        <p></p>
    </div>
    <div class="clearfix"></div>
</div>
<!-- //slid -->
<!-- services -->
<div id="services" class="services">
    <div class="container">
        <h3 class="agileits-title w3title2"><span>S</span>ervices</h3>
        <div class="services-row-agileinfo">
            <div class="col-sm-4 col-xs-6 services-w3grid">
                <span class="fa fa-heart hi-icon" aria-hidden="true"></span>
                <h5>Cum soluta nobis</h5>
            </div>
            <div class="col-sm-4 col-xs-6 services-w3grid">
                <span class="fa fa-bell hi-icon" aria-hidden="true"></span>
                <h5>Nobis cum soluta</h5>
            </div>
            <div class="col-sm-4 col-xs-6 services-w3grid">
                <span class="fa fa-check-square-o hi-icon" aria-hidden="true"></span>
                <h5>Soluta vum nobis</h5>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //services -->
<!-- news -->
<div id="news" class="news">
    <div class="container">
        <h3 class="agileits-title w3title2"><span>N</span>ews </h3>
        <div class="news-agileinfo">
            <div class="col-md-4 news-w3grid">
                <c:forEach items="${pics}" var="pic" begin="12" end="12">
                    <img src="${pic.url}" alt="" style="width: 380px;height: 380px">
                </c:forEach>
                <div class="news-w3grid-info">
                    <h5><span>10</span> April </h5>
                    <h4>Donec cursus</h4>
                    <p>Etiam ex lorem cursus vitae placerat suscipit dapibus tortor sed nec augue</p>
                    <div class="article-links">
                        <ul>
                            <li><a href="#"><i class="glyphicon glyphicon-heart-empty"></i><span>1,052</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-comment"></i><span>10K</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 news-w3grid">
                <c:forEach items="${pics}" var="pic" begin="13" end="13">
                    <img src="${pic.url}" alt="" style="width: 380px;height: 380px">
                </c:forEach>
                <div class="news-w3grid-info">
                    <h5><span>15</span> April </h5>
                    <h4>Suscipit dapib</h4>
                    <p>Lorem cursus vitae placerat etiam ex suscipit dapibus tortor sed nec augue</p>
                    <div class="article-links">
                        <ul>
                            <li><a href="#"><i class="glyphicon glyphicon-heart-empty"></i><span>1,052</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-comment"></i><span>10K</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 news-w3grid">
                <c:forEach items="${pics}" var="pic" begin="15" end="15">
                    <img src="${pic.url}" alt="" style="width: 380px;height: 380px">
                </c:forEach>
                <div class="news-w3grid-info">
                    <h5><span>18</span> April </h5>
                    <h4>Tortor sed</h4>
                    <p>Etiam ex lorem cursus vitae placerat suscipit dapibus tortor sed nec augue</p>
                    <div class="article-links">
                        <ul>
                            <li><a href="#"><i class="glyphicon glyphicon-heart-empty"></i><span>1,052</span></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-comment"></i><span>10K</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //news -->
<!-- gallery -->
<div class="gallery" id="gallery">
    <h3 class="agileits-title w3title2"><span>G</span>allery</h3>
    <div class="gallery-info">
        <div class="col-sm-6 gallery-grids glry-grid1">
            <div class="gallery-grids-top">
                <c:forEach items="${pics}" var="pic" begin="1" end="1">
                <a class="b-link-stripe b-animate-go" href="${pic.url}" data-lightbox="example-set"
                   data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen book It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ">
                    <img src="${pic.url}" class="img-responsive" alt=""/>
                    </c:forEach>
                    <div class="b-wrapper">
							<span class="b-animate b-from-left">
								<i class="fa fa-arrows-alt" aria-hidden="true"></i>
							</span>
                    </div>
                </a>
            </div>
            <div class="gallery-grids-top">
                <div class="col-sm-6 col-xs-6 bottom-grids">
                    <c:forEach items="${pics}" var="pic" begin="2" end="3">
                    <a class="b-link-stripe b-animate-go" href="${pic.url}" data-lightbox="example-set"
                       data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen book It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ">
                        <img src="${pic.url}" class="img-responsive" alt=""/>
                        </c:forEach>
                        <div class="b-wrapper">
								<span class="b-animate b-from-left">
									<i class="fa fa-arrows-alt" aria-hidden="true"></i>
								</span>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-xs-6 bottom-grids">
                    <c:forEach items="${pics}" var="pic" begin="4" end="5">
                    <a class="b-link-stripe b-animate-go" href="${pic.url}" data-lightbox="example-set"
                       data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen book It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ">
                        <img src="${pic.url}" class="img-responsive" alt=""/>
                        </c:forEach>
                        <div class="b-wrapper">
								<span class="b-animate b-from-left">
									<i class="fa fa-arrows-alt" aria-hidden="true"></i>
								</span>
                        </div>
                    </a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-sm-3 col-xs-6 gallery-grids glry-grid2">
            <c:forEach items="${pics}" var="pic" begin="6" end="9">
            <a class="b-link-stripe b-animate-go" href="${pic.url}" data-lightbox="example-set"
               data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen book It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ">
                <img src="${pic.url}" class="img-responsive" alt=""/>
                </c:forEach>
                <div class="b-wrapper">
						<span class="b-animate b-from-left">
							<i class="fa fa-arrows-alt" aria-hidden="true"></i>
						</span>
                </div>
            </a>
        </div>
        <div class="col-sm-3 col-xs-6 gallery-grids glry-grid3">
            <c:forEach items="${pics}" var="pic" begin="10" end="11">
            <a class="b-link-stripe b-animate-go" href="${pic.url}" data-lightbox="example-set"
               data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen book It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ">
                <img src="${pic.url}" class="img-responsive" alt=""/>
                </c:forEach>
                <div class="b-wrapper">
						<span class="b-animate b-from-left">
							<i class="fa fa-arrows-alt" aria-hidden="true"></i>
						</span>
                </div>
            </a>
            <c:forEach items="${pics}" var="pic" begin="10" end="11">
            <a class="b-link-stripe b-animate-go" href="${pic.url}" data-lightbox="example-set"
               data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen book It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ">
                <img src="${pic.url}" class="img-responsive" alt=""/>
                </c:forEach>
                <div class="b-wrapper">
						<span class="b-animate b-from-left">
							<i class="fa fa-arrows-alt" aria-hidden="true"></i>
						</span>
                </div>
            </a>
        </div>
        <div class="clearfix"></div>
        <script src="${pageContext.request.contextPath}/js/lightbox-plus-jquery.min.js"></script>
    </div>
</div>
<!-- //gallery -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-w3lsrow">
            <div class="col-md-4 footer-grids footer-address">
                <h3>联系我们 :</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-send"></i> 1234567</li>
                    <li><i class="glyphicon glyphicon-phone"></i> 1234567891011</li>
                    <li><i class="glyphicon glyphicon-envelope"></i> <a href="44150264@qq.com"> 44150264@qq.com</a></li>
                </ul>
            </div>
            <div class="col-md-4 footer-grids subscribe">
                <h3>您的邮箱 :</h3>
                <form action="#" method="post">
                    <input type="email" name="Email" placeholder="Your Email" required>
                    <input type="submit" value="Subscribe">
                    <div class="clearfix"></div>
                </form>

            </div>
            <div class="col-md-4 footer-grids footer-icons">
                <h3>关注我们 :</h3>
                <div class="agile_social_icons">
                    <ul class="agileits_social_list">
                        <li><a href="https://www.facebook.com/profile.php?id=100024300307108&ref=bookmarks"
                               class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                        </li>
                        <li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="footer-bottom">
            <p>Copyright &copy; 2019.Company name All rights reserved.</p>
        </div>
    </div>
</div>
<!-- //footer -->
<!-- jarallax -->
<script src="${pageContext.request.contextPath}/js/SmoothScroll.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jarallax.js"></script>
<script type="text/javascript">
    /* init Jarallax */
    $('.jarallax').jarallax({
        speed: 0.5,
        imgWidth: 1366,
        imgHeight: 768
    })
</script>
<!-- //jarallax -->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
</body>
</html>