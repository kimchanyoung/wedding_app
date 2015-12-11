$(document).ready(function(){
  $('#login-form').submit(function(e){
    // e.preventDefault();
    // debugger;
    var type = this.method;
    var url = this.action;
    var data = $(this).serialize();
    // $.ajax({
    //   type: 'post',
    //   url: url,
    //   data: data
    // })
  })
});

