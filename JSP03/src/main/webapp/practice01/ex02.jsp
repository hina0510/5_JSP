<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- Data 클래스와 SimpleDataFormat 클래스로 오늘의 날짜 웹브라우저에 출력 --%>
	
	<%
		Date now = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		SimpleDateFormat format2 = new SimpleDateFormat("a hh:mm:ss");
		
		String date = format1.format(now);
		String time = format2.format(now);
	%>
	
	<h2>오늘의 날짜 : <%=date %></h2>
	<h2>오늘의 시간 : <%=time %></h2>
	
	
	
	
</body>
</html>