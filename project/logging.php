<?php

include 'main.php';

if(!empty($_POST)){
  $user = $_POST["username"];
  $pass = $_POST["password"];
}

$result = $conn->query("call login()");
$table = $result->fetch_all(MYSQLI_ASSOC);

$true = false;

foreach($table as $row){
  if($row["username"] == $user && $row["password"] == $pass){
    $true = true;
  }
}

function logSuccess($twig, $conn, $user){
  print_r($user);
  $user = mysqli_real_escape_string($conn,$user);
  $results = $conn->query("call findFriends('$user')");
  print_r($results);
  $friends = $results->fetch_all(MYSQLI_ASSOC);
  $template = $twig->load('logging.twig.html');
  echo $template->render(array("title"=>"Flare", "friends"=>$friends));
}

function logFail($twig) {
  $template = $twig->load('login.twig.html');
  echo $template->render(array("title"=>"Flare", "error"=>"Incorrect login, please try again."));
}

if($true == true){
  logSuccess($twig, $conn, $user);
}else{
  logFail($twig);
}

$conn->close();

?>
