
/* log in & register page */
function register(){
  document.getElementById("loginin").style.left = "-450px";
  document.getElementById("log").style.opacity = "0";
  document.getElementById("log2").style.opacity = "1";
  document.getElementById("log").style.WebkitTransition = 'all 0.5s';
  document.getElementById("log").style.MozTransition = 'all 0.5s';
  document.getElementById("log2").style.WebkitTransition = 'all 0.5s';
  document.getElementById("log2").style.MozTransition = 'all 0.5s';
}

/* switch between login panels */
function moveback() {
  document.getElementById("loginin").style.left = "0px";
  document.getElementById("log").style.opacity = "1";
  document.getElementById("log2").style.opacity = "0";
}

/* create chat bubble */
function createChatBubble(msg){
  let output = "<div class='bubbleC'><div class='chatBubble'>" + msg + "</div></div>";
  return output;
}

/* retrieve messages */
$('.friendchat').click(function(event){
  let friend = event.currentTarget;
  $('.friendchat').removeClass("selected");
  $(friend).addClass("selected");
  $.ajax({
    url:"getMessages.php",
    method: "POST",
    data: {
      friendname: friend.id
    },
    success: function(msg){
      let output = "";
      console.log(msg);
      let data = JSON.parse(msg);
      console.table(data);
      for(let i = 0; i < data.length; i++){
        output += createChatBubble(data[i].message);
      }
      $("#chatspace").html(output);
    }
  });
});

/* enter a message into chat */
$('#messageForm').submit(function(event){
  event.preventDefault();
  let msg = $('#messageBox').val();
  let friend = $('.selected').attr('id');
  console.log(friend);
  console.log($('.selected')[0]);
  $.ajax({
    url:"addMessage.php",
    method:"POST",
    data:{
      message: msg,
      friendname: friend
    },
    success: function(reply){
      let output = "";
      console.log(reply);
      let data = JSON.parse(reply);
      console.table(data);
      for(let i = 0; i < data.length; i++){
        output += createChatBubble(data[i].message);
      }
      $("#chatspace").html(output);
      let chatheight = $("#chatspace").outerHeight();
      $("#chatspace").scrollTop(chatheight);
    }
  });
});

// change username
// its a little buggy sorry it works the message just doesn't show
$("#editUser").submit(function(event){
  let newUser = $("#newUsername").val();
  $.ajax({
    url:"changeUser.php",
    method:"POST",
    data:{
      newUsername: newUser
    },
    success: function(newUser){
      $('#checkSuccess').text("Username has been changed successfully.");
    }
  })
});
