<%@page contentType="text/html; charset=utf-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>점점 더 크게 인사하기</title>
</head>
<body>
<%
    for (int i = 6; i > 1; i--)
        out.println("<h" + i + ">안녕하세요.여러분<h" + i + ">");
%>
</body>
</html>