<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name;
		String value;
	
		Enumeration<String> e = session.getAttributeNames();
		
		while(e.hasMoreElements()){
			name = e.nextElement();
			value = session.getAttribute(name).toString();
			if(value.equals("sung")){
				out.print("성춘향님 안녕하세요<br>");
			}
		}
		
	%>
	
	<a href="sessionTest.jsp">세션 확인</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="sessionLogout.jsp">로그아웃</a>
	
	
</body>
</html>