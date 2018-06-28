<%@page contentType="text/html; charset=utf-8" %>
<%@page session="false" %>
<%@page import="java.net.URLEncoder" %>
<%
    request.setCharacterEncoding("utf-8");
    String cookieName = request.getParameter("COOKIE_NAME");
    String cookieValue = request.getParameter("COOKIE_VALUE");
    cookieName = URLEncoder.encode(cookieName, "utf-8");
    response.addCookie(new Cookie(cookieName, cookieValue));
    response.sendRedirect("DisplayCookie.jsp");
%>