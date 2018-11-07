<?php

// link files
require_once './vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('./templates');

$twig = new Twig_Environment($loader);

function clearConnection($mysql){
    while($mysql->more_results()){
       $mysql->next_result();
       $mysql->use_result();
    }
}

// for some reason servername and username dont work on langara computers?
$servername = "localhost:3306";
$username = "root";
$password = "";
$db = "flare";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("He's dead, Jim! " . $conn->connect_error);
}

$result = $conn->query("call login()");
$table = $result->fetch_all(MYSQLI_ASSOC);

$template = $twig->load('login.twig.html');
echo $template->render(array("title"=>"flare"));
$conn->close();


?>
