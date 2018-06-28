<%@page contentType="text/html; charset=utf-8" errorPage="DataError2.jsp" %>
<%
    String str1 = request.getParameter("NUM1");
    String str2 = request.getParameter("NUM2");
    int num1 = Integer.parseInt(str1);
    int num2 = Integer.parseInt(str2);
    int result = num1 + num2;
%>
<HTML>
<HEAD><TITLE>덧셈 프로그램</TITLE></HEAD>
<BODY>
<%= num1 %> + <%= num2 %> = <%= result %>
</BODY>
</HTML>
