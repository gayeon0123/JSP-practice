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
		jsp forward 액션태그로 nation.jsp로 요청처리 전달하기
	 --%>
	 
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:forward page="nation.jsp" />
	
</body>
</html>