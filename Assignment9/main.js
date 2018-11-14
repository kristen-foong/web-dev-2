$('#submit').click(function(event){
  let user = $('#user');
  let msg = $('#text');
  let date = new Date();
  $.ajax({
    url:"getmessages.php",
    method: "POST",
    data: {
      username: user,
      time: date,
      message: msg
    },
    success: function(){

    }
  });
});
