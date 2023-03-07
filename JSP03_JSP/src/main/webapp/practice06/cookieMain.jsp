<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>메인 페이지 입니다.</h1>
	
	<%--
		1. 쿠키 배열을 얻은 후 반복문을 통해서 쿠키값을 하나씩 얻는다
		2. 쿠키값이 hong 과 일치한다면 웹브라우저에 홍길동님 안녕하세요 출력
	 --%>
	 
	 <%
	 	Cookie[] cookies = request.getCookies();
	 
	 	for(int i = 0; i < cookies.length; i++){
			
			String id = cookies[i].getValue();
			
			if(id.equals("hong")){
				out.print("<h2>홍길동님 안녕하세요~!</h2>");
			}
		}
	 %>
	 
	 <a href="cookieLogout.jsp">로그아웃</a>
	 
	 &nbsp;&nbsp;&nbsp;&nbsp;
	 
	 <a href="cookieTest.jsp">쿠키 확인하기</a>
	 
</body>
</html>