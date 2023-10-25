<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	선언문으로 이름, 나이, 전화번호의 변수 선언
	스크립트릿으로 변수 초기화
	표현식으로 웹브라우저에 변수의 값 출력 --%>
	
	<%! 
		String name;
		int age;
		String tel;
	%>
	
	<%
		name = "홍길동";
		age = 20;
		tel = "010-0000-1111";
	%>
	
	이름 : <%=name %><br>
	나이 : <%=age %><br>
	전화번호 : <%=tel %><br>
	
	
	
	
	
</body>
</html>