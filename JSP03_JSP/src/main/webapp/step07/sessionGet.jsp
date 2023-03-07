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

	<%
		String sessionNameValue = (String)session.getAttribute("sessionName");
		// String sessionNameValue = session.getAttribute("sessionName"); (x)
		// getAttribute 반환타입은 Object이다
		// String타입 변수에 저장할 시 String타입으로 캐스팅 해주어야 한다
		
		out.print("sessionName의 값 : " + sessionNameValue + "<br>");
		
		int sessionNumberValue = (Integer)session.getAttribute("sessionNumber");
		// int sessionNumberValue = session.getAttribute("sessionNumber"); (x)
		
		out.print("sessionNumber의 값 : " + sessionNumberValue + "<br>");
		
		out.print("<hr>");
		
		String sName;
		String sValue;
		
		Enumeration<String> e = session.getAttributeNames();
		
		while(e.hasMoreElements()){ // hasMoreElements : 내용이 있으면 true, 없으면 false
			
			sName = e.nextElement();
		
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션 이름 : " + sName + "<br>");
			out.print("세션 값 : " + sValue + "<br>");
		}
		
		out.print("<hr>");
		
		String seesionID = session.getId();
		// 한 브라우저당 고유한 아이디가 생성된다
		// 웹브라우저별로 생성된 세션을 구분할 수 있다
		out.print("세션 아이디 : " + seesionID + "<br>");
		
		int sessionInter = session.getMaxInactiveInterval();
		// 세션의 유효시간 : (기본 30분)
		out.print("세션의 유효시간 : " + sessionInter + "<br>");
		
		out.print("<hr>");
		
		session.removeAttribute("sessionName");
		// 세션 삭제 : removeAttribute("삭제할 세션 이름");
		
		e = session.getAttributeNames();
		
		while(e.hasMoreElements()){ 
			
			sName = e.nextElement();
		
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션 이름 : " + sName + "<br>");
			out.print("세션 값 : " + sValue + "<br>");
		}
		
		out.print("<hr>");
		
		session.invalidate();
		// 세션 무효화 : 세션의 모든 데이터를 삭제
		
		if(request.isRequestedSessionIdValid()){
			// 유효한 세션이 있다면 true, 없다면 false
			out.print("유효한 세션이 있음<br>");
			
		}else{
			out.print("유효한 세션이 없음<br>");
		}
		
	%>
	
</body>
</html>