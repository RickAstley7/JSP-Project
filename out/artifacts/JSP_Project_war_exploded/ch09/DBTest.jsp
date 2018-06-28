<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="java.sql.*" %>
<HTML>
<HEAD><TITLE>데이터베이스로 연결하기</TITLE></HEAD>
<BODY>
<H3>데이터베이스 연결 테스트</H3>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "");
        if (conn != null) {
            out.println("webdb 데이터베이스로 연결했습니다.<BR>");
            conn.close();
            out.println("webdb 데이터베이스로의 연결을 끊었습니다.<BR>");
        } else {
            out.println("webdb 데이터베이스로 연결할 수 없습니다.<BR>");
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
</BODY>
</HTML>
