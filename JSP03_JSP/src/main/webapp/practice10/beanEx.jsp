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
		1. useBean 액션태그로 Member 빈 클래스로부터 빈객체 생성하기
		2. setProperty 액션태그로 Member 빈 객체에 데이터 넣기
		3. getProperty 액션태그로 Member 빈 객체에 데이터 얻어와 웹브라우저에 출력하기
	 --%>
	 
	 <jsp:useBean id="member" class="com.java.jsp.Member" scope="page" />
	 
	 <jsp:setProperty name="member" property="id" value="hong" />
	 <jsp:setProperty name="member" property="pw" value="1234" />
	 <jsp:setProperty name="member" property="name" value="홍길동" />
	 <jsp:setProperty name="member" property="tel" value="010-1111-2222" />
	 
	 아이디 : <jsp:getProperty name="member" property="id" /><br>
	 비밀번호 : <jsp:getProperty name="member" property="pw" /><br>
	 이름 : <jsp:getProperty name="member" property="name" /><br>
	 전화번호 : <jsp:getProperty name="member" property="tel" /><br>
	 
</body>
</html>