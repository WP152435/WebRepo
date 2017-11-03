<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <c:set var="price" value="1000000"></c:set>
	  <fmt:formatNumber value="${price}" type="number"></fmt:formatNumber><br>
	  <fmt:formatNumber value="${price}" type="percent"></fmt:formatNumber><br>
	  <fmt:formatNumber value="${price}" type="currency"></fmt:formatNumber><br>
	  
	  <c:set var="date" value="<%= new java.util.Date() %>"></c:set>
	  <fmt:formatDate value="${date}" type="date" dateStyle="short"/><br> <!-- full, medium, short -->
	  <fmt:formatDate value="${date}" type="time" timeStyle="short"/><br> 
	  <fmt:formatDate value="${date}" type="both" pattern="yyyy/MM/dd hh:mm:ss"/><br> 
	</body>
</html>