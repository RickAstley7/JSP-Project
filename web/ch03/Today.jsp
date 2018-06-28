<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.GregorianCalendar" %>
<% GregorianCalendar now = new GregorianCalendar(); %>
<%= String.format("%TY년 %Tm월 %Td일", now, now, now) %>
