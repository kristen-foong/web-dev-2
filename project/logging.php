<?php

include 'main.php';

if(!empty($_POST)){
  $user = $_POST["username"];
  $pass = $_POST["password"];
}

$template = $twig->load('login.twig.html');
echo $template->render(array("title"=>"Flare"));
$conn->close();

?>
