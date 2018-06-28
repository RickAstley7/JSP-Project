<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>번호 랜덤 표시하기</title>
</head>
<body>
<c:forEach var="num" items="${ARR}">
    ${num} -
</c:forEach>
</body>
</html>