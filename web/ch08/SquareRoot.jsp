<%@ page contentType="text/html;charset=utf-8" errorPage="InputDataError.jsp" %>
<%
    String str = request.getParameter("NUM");
    if (str == null)
        throw new Exception("데이터가 입력되지 않았습니다.");
    int num = Integer.parseInt(str);

    if (num < 0)
        throw new Exception("0보다 작은 값이 입력되었습니다.");
%>
<html>
<head>
    <title>제곱근 프로그램</title>
</head>
<body>
<%= num %>의 제곱근은?
<%= Math.sqrt(num) %>
</body>
</html>
