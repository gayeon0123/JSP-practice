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
		선언문을 사용해서 1 ~ 10까지 정수중에 하나를 반환해주는 메소드 만들기
		(Math.random())
		
		스크립트릿으로 메소드 호출하여 웹브라우저에 정수 출력하기
	 --%>
	 
	 <%!
	 public int getNumber(){
		 return (int)(Math.random() * 10) + 1; 
	 }
	 
	 %>
	 
	 <%
	 int number = getNumber();
	 
	 out.print("<h1>오늘의 숫자 : " + number + "<h1>");
	 %>
	 
</body>
</html>