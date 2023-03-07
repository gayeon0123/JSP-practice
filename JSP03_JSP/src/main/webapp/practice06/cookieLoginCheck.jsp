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
		2. 아이디가 hong이고, 비밀번호가 1234 라면
		   넘어온 아이디값으로 쿠키값 설정한 후 쿠키 탑재하기
		   new Cookie("id", id);
		   탑재 후에 리다이렉트로 cookieMain.jsp로 이동 요청하기
		   
		3. 아이디, 또는 비밀번호가 틀리다면
		   리다이렉트로 cookieLogin.html 로 이동 요청하기
	 --%>
	 
	 <%
	 request.setCharacterEncoding("UTF-8");
	 
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 
	 if(id.equals("hong") && pw.equals("1234")){
		 
		 Cookie cookie = new Cookie("id", id);
		 cookie.setMaxAge(60 * 60);
		 response.addCookie(cookie);
		 
		 response.sendRedirect("cookieMain.jsp");
		 
	 }else{
		 response.sendRedirect("cookieLogin.html");
	 }
	 
	 %>
	 
</body>
</html>