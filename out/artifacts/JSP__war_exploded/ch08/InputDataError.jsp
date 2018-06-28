<%@ page contentType="text/html;charset=utf-8" isErrorPage="true" %>
<% response.setStatus(200); %>
<html>
<head>
    <title>제곱근 프로그램 - 에러 화면</title>
</head>
<body>
<h3>입력 데이터 에러</h3>
[에러 메시지] <%= exception.getMessage() %>
</body>
</html>
