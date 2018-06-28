<%--
  Created by IntelliJ IDEA.
  User: Jrady
  Date: 6/28/2018
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입 - 두번쨰 화면(추가 정보)</title>
</head>
<body>
<p>부가정보를 입력하십시오.</p>
<form action="Agreement.jsp" method="post">
    아이디: <INPUT TYPE="hidden" NAME=ID value="<%= request.getParameter("ID") %>">
    패스워드: <INPUT TYPE="hidden" NAME=PASSWORD value="<%= request.getParameter("PASSWORD") %>">
    이름: <INPUT TYPE="hidden" NAME=NAME value="<%= request.getParameter("NAME") %>">
    주소: <input type="text" name="ADDRESS"><br>
    전화번호: <input type="text" name="PHONE"><br>
    이메일: <input type="text" name="EMAIL"><br><br>
    <input type="submit" value="확인">
</form>
</body>
</html>
