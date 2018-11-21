<?php

include 'main.php';

$template = $twig->load('login.twig.html');
echo $template->render(array("title"=>"Flare"));
$conn->close();

?>
