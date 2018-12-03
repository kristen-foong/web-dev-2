<?php

include 'main.php';

session_start();
$newName = $_POST["newUsername"];
$user = $_SESSION["username"];
$newName = mysqli_real_escape_string($conn,$newName);
$user = mysqli_real_escape_string($conn,$user);

$result = $conn->query("call editUserForFriends('$user','$newName')");
$result = $conn->query("call editUserForLogin('$user','$newName')");
$result = $conn->query("call editUserForMessages('$user','$newName')");

$template = $twig->load('editUser.twig.html');
echo $template->render(array("title"=>"Flare", "user"=>$newName, "success"=>"Username has been changed successfully."));

 ?>
