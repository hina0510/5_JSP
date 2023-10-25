package com.java.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet02
 */
@WebServlet("/getPost")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메서드입니다");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("form에서 넘어온 아이디 : "+id);
		System.out.println("form에서 넘어온 비밀번호 : "+pw);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 메서드입니다");
		
		request.setCharacterEncoding("UTF-8");
		//POST방식의 한글 처리
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("form에서 넘어온 아이디 : "+id);
		System.out.println("form에서 넘어온 비밀번호 : "+pw);
	}

}
