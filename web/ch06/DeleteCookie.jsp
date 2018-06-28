<%@page contentType="text/html; charset=utf-8" %>
<%
    Cookie cookie = new Cookie("GENDER", "");
    cookie.setMaxAge(0);
    response.addCookie(cookie);
%>
<HTML>
<HEAD><TITLE>쿠키 삭제하기</TITLE></HEAD>
<BODY>
GENDER 쿠키가 삭제되었습니다.
</BODY>
</HTML>
