package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/student")
public class Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String[] circle = request.getParameterValues("circle");
		String subject = request.getParameter("subject");
		String area = request.getParameter("area");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>학생 정보</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>폼에서 넘어온 학생 정보</h2>");
		out.print("학번 : "+id+"<br>");
		out.print("이름 : "+name+"<br>");
		out.print("나이 : "+age+"<br>");
		out.print("동아리 : "+Arrays.toString(circle)+"<br>");
		out.print("전공 : "+subject+"<br>");
		out.print("지역 : "+area+"<br>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
	}

}
