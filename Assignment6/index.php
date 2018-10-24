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
$db = "pokedex";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("He's dead, Jim! " . $conn->connect_error);
}

// generate page
if(!isset($_GET['type'])){
  $result = $conn->query("call pokedex()");
  $table = $result->fetch_all(MYSQLI_ASSOC);
  $template = $twig->load('page1.twig.html');
  echo $template->render(array("title"=>"pokedex","pokedex"=>$table));
  $conn->close();
}
else {
  $typename = $_GET['type'];
  $result = $conn->query("call sort_type('$typename')");
  $table = $result->fetch_all(MYSQLI_ASSOC);
  $template = $twig->load('page1.twig.html');
  echo $template->render(array("title"=>"pokedex","pokemon"=>$table));
  $conn->close();
}

?>
