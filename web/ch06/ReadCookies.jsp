<%@page contentType="text/html; charset=utf-8" %>
<% Cookie[] cookies = request.getCookies(); %>
<HTML>
<HEAD><TITLE>쿠키 데이터 읽기</TITLE></HEAD>
<BODY>
이름: <%= getCookieValue(cookies, "NAME") %> <BR>
성별: <%= getCookieValue(cookies, "GENDER") %> <BR>
나이: <%= getCookieValue(cookies, "AGE") %>
</BODY>
</HTML>
<%!
    private String getCookieValue(Cookie[] cookies, String name) {
        String value = null;
        if (cookies == null)
            return null;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals(name))
                return cookie.getValue();
        }
        return null;
    }
%>
