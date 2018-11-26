<?php

include 'main.php';

// set username & password variables
if(!empty($_POST)){
  $user = $_POST["username"];
  $pass1 = $_POST["password1"];
  $pass2 = $_POST["password2"];
}

//if passwords do not match, take them back to registration page
if($pass1 != $pass2){
  $template = $twig->load('login.twig.html');
  echo $template->render(array("title"=>"Flare", "error"=>"Passwords do not match, please try again."));
  die();
}

// state user & password and start session
session_start();
$_SESSION["username"] = $user;
$pass = $_POST["password1"];

// add member to database
$register = $conn->query("call registerMember('$user','$pass')");
$conn->close();

// get login
$conn = new mysqli($servername, $username, $password, $db);
$result = $conn->query("call login()");
$table = $result->fetch_all(MYSQLI_ASSOC);
$conn->close();

// find user friends
$conn = new mysqli($servername, $username, $password, $db);
$user = mysqli_real_escape_string($conn,$user);
$results = $conn->query("call findFriends('$user')");
$friends = $results->fetch_all(MYSQLI_ASSOC);
session_start();
$template = $twig->load('logging.twig.html');
echo $template->render(array("title"=>"Flare", "friends"=>$friends));

?>
