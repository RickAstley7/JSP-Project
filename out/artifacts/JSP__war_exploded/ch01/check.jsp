<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
    <title>계산 문제</title>
</head>
<body>
<% int a = 1, b = 3; %>
A와 B의 합은? <%= a + b %> <br>
A와 B의 곱은? <%= a * b %> <br>
A + B의 제곱근? <%= Math.sqrt(a + b) %>
</body>
</html>