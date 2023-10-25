package com.java.jsp;

import java.sql.*;
import java.util.ArrayList;

public class MemoDAO {
	
	// 싱글톤 패턴
	// 단 하나의 객체만 생성하도록 보장하는 것
	
	private MemoDAO() {
		
	}
	
	private static MemoDAO instance = new MemoDAO();
	public static MemoDAO getInstance(){
		return instance;
	}

	private Connection conn;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "c##JSPUSER";
	String upw = "jsp123";
	
	//폼에서 넘어온 데이터를 받아서 DB에 데이터를 넣는 기능의 메소드
	public int insertMemo(MemoDTO dto){
		int result = 0;
		String query = "INSERT INTO MEMO(MEMOID, NICKNAME, CONTENTS) "+"VALUES(MEMO_SEQ.NEXTVAL, ?, ?)";
		
		try {
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			pstat = conn.prepareStatement(query);
			
			pstat.setString(1, dto.getNickName());
			pstat.setString(2, dto.getContents());
			
			result = pstat.executeUpdate();
			// 변경될 레코드의 수
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			
			try {
				
				if(pstat != null)pstat.close();
				if(conn != null)conn.close();				
				
			}catch(Exception e2) {}
		}
		
		return result;
	}
	
	// 메모장을 만들기 위해 DB에서 데이터를 얻어오는 메소드
	public ArrayList<MemoDTO> memoList(){
		ArrayList<MemoDTO> list = new ArrayList<>();
		
	}
	
}
