<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		Date 클래스와 SimpleDateFormat 클래스를 사용하여
		오늘의 날짜를 웹 브라우저에 출력하기 (스크립트릿, 표현식)
		y : 년도, M : 월, d : 일, h : 시, m : 분, s : 초
	 --%>
	 
	 <%!
	 Date now = new Date();
	 
	 SimpleDateFormat format1 = new SimpleDateFormat("yyyy년 MM월 dd일");
	 SimpleDateFormat format2 = new SimpleDateFormat("a hh시 mm분 ss초");
	 
	 String date = format1.format(now);
	 String time = format2.format(now);
	 %>
	 
	 <p>Date : <%=date %></p>
	 <p>Time : <%=time %></p>
	 
</body>
</html>