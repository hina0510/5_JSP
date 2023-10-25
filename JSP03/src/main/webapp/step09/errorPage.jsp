<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page isErrorPage="true" %>

<%
	response.setStatus(200); //정상 수치가 200
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>현재 페이지에서 예외적 상황이 발생되었습니다</h2>
	
	<%=exception.getMessage() %>
	
</body>
</html>