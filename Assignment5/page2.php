<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet/less" type="text/css" media="screen" href="styles.less" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/3.0.2/less.min.js" ></script>
    <title>Pokedex</title>
</head>
<?php

//You need this after running a SQL query that
//calls a stored procedure. For some reason,
//procedure calls return multiple results, so the
//extra result needs to be cleared.
//
//Example:
// $result = $conn->query("call getWeak('Ivysaur')");
// clearConnection($conn);

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
$servername = "localhost:3306";
$username = "CPSC2030";
$password = "CPSC2030";
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


?>

<body>

<div class="goback">
  <a href="javascript:history.back()">Go Back</a>
</div>

<div id="selected">

  <?php
  $pokename = $_GET["pokemon"];
  if($result) {
    $table = $result->fetch_all(MYSQLI_ASSOC);
    foreach($table as $row){
      echo "<h1>#";
      echo $row["natid"];
      echo ":&nbsp";
      echo $pokename;
      echo "</h1><div class='stats ";
      echo $row["type"];
      echo "'><span>";
      echo $row["type"];
      echo "</span><span class='hp' title='hp'>";
      echo $row["hp"];
      echo "</span><span class='atk' title='atk'>";
      echo $row["atk"];
      echo "</span><span class='def' title='def'>";
      echo $row["def"];
      echo "</span><span class='satk' title='satk'>";
      echo $row["satk"];
      echo "</span><span class='sdef' title='sdef'>";
      echo $row["sdef"];
      echo "</span><span class='spd' title='spd'>";
      echo $row["spd"];
      echo "</span><span class='bst' title='bst'>";
      echo $row["bst"];
      echo "</span>";
      echo "</div>";
    }
    echo "<div class='strengths'>";
    $result = $conn->query("call vulnerability('$pokename')");
    clearConnection($conn);
    if($result) {
      $table = $result->fetch_all(MYSQLI_ASSOC);
      echo "<div class='box'>";
      echo "<b>Vulnerable To:</b><p>";
      foreach($table as $row){
        echo $row["Vulnerable To"];
        echo "<br>";
      }
      echo "</div>";
    }
    $result = $conn->query("call weakness('$pokename')");
    clearConnection($conn);
    if($result) {
      $table = $result->fetch_all(MYSQLI_ASSOC);
      echo "<div class='box'>";
      echo "<b>Weak Against:</b><p>";
      foreach($table as $row){
        echo $row["Weak Against"];
        echo "<br>";
      }
      echo "</div>";
    }
    $result = $conn->query("call strengths('$pokename')");
    clearConnection($conn);
    if($result) {
      $table = $result->fetch_all(MYSQLI_ASSOC);
      echo "<div class='box'>";
      echo "<b>Strong Against:</b><p>";
      foreach($table as $row){
        echo $row["Strong Against"];
        echo "<br>";
      }
      echo "</div>";
    }
    $result = $conn->query("call resistants('$pokename')");
    clearConnection($conn);
    if($result) {
      $table = $result->fetch_all(MYSQLI_ASSOC);
      echo "<div class='box'>";
      echo "<b>Resistant To:</b><p>";
      foreach($table as $row){
        echo $row["Resistant To"];
        echo "<br>";
      }
      echo "</div>";
    }
    echo "</div>";
    $result = $conn->query("call megas('$pokename')");
    clearConnection($conn);
    if(!empty($result) && $result!='') {
      $table = $result->fetch_all(MYSQLI_ASSOC);
      foreach($table as $row){
      echo "<div class='mega ";
      echo $row["type"];
      echo "'><span class='megatype'>";
      echo $row["name"];
      echo "</span><span>";
      echo $row["type"];
      echo "</span></div>";
      }
    }
  }
  else {
    echo "He's dead, Jim! ";
    echo $conn->connect_error;
  }
?>

</div>

</body>
</html>
