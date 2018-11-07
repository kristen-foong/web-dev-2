<?php

include 'main.php';

$result = $conn->query("call login()");
$table = $result->fetch_all(MYSQLI_ASSOC);

$template = $twig->load('login.twig.html');
echo $template->render(array("title"=>"Flare"));
$conn->close();


?>
