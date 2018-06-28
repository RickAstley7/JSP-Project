<%@page contentType="text/html; charset=utf-8" %>
<%
    String id = request.getParameter("ID");
    String password = request.getParameter("PASSWORD");
    if (locinCheck(id, password))
        session.setAttribute("ID", id);
    response.sendRedirect("LoginResult.jsp");

%>
<%!
    boolean locinCheck(String id, String password) {
        if (id.equals("thor") && password.equals("1234"))
            return true;
        else if (id.equals("ironman") && password.equals("4567"))
            return true;
        else return id.equals("hulk") && password.equals("789A");
    }
%>