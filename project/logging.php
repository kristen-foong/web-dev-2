<?php

include 'main.php';

if(!empty($_POST)){
  $user = $_POST["username"];
  $pass = $_POST["password"];
}

// find login username
$result = $conn->query("call login()");
$table = $result->fetch_all(MYSQLI_ASSOC);
$conn->close();
$conn = new mysqli($servername, $username, $password, $db);

// check password
$true = false;

// check if username and password match login
foreach($table as $row){
  if($row["username"] == $user && $row["password"] == $pass){
    $true = true;
  }
}

// login successful
function logSuccess($twig, $conn, $user){
  $user = mysqli_real_escape_string($conn,$user);
  $results = $conn->query("call findFriends('$user')");
  $friends = $results->fetch_all(MYSQLI_ASSOC);
  session_start();
  $_SESSION["username"] = $user;
  $template = $twig->load('logging.twig.html');
  echo $template->render(array("title"=>"Flare", "friends"=>$friends));
}

// login fail- user or password incorrect
function logFail($twig) {
  $template = $twig->load('login.twig.html');
  echo $template->render(array("title"=>"Flare", "error"=>"Incorrect login, please try again."));
}

// check if password & username match, run appropriate code
if($true == true){
  logSuccess($twig, $conn, $user);
}else{
  logFail($twig);
}

$conn->close();

?>
