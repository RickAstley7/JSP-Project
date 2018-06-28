<%@page contentType="text/html; charset=utf-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>1부터 100까지의 합</title>
</head>
<body>
<%
    int total = 0;
    for (int i = 0; i <= 100; i++) {
        total += i;
    }
%>
1부터 100까지의 합은? <%= total %> <br>
</body>
</html>