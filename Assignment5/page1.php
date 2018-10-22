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

// for some reason servername and username dont work on langara computers?
$servername = "localhost:3306";
$username = "CPSC2030";
$password = "CPSC2030";
$db = "pokedex";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("He's dead, Jim! " . $conn->connect_error);
}


?>

<body>

<div class="goback">
  <a href="javascript:history.back()">Go Back</a>
</div>

<div id="wrapper">

    <?php
      if(!isset($_GET['type'])){
        $result = $conn->query("call pokedex()");
        clearConnection($conn);
        $table = $result->fetch_all(MYSQLI_ASSOC);
        foreach($table as $row){
          $link = "page2.php?pokemon=".urlencode($row["name"]);
          echo "<div class='card'><div class='num'>#";
          echo $row["natid"];
          echo "<a href='$link'>";
          echo $row["name"];
          echo "</a></div><div class='type'><div class='";
          echo $row["type"];
          echo "'>";
          $type = "page1.php?type=".urlencode($row["type"]);
          echo "<a href='$type'>";
          echo $row["type"];
          echo "</a></div>";
          echo "</div></div>";
        }
      }
      else {
        $typename = $_GET['type'];
        $result = $conn->query("call sort_type('$typename')");
        clearConnection($conn);
        $table = $result->fetch_all(MYSQLI_ASSOC);
        foreach($table as $row){
          $link = "page2.php?pokemon=".urlencode($row["name"]);
          echo "<div class='card'><div class='num'>#";
          echo $row["natid"];
          echo "<a href='$link'>";
          echo $row["name"];
          echo "</a></div><div class='type'>";
          echo "</a></div><div class='type'><div class='";
          echo $row["type"];
          echo "'>";
          $type = "page1.php?type=".urlencode($row["type"]);
          echo "<a href='$type'>";
          echo $row["type"];
          echo "</a></div>";
          echo "</div></div>";
        }
      }
    ?>

</div>

</body>
</html>
