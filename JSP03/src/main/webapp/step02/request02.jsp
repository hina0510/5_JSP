<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		String id, name, age, major;
		String[] circle;
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		id = request.getParameter("id");
		name = request.getParameter("name");
		age = request.getParameter("age");
		major = request.getParameter("major");
		circle = request.getParameterValues("circle");
	%>
	
	<h2>폼에서 넘어온 학생정보</h2>
	
	<h3>학번 : <%=id %></h3>
	<h3>이름 : <%=name %></h3>
	<h3>나이 : <%=age %></h3>
	<h3>전공 : <%=major %></h3>
	<h3>동아리 : <%=Arrays.toString(circle) %></h3>

</body>
</html>