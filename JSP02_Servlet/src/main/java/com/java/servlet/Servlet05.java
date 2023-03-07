package com.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/number")
public class Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// form에서 넘어온 데이터를 받아
		String strNumber = request.getParameter("number"); // getParameter 반환타입 : String
		
		// 1부터 넘어온 숫자까지의 합을 계산 후
		int number = 0;
		
		number = Integer.parseInt(strNumber); // 문자열을 정수값으로 바꿔줌
		
		int sum = 0;
		
		for(int i = 1; i <= number; i++) {
			sum += i;
		}
		
		// 웹브라우저에 출력하기
		// 예) 3 >> 1 + 2 + 3 : 6
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>숫자의 합</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>1부터 " + number + "까지의 합 : " + sum + "</h2>");
		out.print("</body>");
		out.print("</html>");

		out.close();
	}

}
