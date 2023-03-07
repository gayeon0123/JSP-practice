package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/data2")
public class Servlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 한글처리 하기
		request.setCharacterEncoding("UTF-8");
		
		// 2. 넘어온 데이터 받기 [getParameter, getParameterValues]
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		String[] hobby = request.getParameterValues("hobby");
		
		String area = request.getParameter("area");
		
		String address = request.getParameter("address");
		// getParameter 메소드는 해당하는 이름의 Entry가 없을 경우
		// null 값을 반환한다
		
		// 3. 넘어온 데이터 웹 브라우저에 출력하기
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>form 데이터</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>넘어온 회원정보</h2>");
		out.print("아이디 : " + id + "<br>");
		out.print("비밀번호 : " + pw + "<br>");
		out.print("이름 : " + name + "<br>");
		out.print("전화번호 : " + tel + "<br>");
		out.print("취미 : " + Arrays.toString(hobby) + "<br>");
		out.print("사는지역 : " + area + "<br>");
		out.print("주소 : " + address + "<br>");
		out.print("</body>");
		out.print("</html>");

		out.close();
		
	}

}
