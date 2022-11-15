<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: nima
  Date: 11/13/2022 AD
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body><h1>Hellooooooo</h1>
<hr>
<p>
    User: <security:authentication property="principal.username" />
    <br>
    Roles: <security:authentication property="principal.authorities" />
</p>
    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input type="submit" value="LOG OUT">
    </form:form>
</body>
</html>
