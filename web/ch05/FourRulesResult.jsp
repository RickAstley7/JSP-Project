<%@page contentType="text/html; charset=utf-8" %>
<HTML>
<HEAD><TITLE>사칙연산</TITLE></HEAD>
<BODY>
입력된 수: <%= request.getParameter("NUM1") %>, <%= request.getParameter("NUM2") %> <BR><BR>
덧셈의 결과는? <%= request.getAttribute("SUM") %> <BR>
뺄셈의 결과는? <%= request.getAttribute("DIFFERENCE") %> <BR>
곱셈의 결과는? <%= request.getAttribute("PRODUCT") %> <BR>
나눗셈의 결과는? <%= request.getAttribute("QUOTIENT") %> <BR>
</BODY>
</HTML>
