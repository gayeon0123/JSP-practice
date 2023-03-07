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
		int age = 0;
	
		String strAge = request.getParameter("age");
		
		age = Integer.parseInt(strAge);
		
		if(age >= 20){
			response.sendRedirect("OK.jsp");
			
		}else{
			response.sendRedirect("NG.jsp");
		}
		
		// 서버는 클라이언트의 요청에 대해 특정 URL로 이동을 요청할 수 있다
		// 이를 리다이렉트 라고한다. 데이터 없이 단순 이동일때 주로 사용한다
		
	%>
	
</body>
</html>