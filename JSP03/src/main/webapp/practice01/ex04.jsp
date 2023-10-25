<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- Integer 타입의 ArrayList를 생성한 후
	반복문과 Math.random()를 사용하여 로또번호를 뽑은 후
	ArrayList에 저장,출력 --%>
	<%-- contains(객체) : 리스트 내부에 해당 객체가 존재하면 true 반환 --%>
	
	
	<%
		ArrayList<Integer> arr = new ArrayList<Integer>();
		while(arr.size()<6){
			int num = (int)(Math.random()*45)+1;
			if(!arr.contains(num)){
				arr.add(num);
			}
		}
		
		Collections.sort(arr);
	%>
	
	<% 
		for(int num:arr){
			out.print(num+"&nbsp");
		}
	
	%>
	
	
	
	
	
	
</body>
</html>