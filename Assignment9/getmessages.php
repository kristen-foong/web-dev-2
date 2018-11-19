<?php

include "initial.php";

if(array_key_exists("idx", $_POST)){
  foreach($messageArr as $message){
    if(intVal($_POST["idx"]) == $message["idx"]){
      $tempArr = array(
        "username" => $message["username"],
        "time" => $message["time"],
        "message" => $message["message"]
      );
      die();
    }
  }
}

echo json_encode(array(
  "idx" => 0,
  "username" => "",
  "time" => "",
  "message" => "No messages"
));

?>
