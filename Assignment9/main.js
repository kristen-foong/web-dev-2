let currUser;

function createChatBubble(row){
  let msg = "<div class='chat' user='" + row.username + "' idx='" + row.idx + "'><span><b>" +
            row.username + "</b>&nbsp;" + row.time + "</span><p>" + row.message + "</p></div>";
  console.log(msg);
  return msg;
}

let messageIdx = [];

$(document).ready(function(){
  $.ajax({
    url:"initial.php",
    method: "GET",
    success: function(msg){
      let output = "";
      console.log(msg);
      let data = JSON.parse(msg);
      console.table(data);
      for(let i = 0; i < data.length; i++){
        output += createChatBubble(data[i]);
      }
      $("#messages").html(output);
    }
  });
});

$("#enter").click(function(event){
  let usern = $('#user').val();
  let mess = $('#text').val();
  //stuff
  $.ajax({
    url:"getmessages.php",
    method: "POST",
    data: {
      username: usern,
      message: mess
    },
    success: function(msg){
      let output = "";
      console.log(msg);
      let data = JSON.parse(msg);
      console.table(data);
      for(let i = 0; i < data.length; i++){
        output += createChatBubble(data[i]);
      }
      $("#messages").html(output);
    }
  });
});
