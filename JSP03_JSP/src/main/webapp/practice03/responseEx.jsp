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
		1. 넘어온 데이터 받기
		2. 넘어온 데이터가 홍길동 이라면 sendRedirect로 OK.jsp로 이동 요청하기
		   홍길동이 아니라면 sendRedirect로 NG.jsp로 이동 요청하기
	 --%>
	 
	 <%
	 request.setCharacterEncoding("UTF-8");
	 
	 String answer = request.getParameter("name");
	 
	 if(answer.equals("홍길동")){
		 response.sendRedirect("OK.jsp");
		 
	 }else{
		 response.sendRedirect("NG.jsp");
	 }
	 
	 %>
	 
</body>
</html>