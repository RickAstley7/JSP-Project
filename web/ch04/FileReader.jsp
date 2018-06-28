<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>파일 읽기</title>
</head>
<body>
<%
    BufferedReader reader = null;
    try {
        String filePath = application.getRealPath("/ch04/input.txt");

        reader = new BufferedReader(new FileReader(filePath));
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
