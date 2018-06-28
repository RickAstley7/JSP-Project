<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
    <title>application 내장 변수의 사용 예</title>
</head>
<body>
<%
    String appPath = application.getContextPath();
    String filePath = application.getRealPath("ch04/AppTest.jsp");
%>
웹 애플리케이션의 URL 경로명 : <%= appPath %><br>
/ch04/AppTest.jsp의 파일 경로명 : <%= filePath %><br>
</body>
</html>
