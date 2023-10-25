<%@page import="java.net.URLEncoder"%>
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
		request.setCharacterEncoding("UTF-8");
		String answer = request.getParameter("answer");
		
		if(answer.equals("홍길동")){
			
			answer = URLEncoder.encode(answer, "UTF-8");
			response.sendRedirect("OK.jsp?answer="+answer);
			
		}else{
			answer = URLEncoder.encode(answer, "UTF-8");
			response.sendRedirect("NG.jsp?answer="+answer);
		}
	%>
</body>
</html>