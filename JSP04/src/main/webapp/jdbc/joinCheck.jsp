<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		private Connection conn;
		private PreparedStatement pstat;
		// PreparedStatement는 Statement를 상속받은 인터페이스
		// 1. Statement의 기능향상(여러번 수행할 때 빠른 속도)
		// 2. 코드 안정성과 가독성이 높다
		
		private String id, pw, name, email, address;
		
		private String driver = "oracle.jdbc.OracleDriver";
		private String url = "jdbc:oracle:thin:@localhost:1521:xe";
		private String uid = "c##JSPUSER";
		private String upw = "jsp123";
	%>

	<%
		request.setCharacterEncoding("UTF-8");
		
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		email = request.getParameter("email");
		address = request.getParameter("address");
		
		String query = "INSERT INTO KGMEMBER(ID, PW, NAME, EMAIL, ADDRESS) "+" VALUES('?, ?, ?, ?, ?)";
		// 데이터가 들어갈 자리는 ?로 작성한다.
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			pstat = conn.prepareStatement(query);
			// 객체 생성 시에 SQL 구문이 지정된다. 차이점은 보안에 유리함
			
			pstat.setString(1, id);
			// setter 메소드를 사용하여 첫번째 인자는 ?의 인덱스를 넣어주고 두번째 인자는 ?에 대한 데이터를 넣어준다
			// ?의 인덱스는 1부터 시작한다.
			pstat.setString(2, pw);
			pstat.setString(3, name);
			pstat.setString(4, email);
			pstat.setString(5, address);
			
			int result = pstat.executeUpdate();
			// 리턴 결과는 변경된 레코드의 수
			
			if(result==1){
				System.out.println("insert 성공");
				response.sendRedirect("memberList.jsp");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
			
		}
		
		
		
	 %>
	 
</body>
</html>