<%--
  Created by IntelliJ IDEA.
  User: Jrady
  Date: 6/28/2018
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<HEAD>
    <META http-equiv="Content-Type" content="text/html;charset=utf-8">
    <TITLE>회원가입 - 두번쨰 화면(추가 정보)</TITLE>
    <link rel="stylesheet" href="../../css/bootstrap.css">
</HEAD>
<BODY>
<div class="container">
    <h4>부가정보를 입력하십시오.</h4>
    <FORM ACTION=Agreement.jsp METHOD=POST>
        <INPUT TYPE="hidden" NAME=ID value="<%= request.getParameter("ID") %>">
        <INPUT TYPE="hidden" NAME=PASSWORD value="<%= request.getParameter("PASSWORD") %>">
        <INPUT TYPE="hidden" NAME=NAME value="<%= request.getParameter("NAME") %>">
        주소: <input type="text" name="ADDRESS" class="form-control"><br>
        전화번호: <input type="text" name="PHONE" class="form-control"><br>
        이메일: <input type="text" name="EMAIL" class="form-control"><br><br>
        <INPUT TYPE=SUBMIT VALUE='확인' class="btn btn-primary pull-right">
    </FORM>
</div>
</BODY>
</HTML>