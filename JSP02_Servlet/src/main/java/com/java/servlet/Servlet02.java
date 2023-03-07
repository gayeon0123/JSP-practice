package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		System.out.println("doGet 메소드 입니다.");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Parameter 받기</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>form에서 넘어온 데이터</h2>");
		out.print("<p>아이디 : " + id + "</p>");
		out.print("<p>비밀번호 : " + pw + "</p>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// POST 방식의 요청 한글처리
		
		System.out.println("doPost 메소드 입니다.");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Parameter 받기</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>form에서 넘어온 데이터</h2>");
		out.print("<p>아이디 : " + id + "</p>");
		out.print("<p>비밀번호 : " + pw + "</p>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
		
	}

}
