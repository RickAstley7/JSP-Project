<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 결과</title>
</head>
<body>
<%
    String id = (String) session.getAttribute("ID");
    if (id == null)
        out.println("로그인에 실패했습니다.");
    else {
        out.println("안녕하세요, " + id + "님");
        out.println("(<a href='Logoff.jsp'>로그오프</a>)");
    }
%>
</body>
</html>
