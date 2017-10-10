<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
<!-- <script>
  $(document).ready(function() {
    $('#login-form').submit(function(event) {
      // sumit 방지
      event.preventDefault();
      var id = $('#id').val();
      var pwd = $('#pass').val();
      console.log(id, pwd);

      //post방식 전송
      $.post("/WebClass/login",
        { 'id': id, 'pwd': pwd },
        function(data) {
            	
          //alert(data.id + "님 로그인하셨습니다.")
          //alert(data.form.pwd)
          var my_modal = $('#my-modal');
          my_modal.modal();
          my_modal.find('.modal-body').text(data.id + "님 로그인하셨습니다.");
        }
      );
    });
  });
</script>-->