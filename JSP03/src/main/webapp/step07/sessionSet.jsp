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
		// 세션 객체는 생성하지 않아도 사용할 수 있는 내장 객체이다
		session.setAttribute("sessionName", "sessionValue");
		session.setAttribute("sessionNumber",12345);
	%>
	
	<h2>세션이 생성되었습니다</h2>
	<a href="sessionGet.jsp">세션 얻기</a>
</body>
</html>