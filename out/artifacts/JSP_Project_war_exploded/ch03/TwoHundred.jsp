<%--
  Created by IntelliJ IDEA.
  User: Jrady
  Date: 6/28/2018
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>1부터100까지, 1부터200까지</title>
</head>
<body>
<%
    int total = 0;
    for (int i = 0; i <= 100; i++)
        total += i;
%>
1부터 100까지의 합 = <%= total %> <br>

<%
    for (int i = 101; i <= 200; i++)
        total += i;
%>
1부터 200까지의 합 = <%= total %> <br>

</body>
</html>
