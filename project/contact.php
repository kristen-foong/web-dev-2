<?php

include 'main.php';

$template = $twig->load('contact.twig.html');
echo $template->render(array("title"=>"Flare"));
$conn->close();


?>
