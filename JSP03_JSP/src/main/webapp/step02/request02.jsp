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

	<%!
		String id, pw, name;
		String[] hobby;
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		
		hobby = request.getParameterValues("hobby");
	
	%>
	
	<h2>form에서 넘어온 회원정보 보기</h2>
	
	<p>아이디 : <%=id %></p>
	<p>비밀번호 : <%=pw %></p>
	<p>이름 : <%=name %></p>
	<p>취미 : <%=Arrays.toString(hobby) %></p>
	
</body>
</html>