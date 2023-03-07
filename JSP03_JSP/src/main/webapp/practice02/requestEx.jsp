<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		1. 선언문으로 넘어온 데이터를 받을 변수 선언하기
		2. 스크립트릿으로 넘어온 데이터 받기
		3. 표현식으로 데이터 웹브라우저에 출력
	 --%>
	 
	 <%!
	 	String studentID, name, tel, major, area;
	 	String[] circle;
	 %>
	 
	 <%
	 	request.setCharacterEncoding("UTF-8");
	 
	 studentID = request.getParameter("studentID");
	 	name = request.getParameter("name");
	 	tel = request.getParameter("tel");
	 	major = request.getParameter("major");
	 	area = request.getParameter("area");
	 	
	 	circle = request.getParameterValues("circle");
	 	
	 %>
	 
	 <h2>form에서 넘어온 학생정보 보기</h2>
	 
	 <p>학번 : <%=studentID %></p>
	 <p>이름 : <%=name %></p>
	 <p>전화번호 : <%=tel %></p>
	 
	 <p>전공 : <%=major %></p>
	 <p>사는지역 : <%=area %></p>
	 <p>동아리 : <%=Arrays.toString(circle) %></p>
	 
</body>
</html>