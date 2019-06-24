<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/24
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>

    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--// Meta tag Keywords -->

    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginbootstrap.css"> <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginstyle.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginfont-awesome.css">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->

    <!-- online-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:200,300,400,700" rel="stylesheet">
    <!-- //online-fonts -->

    <!-- js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/loginbootstrap.js"></script>
    <!-- Necessary-JavaScript-File-For-Bootstrap -->
    <!-- //js -->

    <!--注册按钮隐藏登录界面-->
    <script>
        function register() {
            var input=document.getElementsByClassName("w3_agileits_main_grid w3l_main_grid");
            var button=document.getElementsByClassName("agileits_w3layouts_main_grid w3ls_main_grid");
            for (var i=0;i<input.length;i++){
                input[i].style.display="none";
            }
            for (var i=0;i<button.length;i++){
                button[i].style.display="none";
            }
            var input2=document.getElementsByClassName("w3_agileits_main_grid w3l_main_grid2");
            var button2=document.getElementsByClassName("agileits_w3layouts_main_grid w3ls_main_grid2");
            for (var i=0;i<input2.length;i++){
                input2[i].style.display="block";
            }
            for (var i=0;i<button2.length;i++){
                button2[i].style.display="block";
            }
        }
    </script>
    <!--返回隐藏注册页面，没有数据传输-->
    <script>
        function back() {
            var input=document.getElementsByClassName("w3_agileits_main_grid w3l_main_grid");
            var button=document.getElementsByClassName("agileits_w3layouts_main_grid w3ls_main_grid");
            for (var i=0;i<input.length;i++){
                input[i].style.display="block";
            }
            for (var i=0;i<button.length;i++){
                button[i].style.display="block";
            }
            var input2=document.getElementsByClassName("w3_agileits_main_grid w3l_main_grid2");
            var button2=document.getElementsByClassName("agileits_w3layouts_main_grid w3ls_main_grid2");
            for (var i=0;i<input2.length;i++){
                input2[i].style.display="none";
            }
            for (var i=0;i<button2.length;i++){
                button2[i].style.display="none";
            }
        }
    </script>
</head>
<body>
<!--//Slider-->
<!--//Slider-->

<div class="main" id="main">
    <div class="w3layouts_main_grid">
        <div class="booking-form-head-agile">
            <h3>登录</h3>
        </div>
        <form action="${pageContext.request.contextPath}/user/login.do" method="post" class="w3_form_post">
            <div class="w3_agileits_main_grid w3l_main_grid">
                <div class="agileits_grid">
                    <h5>username</h5>
                    <div class="nam" style="margin-bottom: 10px">
                        <input type="text" name="username" placeholder="请输入用户名">
                    </div>
                    <h5>password</h5>
                    <div class="nam1">
                        <input type="text" name="password" placeholder="请输入密码">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="agileits_w3layouts_main_grid w3ls_main_grid">
                <div class="agileinfo_grid">
                    <div class="w3_main_grid" style="margin-bottom: 50px">
                        <div class="w3_main_grid_right">
                            <input type="submit" value="登录">
                        </div>
                        <div class="w3_main_grid_right2">
                            <input type="button" value="注册" onclick="register()">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </form>

        <form action="${pageContext.request.contextPath}/user/register.do" method="post" class="w3_form_post">
            <div class="w3_agileits_main_grid w3l_main_grid2" style="display: none">
                <div class="agileits_grid">
                    <h5>username</h5>
                    <div class="nam" style="margin-bottom: 10px">
                        <input type="text" name="username" placeholder="请输入用户名">
                    </div>
                    <h5>password</h5>
                    <div class="nam1" style="margin-bottom: 10px">
                        <input type="text" name="password" placeholder="请输入密码">
                    </div>
                    <h5>password again</h5>
                    <div class="nam1">
                        <input type="text" name="passwordagain" placeholder="请输入确认">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="agileits_w3layouts_main_grid w3ls_main_grid2" style="display: none">
                <div class="agileinfo_grid">
                    <div class="w3_main_grid" style="margin-bottom: 50px">
                        <div class="w3_main_grid_right">
                            <input type="submit" value="注册">
                        </div>
                        <div class="w3_main_grid_right2">
                            <input type="button" value="返回" onclick="back()">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

            </div>
        </form>
    </div>

</div>
</body>
</html>
