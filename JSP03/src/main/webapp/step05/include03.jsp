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
		int a=100;//오류발생
	%>
	<h2>include03 페이지 입니다.</h2>
	
	<jsp:include page="include04.jsp"></jsp:include>
	
	<h2>다시 include03 페이지 입니다.</h2>
	
	<%-- include 액션 태그를 만나면 해당 페이지로 실행제어가 넘어가서 포함되는 페이지를 실행시킨다
	해당 페이지의 실행이 종료되면 원래 페이지로 복귀하며 최종적으로 클라이언트한테 보여지게 된다 --%>
</body>
</html>