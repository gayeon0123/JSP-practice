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
	
		boolean cookieCheck = false;
	
		if(cookies != null){
			
			for(int i = 0; i < cookies.length; i++){
				
				String cName = cookies[i].getName();
				String cValue = cookies[i].getValue();
				
				if(cName.equals("pop") && cValue.equals("notShow")){
					
					cookieCheck = true;
				}
			}
		}
		
		if(cookieCheck == false){
			
			out.print("<script>");
			out.print("window.open('popUp.jsp', 'pop', 'width=450, height=650')");
			out.print("/<script>");
		}
	%>
	
	<%--
	
	<script>
		window.open('popUp.jsp', 'pop', 'width=450, height=650');
	</script>
	
		window 객체 : 자바스크립트 웹프로그램의 전역객체
		open 함수 : 새창으로 팝업창을 만들때 사용한다
	 --%>
	 
</body>
</html>