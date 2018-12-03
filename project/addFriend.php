<?php

include 'main.php';

session_start();
$friend = $_POST["friend"];
$user = $_SESSION["username"];
$friend = mysqli_real_escape_string($conn,$friend);
$user = mysqli_real_escape_string($conn,$user);

// bring up login table for complete user list
$result = $conn->query("call login()");
$table = $result->fetch_all(MYSQLI_ASSOC);
$conn->close();
$conn = new mysqli($servername, $username, $password, $db);

$userExists = false;

// see if user exists
foreach($table as $row){
  if($row["username"] == $friend && $friend != $user){
    $userExists = true;
  }
}

// bring up friend table  to check existing friends
$result = $conn->query("call findFriends('$user')");
$table = $result->fetch_all(MYSQLI_ASSOC);
$conn->close();
$conn = new mysqli($servername, $username, $password, $db);

$alreadyFriend = false;

// see if user exists
foreach($table as $row){
  if($row["friendname"] == $friend && $friend != $user){
    $alreadyFriend = true;
  }
}

//add user as a friend if found, else say error
if($userExists == true && $alreadyFriend != true){
  $addFriend = $conn->query("call addFriend('$user','$friend')");
  $conn->close();
  $conn = new mysqli($servername, $username, $password, $db);
  $results = $conn->query("call findFriends('$user')");
  $friends = $results->fetch_all(MYSQLI_ASSOC);
  echo $_SESSION["username"];
  $template = $twig->load('logging.twig.html');
  echo $template->render(array("title"=>"Flare", "friends"=>$friends));
}else{
  $template = $twig->load('friends.twig.html');
  echo $template->render(array("title"=>"Flare", "error"=>"User not found."));
}

?>
