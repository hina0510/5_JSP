<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 지시자 : <%@ %>
    jsp 페이지의 전체적인 속성을 지정할 때 사용한다
    page, include, taglib 지시자가 있다.
    page : 해당 페이지의 속성을 지정
    include : 별도의 페이지를 현재 페이지에 삽입
    taglib : 태그 라이브러리의 태그 사용
     --%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		int[] array = {10, 20, 30, 40, 50};
		out.print("배열의 요소 : " + Arrays.toString(array));
	%>
	
	
	
	
	
	
	
	
</body>
</html>