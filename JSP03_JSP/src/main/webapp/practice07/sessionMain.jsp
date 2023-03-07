<%@page import="java.util.Enumeration"%>
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
		getAttributeNames 메소드로 세션의 이름의 목록을
		Enumeration 타입으로 받은 다음 세션의 이름과 값을 모두 얻은 후(while문)
		세션값이 sung과 일치한다면 웹브라우처에 성춘향님 안녕하세요~! 출력
	 --%>
	 
	<%
		Enumeration<String> e = session.getAttributeNames();
		
		while(e.hasMoreElements()){
			
			String sName = e.nextElement();
		
			String sValue = session.getAttribute(sName).toString();
			
			if(sValue.equals("sung")){
				out.print("<h2>성춘향님 안녕하세요~!</h2>");
			}
		}
		
		%>
		
		<a href="sessionLogout.jsp">로그아웃</a>
		
		&nbsp;&nbsp;&nbsp;
		
		<a href="sessionTest.jsp">세션 확인하기</a>
		
</body>
</html>