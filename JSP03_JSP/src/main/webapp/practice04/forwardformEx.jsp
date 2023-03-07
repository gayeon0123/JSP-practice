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
		여행가고싶은 나라 입력받는 폼 만들기
		formforwardEx.jsp로 전송
	 --%>
	 
	 <h2>여행 가고싶은 나라는?</h2>
	 
	 <form action="forwardEx.jsp" method="post">
	 	
	 	여행 가고싶은 나라 : <input type="text" name="nation">
	 	
	 	<input type="submit" value="나라 전송">
	 
	 </form>
	 
</body>
</html>