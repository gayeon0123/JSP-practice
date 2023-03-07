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
		선언문(declaration)
		
		<%! %> : jsp 페이지 내에서 사용되는 전역변수 또는 메소드를 선언할 떄 사용
				 여기서 선언된 변수는 전역의 의미로 사용된다
	 --%>
	 
	 <%!
	 	String name = "홍길동";
	 	int age = 20;
	 %>
	 
	 <%!
	 	public int add(int x, int y){
		 return x + y;
	 	}
	 %>
	 
	 <%
	 	out.print("<p>이름 : " + name + "</p>");
	 	out.print("<p>나이 : " + age + "</p>");
	 	
	 	int result = add(10, 20);
	 	out.print("<p>10 + 20 : " + result + "<p>");
	 %>
	 
</body>
</html>