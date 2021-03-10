<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style type="text/css">
    li {
        list-style-type: none;
        line-height: 30px;
        font-size: 30px;
        font-style: oblique;
        margin-top: 40px;
        margin-left: 50px;
        color: darkgreen;
    }

    #imgg {
        width: 200px;
        height: 60px;
        position: absolute;
        right: 90px;
        bottom: 48px;
    }

    a {
        text-decoration: none;
    }
</style>
<script src="../../static/js/jquery.min.js"></script>
<script src="../../static/js/patient_information.js"></script>
<body bgcolor="black">
<li>后台管理系统</li>
<div id="imgg">
    <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3423431546,2435351238&fm=26&gp=0.jpg" width="32"
         height="32"/>
</div>
<div style="position: absolute;right: 110px;bottom: 73px">
<%--    <input id="idididid" type="text" value="${user}" hidden/>--%>
    <span>您好：${user}</span><br>
    <span>
<%--        <a href="#"> 修改密码</a>--%>
        <a onclick="llll()">安全退出</a>
    </span>
    <script>
        function llll() {
            if (confirm("您确定要退出吗？"))
                window.parent.location.href = "../login.jsp";
            return false;
        }
    </script>
</div>


</body>
</html>