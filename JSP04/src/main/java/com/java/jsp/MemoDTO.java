package com.java.jsp;

import java.sql.Timestamp;

public class MemoDTO {
	// DTO : Data Transfer Object
	// 계층 간 데이터 교환을 하기 위한 자바빈 객체
	
	private int memoId;
	private String nickName;
	private String contents;
	private Timestamp regTime;
	
	// 기본생성자 : 필수
	public MemoDTO() {
		
	}
	
	// 초기화생성자 : 선택
	public MemoDTO(int memoId, String nickName, String contents, Timestamp regTime) {
		super();
		this.memoId = memoId;
		this.nickName = nickName;
		this.contents = contents;
		this.regTime = regTime;
	}
}
