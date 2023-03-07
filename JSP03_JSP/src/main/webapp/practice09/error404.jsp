<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>

<%
	response.setStatus(404);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>404 에러가 발생되었습니다.</h2>
	
	<h2>관리자에게 문의해주세요 : 02-111-2222</h2>
	
	<script>
		alert('요청 페이지가 없습니다!');
	</script>
	
</body>
</html>