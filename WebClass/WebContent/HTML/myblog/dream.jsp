<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>집</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <link rel="stylesheet" href="../../CSS/blog.css" type="text/css">
    <link rel="stylesheet" href="../../CSS/dream.css" type="text/css">
    <script src="../../JS/blog_menu.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  </head>
  <body>
	<%@ include file="menubar.jsp" %>

    <div class="container">
      <h1>내가 좋아할 수 있는 게임을 만들며 사는 것</h1>
      <h5>이게 제 꿈이에요</h5>
    </div>

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
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <script src="../../JS/blog_modal.js"></script>
  </body>
</html>