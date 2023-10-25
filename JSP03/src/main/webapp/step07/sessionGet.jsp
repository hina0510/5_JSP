<%@page import="java.util.Enumeration"%>
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
		String sessionNameValue = (String)session.getAttribute("sessionName");
		//getAttribute의 반환타입은 Object이다
		out.print("sessionName의 값 : "+sessionNameValue+"<br>");
		int sessionNumberValue = (int)session.getAttribute("sessionNumber");
		out.print("sessionNumber의 값 : "+sessionNumberValue+"<br>");
		out.print("<hr>");
		
		String sName;
		String sValue;
		
		Enumeration<String> e = session.getAttributeNames();
		//getAttributeNames() : 모든 세션의 이름들의 목록을 Enumeration 타입으로 반환
		while(e.hasMoreElements()){
			sName = e.nextElement();
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션 이름 : "+sName+"<br>");
			out.print("세션 값 : "+sValue+"<br>");
		}
		
		out.print("<hr>");
		String sessionID = session.getId();
		//한 브라우저당 고유한 아이디가 생성된다
		//웹브라우저별로 생성되어진 세션을 구분할 수 있다
		
		out.print("세션 아이디 : "+sessionID+"<br>");
		
		int sessionInter = session.getMaxInactiveInterval();
		//세션 유효시간 : 기본 30분
		
		out.print("세션 유효시간 : "+sessionInter+"<br>");
		out.print("<hr>");
		session.removeAttribute("sessionName");
		//세션 삭제
		
		e = session.getAttributeNames();
		
		while(e.hasMoreElements()){
			sName = e.nextElement();
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션 이름 : "+sName+"<br>");
			out.print("세션 값 : "+sValue+"<br>");
		}
		out.print("<hr>");
		session.invalidate();
		//세션의 모든 데이터를 삭제한다
		
		if(request.isRequestedSessionIdValid()){
			// 유효한 세션아이디가 있으면 true / 없으면 false
			out.print("유효한 세션이 있음<br>");
		}else{
			out.print("유효한 세션이 없음<br>");
		}
		
	%>
	
	
	
</body>
</html>