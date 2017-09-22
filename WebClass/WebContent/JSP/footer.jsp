<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<footer class="footer">
  <div class="container">
  	<%
  		Calendar c = Calendar.getInstance();
  	%>
    <span class="text-muted">&copy; <%=c.get(Calendar.YEAR) %> GreenBlue</span>
  </div>
</footer>