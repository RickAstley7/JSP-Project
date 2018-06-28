<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
    <title>게시판 글쓰기 - 결과 화면</title>
</head>
<body>
<h2>글쓰기</h2>
<%
    String str = request.getParameter("result");
    if (str.equals("SUCCESS")) {
        out.println("저장되었습니다.");
    } else {
        out.println("실패하였습니다.");
    }
%>
</body>
</html>
