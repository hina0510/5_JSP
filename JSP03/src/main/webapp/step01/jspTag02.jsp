<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 선언문(declaration) : <%! %>
	jsp 페이지 내에서 사용되는 전역변수 또는 메소드를 선언할 때 사용 --%>
	
	<%!
	String name = "홍길동";
	int age=20;
	%>
	
	<%!
	public int sum(int a, int b){
		return a+b;
	}
	%>
	
	<%
		out.print("이름 : "+name+"<br>");
		out.print("나이 : "+age+"<br>");
		out.print("합 : "+sum(10,20)+"<br>");
	%>
	
	
	
</body>
</html>