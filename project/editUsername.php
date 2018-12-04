<?php

include "main.php";

$template = $twig->load('editUser.twig.html');
echo $template->render(array("title"=>"Flare"));

?>
