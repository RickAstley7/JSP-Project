<%@page contentType="text/html; charset=utf-8" %>
<%@page session="false" %>
<%@page import="java.net.URLDecoder" %>
<HTML>
<HEAD><TITLE>쿠키 보여주기</TITLE></HEAD>
<BODY>
어벤져스(히어로) : 전투력<BR>
==============<BR>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            String cookieName = URLDecoder.decode(cookie.getName());
            String cookieValue = cookie.getValue();
            out.println(cookieName + " : " + cookieValue + "<BR>");
        }
    }
%>
<BR>
<A HREF="InputCookie.html">어벤져스 등록 화면으로<A>
</BODY>
</HTML>