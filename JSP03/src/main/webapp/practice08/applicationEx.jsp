<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- application 객체를 사용하여 applicationEx.jsp 페이지에 방문하는 방문자수 출력하기--%>
	
	<%
		int count=0;
	
		if(application.getAttribute("visit")!=null){
			count = (int)application.getAttribute("visit");
		}
		
		count++;
		application.setAttribute("visit", count);
	%>
	
	<h2>방문 횟수 : <%=count %></h2>
	
</body>
</html>