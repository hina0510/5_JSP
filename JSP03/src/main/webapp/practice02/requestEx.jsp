<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--선언문으로 넘어올 데이터의 변수 선언
	스크립트릿으로 넘어오는 데이터 받기
	표현식으로 웹브라우저에 넘어온 데이터 출력 --%>
	
	<%!
		String id, pw, name, tel, add;
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		tel = request.getParameter("tel");
		add = request.getParameter("add");
	%>
	
	<h2>폼에서 넘어온 정보</h2>
	
	<h3>아이디 : <%=id %></h3>
	<h3>비밀번호 : <%=pw %></h3>
	<h3>이름 : <%=name %></h3>
	<h3>전화번호 : <%=tel %></h3>
	<h3>주소 : <%=add %></h3>
	
</body>
</html>