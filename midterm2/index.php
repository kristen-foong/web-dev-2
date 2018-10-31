<?php

include 'data.php';

// link files
require_once './vendor/autoload.php';
$loader = new Twig_Loader_Filesystem('./templates');

$twig = new Twig_Environment($loader);

$title = "Langara Climate Change Site";
$subtitle =  "Weather Forecasts for 2018";

$reset = 'reset';
$fav = 'fav';
$links = array($reset, $fav);

setup();

$forecast = getForecast();
//$specForecast = getSpecificForecast($forecast);
//$month = getSpecificMonth($month);

if(!isset($_SESSION["fav"])){
    $_SESSION["fav"] = [];
}
if(isset($_GET["fav"]) && isset($_SESSION["fav"])){
  $newfav = $_GET["fav"];
  array_push($_SESSION["fav"],$newfav);
}
if(isset($_GET["unfav"]) && isset($_SESSION["fav"])){
  $_SESSION["fav"] = array_diff($_SESSION["fav"],array($_GET["unfav"]));
}

$favarr = [];

//$day = getDay($_GET["year"],$_GET["month"],$_GET["fav"]);

foreach($_SESSION["fav"] as $favorite) {
  foreach($forecast as $row) {
    if($favorite == $row["Day"] && $favorite == $row["Year"] && $favorite == $row["Month"]){
      array_push($favarr,$row);
    }
  }
}

$template = $twig->load('index.twig.html');
echo $template->render(array("title"=>$title, "subtitle"=>$subtitle, "links"=>$links, 'fav'=>$favarr, 'forecast'=>$forecast));

?>
