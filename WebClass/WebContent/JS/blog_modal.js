$(document).ready(function() {
  $('#login-form').submit(function(event) {
    // sumit 방지
    event.preventDefault()
    var id = $('#id').val()
    var pwd = $('#pass').val()
    console.log(id, pwd)

    //post방식 전송
    $.post("/WebClass/bloglogin",
      { 'id': id, 'pwd': pwd },
      function(data) {
        console.log(data.msg)
        if(data.msg == 'success') {
        	location.href = location.href
        }
        else if(data.msg == 'fail') {
        	var my_modal = $('#my-modal')
        	my_modal.find('.modal-title').text('로그인 실패')
        	my_modal.find('.modal-body').text('ID가 올바르지 않습니다.')
            my_modal.modal()
            $('#pass').val('')
        }
      }
    )
  })
  $('#logout').submit(function() {
	  event.preventDefault()
	  $.post("/WebClass/bloglogout", {}, function(data){ location.href = location.href })
  })
  $('#sign-up').click(function() {
    $('#sign-up-modal').modal()
  })
  $('#sign-up-form').submit(function(event) {
    event.preventDefault()

    var name = $('#name').val()
    var grade = '0'
    if($('#1st').is(':checked')) {
      grade = $('#1st').val()
    }
    else if($('#2nd').is(':checked')) {
      grade = $('#2nd').val()
    }
    else {
      grade = $('#3rd').val()
    }
    var v_class = $('#class').val()
    var number = $('#number').val()
    
    $.post("http://httpbin.org/post",
      {'name' : name, 'grade' : grade, 'class' : v_class, 'number' : number},
    function(data) {
      $('#sign-up-modal').modal('hide')
      var my_modal = $('#my-modal')
      my_modal.modal()
      my_modal.find('.modal-title').text('회원가입 결과')

      my_modal.find('.modal-body').text(data.form.name + '님 회원가입되었습니다.')
    })
  })
})
