
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
  let friend = event.target.id;
  $(friend).removeClass("selected");
  $(friend).addClass("selected");
  $.ajax({
    url:"getMessages.php",
    method: "POST",
    data: {
      friendname: friend
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
