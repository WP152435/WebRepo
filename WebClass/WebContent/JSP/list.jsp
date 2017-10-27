<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<title>Insert title here</title>
  </head>
  <body>
	<c:if test="${!empty list}">
	  <table border="1">
	  	<thead>
	  	  <tr>
	  	    <th>#</th><th>id</th><th>name</th><th>nickname</th>
	  	  </tr>
	  	</thead>
	  	<tbody>
	  	  <c:forEach var="user" items="${list}" varStatus="status">
	  	    <tr>
	  	      <td>${status.count}</td><td>${user.id}</td><td>${user.name}</td><td>${user.nickname}</td>
	  	    </tr>
	  	  </c:forEach>
	  	</tbody>
	  </table>
	</c:if>
	<c:if test="${empty list}">
	  <h2>There is no data available</h2>
	</c:if>
  </body>
</html>