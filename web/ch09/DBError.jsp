<%@page contentType="text/html; charset=utf-8" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
<HEAD><TITLE>데이터베이스 에러</TITLE></HEAD>
<BODY>
<H3>데이터베이스 에러</H3>
에러 메시지: <%= exception.getMessage() %>
</BODY>
</HTML>
