<?php

include "main.php";

session_start();
$user = $_SESSION["username"];
$user = mysqli_real_escape_string($conn,$user);
$results = $conn->query("call findFriends('$user')");
$friends = $results->fetch_all(MYSQLI_ASSOC);
echo $_SESSION["username"];
$template = $twig->load('logging.twig.html');
echo $template->render(array("title"=>"Flare", "friends"=>$friends));

?>
