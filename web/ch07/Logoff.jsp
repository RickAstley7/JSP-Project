<%--
  Created by IntelliJ IDEA.
  User: Jrady
  Date: 6/28/2018
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("LoginForm.html");
%>
</body>
</html>
