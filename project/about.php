<?php

include 'main.php';

$template = $twig->load('about.twig.html');
echo $template->render(array("title"=>"Flare"));
$conn->close();


?>
