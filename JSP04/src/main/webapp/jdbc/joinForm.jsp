<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		회원가입 폼
		ID	VARCHAR2(50 BYTE)
		PW	VARCHAR2(50 BYTE)
		NAME	NVARCHAR2(100 CHAR)
		EMAIL	VARCHAR2(100 BYTE)
		ADDRESS	NVARCHAR2(100 CHAR)
	 -->
	 <form action="joinCheck.jsp" method="post">
	 	ID : <input type="text" name="id"><br>
		PW	: <input type="password" name="pw"><br>
		NAME : <input type="text" name="name"><br>
		EMAIL : <input type="text" name="email"><br>
		ADDRESS : <input type="text" name="address"><br>
	
		<input type="submit" value="전송">
		
	 </form> 
	 
	
</body>
</html>