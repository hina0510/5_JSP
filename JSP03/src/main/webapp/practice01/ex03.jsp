<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--선언문과 Math.random() 사용하여 1부터 10까지 정수 중 하나를 얻는 메소드
	웹 브라우저에 메소드를 호출하여 정수 중 하나를 얻어 출력 --%>
	
	<%!
		public int getNumber(){
			return (int)(Math.random()*10)+1;
		}
	%>
	
	출력 : <%=getNumber() %>
	
	
	
	
	
	
	
</body>
</html>