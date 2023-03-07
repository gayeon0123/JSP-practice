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
		전달된 데이터를 받아 출력하기
	 --%>
	 
	 <%
	 	String nation = request.getParameter("nation");
	 %>
	 
	 <h2>홍길동님이 가고싶은 나라 : <%=nation %></h2>
	 
</body>
</html>