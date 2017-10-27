<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>scope2</title>
	</head>
	<body>
	  <form action="/WebClass/scope" method="post">
	    <input type="text" name="id">
	    <input type="hidden" name="pwd" value="test">
	    <button type="submit">전송</button>
	  </form>
	  
	  <h1><%=request.getParameter("id") %></h1>
	  <h1><%=request.getParameter("pwd") %></h1>
	  <br>
	  <h1><%=request.getAttribute("key") %></h1>
	  <br>
	  <h1><%=session.getAttribute("key") %></h1>
	  <br>
	  <h1><%=application.getAttribute("key") %></h1>
	  
	  <form action="/WebClass/JSP/scope2.jsp" method="post">
	    <button type="submit">전송</button>
	  </form>
	</body>
</html>