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
		<p>id: ${sessionScope.user.id}</p>
		<p>name: ${sessionScope.user.name }</p>
		<p>nickname: ${sessionScope.user.nickname}</p>
	</body>
</html>