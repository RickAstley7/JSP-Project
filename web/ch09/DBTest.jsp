<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="java.sql.*" %>
<HTML>
<HEAD><TITLE>�����ͺ��̽��� �����ϱ�</TITLE></HEAD>
<BODY>
<H3>�����ͺ��̽� ���� �׽�Ʈ</H3>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "");
        if (conn != null) {
            out.println("webdb �����ͺ��̽��� �����߽��ϴ�.<BR>");
            conn.close();
            out.println("webdb �����ͺ��̽����� ������ �������ϴ�.<BR>");
        } else {
            out.println("webdb �����ͺ��̽��� ������ �� �����ϴ�.<BR>");
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
</BODY>
</HTML>
