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
		세션 안의 데이터 모두 삭제
	 --%>

	<%
		session.invalidate();
	%>
	
	<h2>로그아웃 되었습니다!</h2>
	
	<a href="sessionTest.jsp">세션 확인하기</a>
	
</body>
</html>