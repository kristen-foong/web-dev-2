
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
//helper function
function wrap($tag,$value) { //expect strings for both parameters
    return "<$tag>$value</$tag>";
}

// for some reason servername and username dont work on langara computers?
$servername = "localhost:4001";
$username = "root";
$password = "";
$db = "pokedex";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
$pokemon = mysqli_real_escape_string($conn,$_GET["pokemon"]); //prevent sql injection

// Check connection
if ($conn->connect_error) {
    die("He's dead, Jim! " . $conn->connect_error);
}

$result = $conn->query("call pokemon_card('$pokemon')");
clearConnection($conn);

  $pokename = $_GET["pokemon"];
  if($result) {
    $table = $result->fetch_all(MYSQLI_ASSOC);
    $template = $twig->load('page2.twig.html');
    clearConnection($conn);

    $vulresult = $conn->query("call vulnerability('$pokename')");
    $vultable = $vulresult->fetch_all(MYSQLI_ASSOC);
    clearConnection($conn);

    $wresult = $conn->query("call weakness('$pokename')");
    $wtable = $wresult->fetch_all(MYSQLI_ASSOC);
    clearConnection($conn);

    $strresult = $conn->query("call strengths('$pokename')");
    $strtable = $strresult->fetch_all(MYSQLI_ASSOC);
    clearConnection($conn);

    $resresult = $conn->query("call resistants('$pokename')");
    $restable = $resresult->fetch_all(MYSQLI_ASSOC);
    clearConnection($conn);

    $mresult = $conn->query("call megas('$pokename')");
    $mtable = $mresult->fetch_all(MYSQLI_ASSOC);
    clearConnection($conn);

    echo $template->render(array("pokemon"=>$table, "vulnerable"=>$vultable, "weakness"=>$wtable, "strengths"=>$strtable, "resistants"=>$restable, "megas"=>$mresult));
    clearConnection($conn);

  }
  else {
    echo "He's dead, Jim! ";
    echo $conn->connect_error;
  }
?>
