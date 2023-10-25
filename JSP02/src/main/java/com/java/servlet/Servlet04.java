package com.java.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet04
 */
@WebServlet("/joinCheck2")
public class Servlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Enumeration<String> e = request.getParameterNames();
		//넘어오는 모든 파라미터의 이름들의 목록을 
		//Enumeration 타입으로 반환한다
		while(e.hasMoreElements()) {
			//읽어올 요소가 있는지 확인 후 있으면 true, 없으면 false 반환
			
			String name = e.nextElement();
			//다음 요소를 읽어준다
			
			String[] values = request.getParameterValues(name);
			
			for(String value : values) {
				System.out.println("이름 : "+name+", 값 : "+value);
			}
		}
	}

}
