<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<footer class="footer">
  <div class="container">
    <span class="text-muted">&copy; <fmt:formatDate value="<%= new java.util.Date() %>" pattern="yyyy"/>  GreenBlue</span>
  </div>
</footer>