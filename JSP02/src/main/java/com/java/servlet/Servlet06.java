package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sum")
public class Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String number = request.getParameter("number");
		int num = Integer.valueOf(number);
		int sum = 0;
		for (int i=1;i<=num;i++) {
			sum += i;
		}
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>계산</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>결과</h2>");
		out.print("결과 : "+sum+"<br>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
	}

}
