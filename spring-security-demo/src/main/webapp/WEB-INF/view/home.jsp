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
<hr>
<security:authorize access="hasRole('MANAGER')">
<p>
    <a href="${pageContext.request.contextPath}/leaders" >Leadership meeting</a>
</p>
<hr>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
<p>
    <a href="${pageContext.request.contextPath}/systems" >Admin meeting</a>
</p>
<hr>
</security:authorize>
    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input type="submit" value="LOG OUT">
    </form:form>
</body>
</html>
