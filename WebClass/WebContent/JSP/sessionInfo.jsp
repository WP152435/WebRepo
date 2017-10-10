<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			UserVO userInfo = (UserVO)session.getAttribute("user");
		%>
		<p>id: <%= userInfo.getId() %></p>
		<p>name: <%= userInfo.getName() %></p>
		<p>nickname: <%= userInfo.getNickname() %></p>
	</body>
</html>