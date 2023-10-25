package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/hello")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Servlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request : 클라이언트로부터의 요청처리 객체
		//ex)로그인 시 : 클라이언트의 아이디와 비밀번호 정보는 request 객체에 담겨져 온다
		//responsee : 클라이언트로의 응답처리 객체
		//ex)로그인 시 : 회원인지 아닌지 정보를 클라이언트한테 보낸다
		
		response.setCharacterEncoding("UTF-8");
		//해당 문서를 UTF-8로 웹브라우저에 보낸다
		response.setContentType("text/html; charset=UTF-8");
		//웹브라우저에게 해당 문서는 html이고 UTF-8 로 해석하라는 뜻
		PrintWriter out = response.getWriter();
		//웹브라우저에게 출력하기 위한 출력스트림 얻기
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>firstServlet</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>Hello world!</h1>");
		out.print("<h2>Servlet 시작합니다</h2>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

