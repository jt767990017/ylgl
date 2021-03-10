<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>注册界面</title>
    <link rel="stylesheet" href="../static/css/log.css">
    <script type="text/javascript" src="../static/js/jquery.log.js"></script>

</head>
<body>

<script type="text/javascript" src="../static/js/login.js"></script>
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}"/>
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
                医疗后台注册界面
            </div>
            <div class="header-img"></div>
        </div>
        <div class="header-bottom fl"></div>
    </div>
    <form action="${pageContext.request.contextPath}/login/zhuce" method="post">
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
                    <div>
                        <label class="radio-inline">
                            <input type="radio" name="leiXing" id="sex1" value="医务人员"> 医务人员
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="leiXing" id="sex2" value="用户" > 用户
                        </label>
                    </div>
                    <div class="right-infp-btn">
                        <button class="btn" onclick="">注册</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

</div>


</body>
</html>