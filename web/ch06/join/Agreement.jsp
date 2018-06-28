<%@page contentType="text/html; charset=utf-8" %>
<%
    request.setCharacterEncoding("utf8");
    String id = request.getParameter("ID");
    String password = request.getParameter("PASSWORD");
    String name = request.getParameter("NAME");
    String address = request.getParameter("ADDRESS");
    String phone = request.getParameter("PHONE");
    String email = request.getParameter("EMAIL");
    session.setAttribute("ID", id);
    session.setAttribute("PASSWORD", password);
    session.setAttribute("NAME", name);
    session.setAttribute("ADDRESS", address);
    session.setAttribute("PHONE", phone);
    session.setAttribute("EMAIL", email);
%>
<HTML>
<HEAD><TITLE>회원 가입</TITLE></HEAD>
<BODY>
<H3>약관</H3>
---------------------------------------------------------- <BR>
1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다. <BR>
2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다. <BR>
---------------------------------------------------------- <BR>
<FORM ACTION=Subscribe.jsp METHOD=POST>
    위의 약관에 동의하십니까?
    <INPUT TYPE=RADIO NAME=AGREE VALUE=YES>동의함
    <INPUT TYPE=RADIO NAME=AGREE VALUE=NO checked>동의하지 않음 <BR><BR>
    <INPUT TYPE=SUBMIT VALUE='확인'>
</FORM>
</BODY>
</HTML>