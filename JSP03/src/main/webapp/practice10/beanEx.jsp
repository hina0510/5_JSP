<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="member" class="com.java.jsp.Member" scope="page"/>
	
	<jsp:setProperty name="member" property="name" value="홍길동"/>
	<jsp:setProperty name="member" property="age" value="20"/>
	<jsp:setProperty name="member" property="address" value="seoul"/>
	<jsp:setProperty name="member" property="tel" value="010-0000-1111"/>
	
	이름 : <jsp:getProperty name="member" property="name"/><br>
	나이 : <jsp:getProperty name="member" property="age"/><br>
	주소 : <jsp:getProperty name="member" property="address"/><br>
	전화번호 : <jsp:getProperty name="member" property="tel"/><br>
	
</body>
</html>