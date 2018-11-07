<?php

include 'main.php';

$template = $twig->load('install.twig.html');
echo $template->render(array("title"=>"Flare"));
$conn->close();


?>
