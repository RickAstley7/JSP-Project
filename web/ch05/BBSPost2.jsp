<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*,java.io.*" %>

<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    Date date = new Date();
    Long time = date.getTime();
    String filename = time + ".txt";
    String result = null;
    PrintWriter writer = null;
    try {
        String filepath = application.getRealPath("/WEB-INF/bbs/") + filename;
        writer = new PrintWriter(filepath);
        writer.printf("제목 : %s %n", title);
        writer.printf("글쓴이: %s %n", name);
        writer.println(content);
        result = "SUCCESS";
    } catch (IOException ioe) {
        result = "FAIL";
    } finally {
        try {
            writer.close();
        } catch (Exception e) {
        }
    }
    response.sendRedirect(application.getContextPath() + "BBSPostResult.jsp?result=" + result);
%>