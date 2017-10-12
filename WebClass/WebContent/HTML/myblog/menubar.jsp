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
        <a class="nav-link" href="introduce.jsp">소개 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="dream.jsp">꿈</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="hobby.jsp">취향</a>
      </li>
    </ul>
    <% 
    UserVO user = (UserVO)session.getAttribute("user");
    if(user == null) 
    {
    %>
    <form class="form-inline my-2 my-lg-0" id="login-form" action="/WebClass/bloglogin" method="post">
      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" name="id" required>
      <input class="form-control mr-sm-2" type="password" placeholder="password" aria-label="password" id="pass" name="pwd" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
    <button class="btn btn-outline-primary my-2 my-sm-0" id="sign-up">Sign up</button>
    <%
    }
    else
    {
    %>
    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	  <li class="nav-item dropdown">
	    <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	      <%=user.getNickname() %>님
	    </a>
	    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form id="logout" action="/WebClass/bloglogout" method="post">
	  	    <button type="submit" class="dropdown-item">Sign out</button>
	  	  </form>
	    </div>
	  </li>
	</ul>
    <%
    }
    %>
  </div>
</nav>

<div class="modal" id="my-modal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal" id="sign-up-modal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">회원가입</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="sign-up-form">
        <div class="modal-body">
          <div class="form-check">
            <label class="form-control-label">학년</label> <br>
            <input id="1st" type="radio" name="grade" value="1" required>1학년
            <input id="2nd" type="radio" name="grade" value="2" checked>2학년
            <input id="3rd" type="radio" name="grade" value="3">3학년
          </div>
          <div class="form-group">
            <label class="form-control-label">반</label>
            <select class="form-control mr-sm-2" name="class" id="class" required>
              <option value=''>--선택--</option>
              <option value="1">1반</option>
              <option value="2">2반</option>
              <option value="3">3반</option>
              <option value="4">4반</option>
              <option value="5">5반</option>
              <option value="6">6반</option>
            </select>
          </div>
          <div class="form-group">
            <label class="form-control-label">번호</label>
            <input class="form-control mr-sm-2" id="number" type="text" placeholder="00" required>
          </div>
          <div class="form-group">
            <label class="form-control-label">이름</label>
            <input class="form-control mr-sm-2" id="name" type="text" placeholder="홍길동" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">가입</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </form>
    </div>
  </div>
</div>
<script src="../../JS/blog_modal.js"></script>