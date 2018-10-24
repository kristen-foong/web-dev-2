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
$servername = "localhost:4001";
$username = "root";
$password = "";
$db = "pokedex";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("He's dead, Jim! " . $conn->connect_error);
}

$result = $conn->query("call pokedex()");
$table = $result->fetch_all(MYSQLI_ASSOC);

if($result){
//start session
session_start();
if(!isset($_SESSION["fav"])){
    $_SESSION["fav"] = [];
}
// generate page
if(isset($_GET["fav"]) && isset($_SESSION["fav"])){
  if(sizeof($_SESSION["fav"]) <= 6) {
    $newfav = $_GET["fav"];
    array_push($_SESSION["fav"],$newfav);
  }
}
if(isset($_GET["unfav"]) && isset($_SESSION["fav"])){
  $_SESSION["fav"] = array_diff($_SESSION["fav"],array($_GET["unfav"]));
}

$favarr = [];

foreach($_SESSION["fav"] as $favorite) {
  foreach($table as $row) {
    if($favorite == $row["name"]){
      array_push($favarr,$row);
    }
  }
}

$template = $twig->load('page1.twig.html');
echo $template->render(array("title"=>"pokedex", "pokedex"=>$table, "fav"=>$favarr));
$conn->close();
}


?>
