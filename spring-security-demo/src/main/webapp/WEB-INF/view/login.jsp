<%--
  Created by IntelliJ IDEA.
  User: nima
  Date: 11/14/2022 AD
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Custom Login</title>
</head>
<body>
<h3>Custom Login Page</h3>
<form:form action="${pageContext.request.contextPath}/authenticate" method="post">
    <%if(request.getParameter("error") != null) { %>
        <p>user name or password is incorrect!!!</p>
    <%}%>
<p>User name: <input name="username" type="text"></p>
<p>password: <input name="password" type="password"></p>
    <input type="submit" value="LOGIN">
</form:form>
</body>
</html>
