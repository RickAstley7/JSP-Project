<%@page contentType="text/html; charset=utf-8" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
<HEAD><TITLE>덧셈 프로그램 - 에러 발생</TITLE></HEAD>
<BODY>
잘못된 데이터가 입력되었습니다. <BR><BR>
상세 에러 메시지: <%= exception.getMessage() %>
</BODY>
</HTML>
