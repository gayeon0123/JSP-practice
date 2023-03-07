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
		쿠키배열을 얻은 후 반복문을 통해 쿠키값이 hong인 쿠키 삭제하기
	 --%>
	 
	 <%
		Cookie[] cookies = request.getCookies();
	
		for(int i = 0; i < cookies.length; i++){
			
			String id = cookies[i].getValue();
			
			if(id.equals("hong")){
				
				cookies[i].setMaxAge(0); // 유효시간을 0으로 설정
				response.addCookie(cookies[i]); // 속성값이 변경된 쿠키를 웹브라우저에 탑재
				out.print("<h2>로그아웃 되었습니다!</h2>");
			}
		}
	%>
	
	<a href="cookieTest.jsp">쿠키 확인하기</a>
	
	 
</body>
</html>