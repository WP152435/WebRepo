<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">집가고싶어</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  	<span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="/WebClass/session">메뉴1 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="/WebClass/list">메뉴2</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="check.html">메뉴3</a>
      </li>
    </ul>
    <%
      UserVO user = (UserVO)session.getAttribute("user");
      if(user == null)
      {
    %>
        <%-- 세션이 없는 경우 --%>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/login">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
   	 	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/signup">Sign up</a>
    <%
      }
      else
      {
   	%>
        <%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	      <li class="nav-item dropdown">
	        <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	  ${sessionScope.user.nickname}님
	        </a>
	        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	          <form action="/WebClass/logout" method="post">
	      	    <button type="submit" class="dropdown-item">Sign out</button>
	      	  </form>
	       	  <div class="dropdown-divider"></div>
	          <button type="button" class="dropdown-item">Action1</button>
	          <button type="button" class="dropdown-item">Action2</button>
	        </div>
	      </li>
	    </ul>
	<%
      }
	%>
  </div>
</nav>