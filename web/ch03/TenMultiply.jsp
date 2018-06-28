<%@ page contentType="text/html; charset=utf-8" %>

<html>
<head>
    <title>1부터 10까지의 곱</title>
    <%--이것은 JSP에 의해 생성된 HTML 문서입니다.--%>
</head>
<body>
<!--다음은 데이터를 처리하는 스크립틀릿입니다.-->
<% int result = 1; // 곱을 저장할 변수
    /*1부터 10까지 곱하는 반복문*/
    for (int cnt = 1; cnt <= 10; cnt++)
        result *= cnt;
%>
1부터 10까지 곱한 값은? <%= result %>
</body>
</html>
