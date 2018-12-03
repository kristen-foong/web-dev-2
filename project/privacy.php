<?php

include "main.php";

session_start();
$user = $_SESSION["username"];

$template = $twig->load('privacy.twig.html');
echo $template->render(array("title"=>"Flare"));

?>
