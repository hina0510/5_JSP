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
		if(request.getParameter("popUp")!=null){
			String popUp = request.getParameter("popUp");
			if(popUp.equals("notShow")){
				Cookie cookie = new Cookie("popUp", "notShow");
				cookie.setMaxAge(60*60*24);
				response.addCookie(cookie);
				out.print("<script>");
				out.print("window.close()");
				out.print("</script>");
			}
		}
	%>
	
	<h3>공지사항입니다</h3>
	
	<br><br><br><br><br><br><br><br><br>
	
	<form action="popup.jsp" method="post">
	
		24시간동안 보지 않기
		<input type="checkbox" name="popUp" value="notShow">
		
		<input type="submit" value="클릭">
		
	</form>
	
</body>
</html>