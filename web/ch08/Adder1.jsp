<%@page contentType="text/html; charset=utf-8" %>
<%
    try {
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
<%
} catch (NumberFormatException e) {
%>
<HTML>
<HEAD><TITLE>덧셈 프로그램 - 에러 화면</TITLE></HEAD>
<BODY>
잘못된 데이터가 입력되었습니다.
</BODY>
</HTML>
<%
    }
%>
