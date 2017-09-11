$(document).ready(function() {
  $('#login-form').submit(function(event) {
    // sumit 방지
    event.preventDefault()
    var id = $('#id').val()
    var pwd = $('#pass').val()
    console.log(id, pwd)

    //post방식 전송
    $.post("http://httpbin.org/post",
      { 'id': id, 'pwd': pwd },
      function(data) {
        //alert(data.form.id + "님 로그인하셨습니다.")
        //alert(data.form.pwd)
        var my_modal = $('#my-modal')
        my_modal.modal()
        my_modal.find('.modal-title').text('로그인 결과')
        my_modal.find('.modal-body').text(data.form.id + "님 로그인되었습니다.")
      }
    )
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
