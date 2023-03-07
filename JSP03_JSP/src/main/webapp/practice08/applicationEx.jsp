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
		어플리케이션 객체를 사용하여 웹브라우저(applicationEx.jsp)에 방문시
		방문자수를 하나씩 올려서 전체 방문자수 출력하기
	 --%>
	 
	<%
		int count = 0;
		
		if(application.getAttribute("visit") != null){
			
			count = (Integer)application.getAttribute("visit");
			
			count++;
		}
		
		application.setAttribute("visit", count);
	%>
	
	<h2>전체 방문자수 : <%=count %>명 입니다.</h2>
	
	<script>
	
		var i = <%=count %>
		
		if(i == 10){
			alert('10번째 방문에 당첨 되었습니다!!');
		}
		
	</script>

</body>
</html>