<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>登录界面</title>
    <link rel="stylesheet" href="../static/css/log.css">
    <script type="text/javascript" src="../static/js/jquery.log.js"></script>

</head>
<body>
<script>
    $(document).ready(function () {
        var whei = $(window).width()
        $("html").css({fontSize: whei / 24});
        $(window).resize(function () {
            var whei = $(window).width();
            $("html").css({fontSize: whei / 24})
        });
    });
</script>
<div class="main">

    <div class="header">
        <div class="header-center fl">
            <div class="header-title">
                医疗后台登录界面
            </div>
            <div class="header-img"></div>
        </div>
        <div class="header-bottom fl"></div>
    </div>
    <form action="${pageContext.request.contextPath}/login/log" method="post">
        <div class="content">
            <div class="content-left">
            </div>
            <div class="content-right">
                <div class="right-infp">
                    <div class="right-infp-name">
                        <input type="text" id="username" name="username" placeholder="请输入用户名" maxlength="12" required=""
                               value="" autocomplete="off">
                    </div>
                    <div class="right-infp-name">
                        <input type="password" id="password" name="password" placeholder="请输入密码" autocomplete="off">
                    </div>
                    <div class="right-infp-btn">
                        <button class="btn" onclick="summitTable()">登录</button>
                    </div>
                    <div class="right-infp-btn">
                        <a class="btn" style="text-align: center;text-decoration: none" href="${pageContext.request.contextPath}/login/zhu">注册</a>
                    </div>
                    <span>${msg}</span>
                </div>
            </div>
        </div>
    </form>

        <script type="text/javascript" src="../static/js/login.js"></script>

</div>


</body>
</html>