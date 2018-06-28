<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>영화 정보 읽어오기</title>
</head>
<body>
<%
    String filename = request.getParameter("m_name");
%>
<h2><%= filename %>
</h2>
<%
    BufferedReader reader = null;
    try {
        String rfilename = application.getRealPath("/WEB-INF/movies/" + filename);
        reader = new BufferedReader(new FileReader(rfilename));
        while (true) {
            String str = reader.readLine();
            if (str == null) break;
            out.println(str);
        }
    } catch (FileNotFoundException fnfe) {
        out.println("파일이 존재하지 않습니다.");
    } catch (IOException ioe) {
        out.println("파일을 읽을 수 없습니다.");
    } finally {
        try {
            reader.close();
        } catch (Exception e) {
        }
    }
%>
</body>
</html>
