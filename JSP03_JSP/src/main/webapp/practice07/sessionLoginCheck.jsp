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
		1. 넘어온 데이터 받기(id, pw)
		2. 아이디가 sung 이고, 비밀번호가 1111 이라면
		   session 객체에 아이디값으로 세션값 설정하기
		   setAttribute("id", id);
		   리다이렉트로 sessionMain.jsp 로 이동 요청하기
		   
		3. 아이디, 비밀번호가 틀리면 
		   리다이렉트로 sessionLogin.html 로 이동 요청하기
	 --%>
	 
	 <%
	 
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 
	 if(id.equals("sung") && pw.equals("1111")){
		 
		 session.setAttribute("id", id);
		 response.sendRedirect("sessionMain.jsp");
		 
	 }else{
		 response.sendRedirect("sessionLogin.html");
	 }
	 
	 %>

</body>
</html>