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
		Cookie[] cookies = request.getCookies();
	
		for(int i = 0; i < cookies.length; i++){
			
			String str = cookies[i].getName();
			
			if(str.equals("cookieName")){
				
				cookies[i].setMaxAge(0);
				// 유효시간을 0으로 설정
				response.addCookie(cookies[i]);
				// 속성값이 변경된 쿠키를 웹브라우저에 탑재
				
				out.print("<h2>" + cookies[i].getName() + "쿠키가 삭제되었습니다.<h2>");
			}
		}
	%>
	
	<a href="cookieTest.jsp">쿠키 확인</a>
	
</body>
</html>