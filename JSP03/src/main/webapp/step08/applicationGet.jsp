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
		String name=null;
		int age=0;
		
		if(application.getAttribute("name")!=null){
			name=(String)application.getAttribute("name");
		}
		if(application.getAttribute("age")!=null){
			age=(int)application.getAttribute("age");
		}
	
	%>
	
	<h2>어플리케이션에 저장된 데이터 출력</h2>
	
	<h2>이름 : <%=name %></h2>
	<h2>나이 : <%=age %></h2>
	
	
</body>
</html>