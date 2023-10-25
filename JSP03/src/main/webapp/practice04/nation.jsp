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
		String nation = request.getParameter("nation");
	%>
	
	<h2>가고싶은 나라 : <%=nation %></h2>
	<a href="formEx.html">처음으로 이동</a>
	
</body>
</html>