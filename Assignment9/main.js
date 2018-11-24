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
      let data = JSON.parse(msg);
      console.table(data);
      for(let i = 0; i < data.length; i++){
        output += createChatBubble(data[i]);
      }
      $("#messages").html(output);
    }
  });
});

$("#submit").click(function(event){
  //stuff
  $.ajax({
    url:"initial.php",
    method: "POST",
    success: function(){

    }
  });
});
