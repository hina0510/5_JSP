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
		Connection conn;
		PreparedStatement pstat;
		ResultSet rs;
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		String uid = "c##JSPUSER";
		String upw = "jsp123";
		
		String query = "SELECT * FROM KGMEMBER";
		
	%>
	
	<%
		try{
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstat = conn.prepareStatement(query);
			
			rs = pstat.executeQuery();
			
			while(rs.next()){
				
				String id = rs.getString("ID");
				String pw = rs.getString("PW");
				String name = rs.getString("NAME");
				String email = rs.getString("EMAIL");
				String address = rs.getString("ADDRESS");
				Timestamp regDate = rs.getTimestamp("REGDATE");
				
				out.print("아이디 : "+id+", 비밀번호 : "+pw+", 이름 : "
				+name+", 이메일 : "+email+", 주소 : "+address+", 가입일 : "+regDate+"<br>");
				
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
			try{
				if(rs != null){
					rs.close();
				}
				if(pstat != null){
					pstat.close();
				}
				if(conn != null){
					conn.close();
				}
			}catch(Exception e2){
				
			}
			
		}
		
		
		
	%>

</body>
</html>