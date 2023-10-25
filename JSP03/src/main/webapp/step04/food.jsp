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
		String food = request.getParameter("food");
	%>
	
	<h2>홍길동님이 좋아하는 음식은 <%=food %></h2>
	
	<a href="forwardForm.html">처음으로 이동</a>
	
</body>
</html>