let currUser;

function createChatBubble(row){
  let msg = "";
  msg = "<div class='chat' user='" + row.username + "' idx='" + row.idx + "'><span><b>" + row.username + "</b>&nbsp;" + row.time + "</span><p>" + row.message + "</p></div>";
  console.log(msg);
  return msg;
}

let messageIdx = [];

$(document).ready(function(){
  $.ajax({
    url:"getmessages.php",
    method: "POST",
    data: {
      idx: currIndex;
    },
    success: function(msg){
      let data = JSON.parse(msg);
      output += createChatBubble(msg);
      $("#messages").html(output);
    }
  });
});
