<%--
  Created by IntelliJ IDEA.
  User: Jrady
  Date: 6/28/2018
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>2의 거듭제곱</title>
</head>
<body>
2 ^ 1 = <%= power(2, 1) %> <br>
2 ^ 2 = <%= power(2, 2) %> <br>
2 ^ 3 = <%= power(2, 3) %> <br>
2 ^ 4 = <%= power(2, 4) %> <br>
2 ^ 5 = <%= power(2, 5) %> <br>
</body>
</html>

<%!
    private int power(int base, int exponent) {
        int result = 1;
        for (int cnt = 0; cnt < exponent; cnt++)
            result *= base;
        return result;
    }
%>