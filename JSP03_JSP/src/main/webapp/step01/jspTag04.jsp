<%@page import="java.util.Arrays"%>
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
		지시자
		<%@ %> : jsp 페이지의 전체적인 속성을 지정할때 사용한다
		page, include, taglib 가 있다
		page : 해당 페이지의 속성지정
		include : 별도의 페이지를 현재 페이지에 삽입
		taglib : 태그라이브러리의 태그사용 (jstl을 사용하기 위해 지정)
	 --%>
	 
	 <%
	 	int[] array = {10, 20, 30, 40, 50};
	 
	 	for(int i = 0; i < array.length; i++){
	 		out.print(array[i] + "&nbsp;");
	 	}
	 	
	 	out.print("<hr>");
	 	
	 	out.print(Arrays.toString(array));
	 	
	 %>
	 
</body>
</html>