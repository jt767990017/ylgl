<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<frameset rows="20%,85%,*">
    <frame src="${pageContext.request.contextPath}/login/head">
    <frameset cols="13%,70%">
        <frame src="${pageContext.request.contextPath}/login/left">
        <frame src="${pageContext.request.contextPath}/login/right" name="center">
    </frameset>
</frameset>