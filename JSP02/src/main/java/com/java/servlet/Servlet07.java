package com.java.servlet;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet07")
public class Servlet07 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 입니다");
	}
	
	public void destroy() {
		System.out.println("destroy 메서드 입니다");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메서드 입니다");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 메서드 입니다");
	}
	// 메소드를 만든 후에 이 메소드가 선처리 메소드임을 어노테이션으로 지정해준다
	@PostConstruct
	public void postConstruct() {
		System.out.println("선처리 postConstruct 메서드 입니다");
	}
	// 메소드를 만든 후에 이 메소드가 후처리 메소드임을 어노테이션으로 지정해준다
	@PreDestroy
	public void preDestroy() {
		System.out.println("후처리 preDestroy 메서드 입니다");
	}

}
