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
		Cookie[] cookies = request.getCookies();// 쿠키 배열로 얻는다
		
		for(int i=0; i<cookies.length;i++){
			//쿠키 이름 : getName()
			//쿠키 값 : getValue()
			String str = cookies[i].getName();
			
			if(str.equals("cookieName")){
				out.print("쿠키 이름 : "+cookies[i].getName()+"<br>");
				out.print("쿠키 값 : "+cookies[i].getValue()+"<br>");
			}
		}
	%>
	
	<a href="cookieDelete.jsp">쿠키 삭제</a>
	
</body>
</html>