<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>Title</title>
</head>
<link href="../../static/css/bootstrap.min.css" rel="stylesheet"/>
<link href="../../static/css/style.css" rel="stylesheet"/>
<script type="text/javascript" src="../../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../../static/js/style.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.14.7/umd/popper.min.js"></script>
<script type="text/javascript" src="../../static/js/bootstrap.min.js"></script>

<body bgcolor="black">
<div class="content">
    <div class="list">
        <ul>

            <c:forEach items="${menu}" var="l">
                <li>
                    <c:if test="${l.medicalId=='1'}">
                        <p class="title">${l.medicalName}</p>
                    </c:if>
                    <ul class='list-se'>
                        <p class="title">${l.medicalName}</p>
                        <c:forEach items="${menu}" var="s">
                            <c:if test="${s.medicalLevel==l.medicalId}">
                                <li><p><a href="/patient/news/${s.medicalId}" target="center">${s.medicalName}</a></p></li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </li>

                <li>
                    <c:if test="${l.medicalId=='2'}">
                        <p class="title">${l.medicalName}</p>
                    </c:if>
                    <ul class='list-se'>
                        <p class="title">${l.medicalName}</p>
                        <c:forEach items="${menu}" var="s">
                            <c:if test="${s.medicalLevel==l.medicalId}">
                                <li><p><a  href="/patient/news/${s.medicalId}" target="center">${s.medicalName}</a></p></li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </li>
            </c:forEach>


            <%--  <li>
                  <p class="title">业务管理</p>
                  <ul class='list-se'>
                      <p class="title">业务管理</p>
                      <li><p>新闻公告</p></li>
                      <li><p>患者信息</p></li>
                      <li><p>患者预约</p></li>
                      <li><p>诊断方案</p></li>
                      <li><p>在线付费</p></li>
                  </ul>
              </li>--%>
            <%--            <li>--%>
            <%--                <p class="title">系统设置</p>--%>
            <%--                <ul class='list-se'>--%>
            <%--                    <p class="title">系统设置</p>--%>
            <%--                    <li><p>用户信息</p></li>--%>
            <%--                </ul>--%>
            <%--            </li>--%>

        </ul>
    </div>

</div>

<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $('.list ul li p').clickdown();
        $('.list-se p[class=title]').clickup();
        $('.list>ul>li').ad();
        console.log($().index())
    });
</script>
</body>
</html>