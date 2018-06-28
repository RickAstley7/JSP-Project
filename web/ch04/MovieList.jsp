<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>영화 정보 읽어오기</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
</head>
<body>
<div class="container">
    <h2>인기 영화 목록</h2>
    <%
        File movie = new File(application.getRealPath("/WEB-INF/movies/"));
        String[] lists = movie.list();
        for (String m : lists) {
            out.print("<a href='MovieReader.jsp?m_name=" + m + "''>" + m + "</a><br>");
        }
    %>
</div>
</body>
</html>
