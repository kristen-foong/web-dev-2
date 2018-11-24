<?php

// link files
require_once './vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('./templates');

$twig = new Twig_Environment($loader);

include 'head.php';

$template = $twig->load('index.twig.html');

echo $template->render();
$conn->close();

?>
