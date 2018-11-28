<?php

include "main.php";

session_start();
$user = $_SESSION["username"];

$template = $twig->load('friends.twig.html');
echo $template->render(array("title"=>"Flare"));

?>
