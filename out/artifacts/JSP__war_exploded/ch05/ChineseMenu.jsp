<%@page contentType="text/html; charset=utf-8" %>
<HTML>
<HEAD><TITLE>오늘의 메뉴</TITLE></HEAD>
<BODY>
<H3>오늘의 메뉴</H3>
- 짜장면 <BR>
- 볶음밥 <BR>
- 짬뽕 <BR><BR>
<%
    out.flush();
    RequestDispatcher dispatcher = request.getRequestDispatcher("Now.jsp");
    dispatcher.include(request, response);
%>
</BODY>
</HTML>
