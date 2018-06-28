<%@page contentType="text/html; charset=utf-8" %>
<%
    response.addCookie(new Cookie("NAME", "John"));
    response.addCookie(new Cookie("GENDER", "Male"));
    response.addCookie(new Cookie("AGE", "15"));
%>
<HTML>
<HEAD><TITLE>쿠키 데이터 저장하기</TITLE></HEAD>
<BODY>
쿠키 데이터가 저장되었습니다.<BR><BR>
</BODY>
</HTML>
