<%@page contentType="text/html; charset=utf-8" %>
<HTML>
<HEAD><TITLE>초기화 파라미터 테스트</TITLE></HEAD>
<BODY>
<% String dbName = getInitParameter("DB_NAME"); %>
데이터베이스 이름: <%= dbName %> <BR>
</BODY>
</HTML>    
