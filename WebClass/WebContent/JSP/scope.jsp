<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	  <form action="/WebClass/scope" method="post">
	    <input type="text" name="id">
	    <input type="hidden" name="pwd" value="test">
	    <button type="submit">전송</button>
	  </form>
	  
	  <h1>${param.id}</h1>
	  <h1>${param.pwd}</h1>
	  <br>
	  <h1>${requestScope.key}</h1>
	  <br>
	  <h1>${sessionScope.key}</h1>
	  <br>
	  <h1>${applicationScope.key }</h1>
	  <p>${user.name}</p>
	  <form action="/WebClass/JSP/scope2.jsp" method="post">
	    <button type="submit">전송</button>
	  </form>
	  
	  <script>
	  <%
	    String error = (String)request.getAttribute("error");
	    if(error != null)
	    {
	  %>
	  	alert('<%=error%>')
	  <%
	    }
	  %>
	  </script>
	</body>
</html>