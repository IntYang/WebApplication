<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*, java.io.*"%>
<%
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH) + 1;
	int date = now.get(Calendar.DAY_OF_MONTH);
%>
<%=year%>년 <%=month%>월 <%=date%>일