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
		Cookie[] cookies = request.getCookies();
		
		boolean cookieCheck = false;
		if(cookies!=null){
			for(int i=0;i<cookies.length;i++){
				String name = cookies[i].getName();
				String value = cookies[i].getValue();
				if(name.equals("popUp") && value.equals("notShow")){
					cookieCheck=true;
					
				}
			}
		}
		
	%>
	
	<%
		if(cookieCheck==false){
	%>
	
	<script>
		window.open('popup.jsp', 'pop', 'height=700,width=400');
		//새창으로 팝업을 만들 때 사용하는 함수
		//('팝업주소', '팝업창 이름', '팝업창 설정');
		
	</script>
	
	<%
		}
	%>
	
</body>
</html>