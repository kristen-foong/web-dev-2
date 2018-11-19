<?php

function clearConnection($mysql){
    while($mysql->more_results()){
       $mysql->next_result();
       $mysql->use_result();
    }
}

// localhost 3306 at home, 4001 at school
$servername = "localhost:4001";
$username = "root";
$password = "";
$db = "assn9";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("He's dead, Jim! " . $conn->connect_error);
}

$result = $conn->query("call getAll()");
$table = $result->fetch_all(MYSQLI_ASSOC);

$messageArr = []; //array that contains messages
foreach($table as $row){
  array_push($messageArr,$row);
}

echo json_encode($messageArr);

?>
