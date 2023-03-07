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
		include : 현재의 문서에 다른문서
		즉, 다른 파일의 내용을 포함시켜 출력하는 것을 말한다
	 --%>
	 
	 <h1>include01 페이지 입니다.</h1>
	 
	 <%@ include file="include02.jsp" %>
	 
	 <h3>다시 include01 페이지 입니다.</h3>
	 
</body>
</html>