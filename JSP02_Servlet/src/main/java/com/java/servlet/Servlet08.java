package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet08 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletConfig config = super.getServletConfig();
		// ServletConfig config = this.getServletConfig(); 도 가능
		// ServletConfig config = getServletConfig(); 도 가능
		// ServletConfig 객체는 서블릿이 초기화되는 동안
		// 참조해야 할 정보를 전달해주는 역할을 한다
		
		String id = config.getInitParameter("id");
		String pw = config.getInitParameter("pw");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE thml>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>초기화 파라미터</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>초기화 파라미터 아이디 : " + id + "</h2>");
		out.print("<h2>초기화 파라미터 비밀번호 : " + pw + "</h2>");
		out.print("</body>");
		out.print("</html>");
		
	}

}
