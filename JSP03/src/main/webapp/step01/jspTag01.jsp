<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html 주석 : 웹브라우저에 노출됨 -->
	
	<%-- jsp 주석 : 웹브라우저에 노출되지 않음(보안성이 뛰어남) --%>
	
	<%-- 스크립트릿(scriptlet) : <% %>
	이 안에는 자바에서 쓰는 모든 것을 사용할 수 있는 자바의 영역이다
	자바의 기능을 가지고 여러가지 작업을 할 수 있다--%>
	<% 
	for(int i=1;i<=10;i++){
		if(i%2==1){
			out.print(i+"&nbsp");
		}
	}
		%>
	<hr>
	

	
	
	
</body>
</html>