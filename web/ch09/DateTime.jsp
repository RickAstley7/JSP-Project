<%@page contentType="text/html; charset=utf-8" import="java.io.*, java.util.*" %>
<%!
    private PrintWriter logFile;

    public void jspInit() {
        String filename = "c:\\data\\datetime_log.txt";
        try {
            logFile = new PrintWriter(new FileWriter(filename, true));
        } catch (IOException e) {
            System.out.printf("%TT - %s 파일을 열 수 없습니다. %n", new GregorianCalendar(), filename);
        }
    }
%>
<HTML>
<HEAD><TITLE>현재의 날짜와 시각</TITLE></HEAD>
<BODY>
<%
    jspInit();
    GregorianCalendar now = new GregorianCalendar();
    String date = String.format("현재 날짜: %TY년 %Tm월 %Te일", now, now, now);
    String time = String.format("현재 시각: %TI시 %TM분 %TS초", now, now, now);
    out.println(date + "<BR>");
    out.println(time + "<BR>");
    if (logFile != null)
        logFile.printf("%TF %TT에 호출되었습니다.%n", now, now);

    jspDestroy();
%>
</BODY>
</HTML>
<%!
    public void jspDestroy() {
        if (logFile != null)
            logFile.close();
    }
%>
