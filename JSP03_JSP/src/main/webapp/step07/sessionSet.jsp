<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 세션객체는 생성하지 않아도 사용할 수 있는 내장 객체이다
		
		session.setAttribute("sessionName", "sessionValue");
	
		// setAttribute("세션이름", 세션 값);
		// "세션이름" : String타입, 세션 값 : Object타입
		
		session.setAttribute("sessionNumber", 1234);
		
	%>
	
	<h2>세션이 생성되었습니다.</h2>
	
	<a href="sessionGet.jsp">세션 얻기</a>

</body>
</html>