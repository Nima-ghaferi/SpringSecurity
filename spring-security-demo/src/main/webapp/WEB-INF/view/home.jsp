<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input type="submit" value="LOG OUT">
    </form:form>
</body>
</html>
