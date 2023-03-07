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
		if(request.getParameter("pop") != null){
			
			String popUp = request.getParameter("pop");
			
			if(popUp.equals("notShow")){
				
				Cookie cookie = new Cookie("pop", "notShow");
				
				cookie.setMaxAge(60 * 60 * 24); // 하루 설정
				cookie.setPath("/");
				response.addCookie(cookie); // cookie객체 탑재
				
				out.print("<script>");
				out.print("window.close();"); // 웹페이지를 닫음
				out.print("</script>");
			}
		}
	%>

	<p>공지사항 입니다.</p>
	
	<br><br><br><br><br><br><br><br><br><br><br><br>
	
	<form action="popUp.jsp" method="post">
	
		오늘 공지사항 보지 않기!
		
		<input type="checkbox" name="pop" value="notShow">
		
		<input type="submit" value="클릭!">
	
	</form>

</body>
</html>